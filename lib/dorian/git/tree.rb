require "shellwords"

module Dorian
  module Git
    class Tree
      SPACE = "    "
      RIGHT = "└── "
      DOWN = "│   "
      DOWN_AND_RIGHT = "├── "

      def self.run
        if ARGV[0] == "--help" || ARGV[0] == "-h" || ARGV.size > 1
          puts "USAGE: git tree [PATH]"
          exit
        end

        key = ARGV.first || "."

        files = git_ls_files(key).map do |file|
          ARGV.first ? file.sub(ARGV.first, "") : file
        end

        values = group(files)

        key = "#{key}/" if values.any? && key != "." && key[-1] != "/"

        puts key

        values.each.with_index do |(value_key, value_values), value_index|
          print(
            key: value_key,
            values: value_values,
            index: value_index,
            size: values.size,
          )
        end
      end

      def self.git_ls_files(path)
        result = `#{["git", "ls-files", path].compact.shelljoin}`.split("\n")
        exit $?.exitstatus if $?.exitstatus > 0
        result
      end

      def self.group(files)
        files
          .group_by { |file| file.split("/").first }
          .transform_values do |values|
            group(
              values
                .map { |value| value.split("/")[1..-1].join("/") }
                .reject(&:empty?)
            )
          end
      end

      def self.print(key:, values:, index: 0, size: 1, prefix: "")
        key = "#{key}/" if values.any?
        last = index + 1 == size
        right_prefix = last ? RIGHT : DOWN_AND_RIGHT
        puts prefix + right_prefix + key
        values.each.with_index do |(value_key, value_values), value_index|
          print(
            key: value_key,
            values: value_values,
            index: value_index,
            size: values.size,
            prefix: prefix + (last ? SPACE : DOWN)
          )
        end
      end
    end
  end
end
