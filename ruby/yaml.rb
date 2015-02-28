require 'yaml'

puts YAML.load <<YAML
bkground:
  snucheat:   cd ~/snucheat && ./app.py
  hyeonme:    cd ~/hyeon.me && ruby server.rb
irc:
  weechat:    cd ~ && TERM=screen-256color weechat-curses
YAML

puts YAML.load <<YAML
language: rust
env:
  - FEATURES=' '
  - FEATURES='glium-support'
notifications:
  irc:
    nick: obj-rs
    channels:
      - irc.uriirc.org:16667#hyeon
    template:
      - "#%{build_number} %{result}, %{build_url}"
    skip_join: true
YAML
