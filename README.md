# `dorian-git-tree`

Print tracked git files as a tree.

## Install

```bash
gem install dorian-git-tree
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
git-tree [path ...]
```

Run `git-tree -h` for generated option details and `git-tree -v` for the installed version.

## Notes

- Pass paths to limit the tree to specific files or directories.

## Examples

### Show the whole repo

```bash
git-tree
```

### Show one area

```bash
git-tree app/models
```
