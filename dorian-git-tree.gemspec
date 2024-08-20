# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-git-tree"
  s.version = File.read("VERSION").strip
  s.summary = "lists files and directories in git as a tree"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/git-tree"]
  s.executables << "git-tree"
  s.homepage = "https://github.com/dorianmariecom/dorian-git-tree"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "git"
  s.add_dependency "dorian-arguments"
end
