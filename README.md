# `dorian-git-tree`

Lists your files and directories in your git repository as a tree

e.g. `git tree config/`

```
config/
└── application.rb
└── boot.rb
└── cable.yml
└── credentials.yml.enc
└── database.yml
└── environment.rb
└── environments
│  └── development.rb
│  └── production.rb
│  └── test.rb
└── importmap.rb
└── initializers
│  └── assets.rb
│  └── backtrace_silencers.rb
│  └── content_security_policy.rb
│  └── filter_parameter_logging.rb
│  └── inflections.rb
│  └── mime_types.rb
│  └── money.rb
│  └── permissions_policy.rb
│  └── wrap_parameters.rb
└── locales
│  └── en.yml
└── puma.rb
└── routes.rb
└── storage.yml
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

git tree db
```
