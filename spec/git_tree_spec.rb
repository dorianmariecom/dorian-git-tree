# frozen_string_literal: true

require "spec_helper"
require "securerandom"
require "tmpdir"
require "tempfile"

RSpec.describe "git-tree" do
  it "works" do
    tempdir = Dir.mktmpdir
    ruby_tempfile = Tempfile.create([SecureRandom.hex, ".rb"], tempdir)
    js_tempfile = Tempfile.create([SecureRandom.hex, ".js"], tempdir)
    pwd = Dir.pwd

    Dir.chdir(tempdir) do
      `git init && git add . && git commit -m "test from dorian-git-ls-ruby-files"`

      expect(`#{pwd}/bin/git-tree`).to include(File.basename(ruby_tempfile))
      expect(`#{pwd}/bin/git-tree`).to include(File.basename(js_tempfile))
    end
  ensure
    begin
      File.delete(ruby_tempfile)
    rescue StandardError
      nil
    end
    begin
      File.delete(js_tempfile)
    rescue StandardError
      nil
    end
    begin
      Dir.delete(tempdir)
    rescue StandardError
      nil
    end
  end
end
