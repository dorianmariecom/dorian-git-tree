# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-git-tree"
  s.version = "0.3.0"
  s.summary =
    "Lists your files and directories in your git repository as a tree"
  s.description = "#{s.summary}\n\ne.g. `git-tree config/`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.fr"
  s.files = ["lib/dorian/git/tree.rb"]
  s.executables << "git-tree"
  s.homepage = "https://github.com/dorianmariefr/git-tree"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
