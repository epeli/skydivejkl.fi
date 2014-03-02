
# http://skydivejkl.fi

This repository contains a [Pico][] theme and [Ansible][] rules for a server
setup.

## Building the theme

Theme uses Foundatation and node-sass.

Install node.js and GNU Make and run

    make

After first run you can just use `make scss` to build CSS.

## Configuring the server

Install [Ansible][a-install] and create a `hosts` file

Create `server_conf/config.php`. Use `server_conf/config.php.example` as an
example.

```
[server]
xx.xx.xx.xx
```

Where `xx.xx.xx.xx` is the ip address or hostane of the server.

Then just execute the `server.yml` playbook using the `hosts` file.

    ansible-playbook -i hosts server.yml

Use `--user`, `--ask-pass` and `--ask-sudo-pass` options as needed.

[Ansible]: http://www.ansible.com
[Pico]: http://pico.dev7studios.com/
[a-install]: http://docs.ansible.com/intro_installation.html
