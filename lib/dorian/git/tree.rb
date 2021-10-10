require 'shellwords'

module Dorian
  module Git
    class Tree
      def self.run
        list(ARGV.first || '.')
      end

      private

      def self.list(dir, start: true)
        puts dir if start

        `git ls-tree HEAD #{Shellwords.escape(dir)} --name-only`.split("\n")
          .sort
          .each do |line|
            split = line.split('/')
            puts format(line)
            list(line + '/', start: false) if File.directory?(line)
          end
      end

      def self.format(file)
        split = file.split('/')
        return file unless split.size > 1
        '│  ' * (split.size - 2) + '└── ' + split.last
      end
    end
  end
end
