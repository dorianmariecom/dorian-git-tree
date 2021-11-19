# `dorian-git-tree`

Lists your files and directories in your git repository as a tree

e.g. `git tree`

```
.
├── .gitignore
├── .prettierrc
├── LICENSE
├── README.md
├── bin/
│    └── git-tree
├── dorian-git-tree.gemspec
└── lib/
    └── dorian/
        └── git/
            └── tree.rb
```

### Install

```bash
gem install dorian-git-tree
```

Or as part of my other gems:

```bash
gem install dorian
```

### Usage

```bash
git tree
git tree app/views
git tree db/
git tree app/models/user.rb
```
