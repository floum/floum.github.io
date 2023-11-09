## Requirements

- Ubuntu LTS [up-to-date](/2023/11/09/keeping-ubuntu-up-to-date.html)
- Super User rights (for system requirements)
- git

## Installing Ruby

To enable multiple versions of Ruby on your system, we will use [rbenv](https://github.com/rbenv/rbenv) with its [ruby-build](https://github.com/rbenv/ruby-build) plugin

- Install rbenv using the git basic checkout method

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc
source ~/.bashrc
```

- Check you rbenv installation

```bash
rbenv root
#=> $HOME/.rbenv
```

- Install ruby-build

```bash
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

- Install system requirements

```bash
sudo apt-get install autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
```

- List the Available versions for Ruby

```bash
rbenv install -L
```

- Install a Ruby version

```bash
rbenv install 3.2.2 --verbose
```

- Use this version globally for your user

```bash
rbenv global 3.2.2
```
