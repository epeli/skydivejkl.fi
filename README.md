
# http://skydivejkl.fi

This repository contains a [Pico][] theme and [Ansible][] rules for a server
setup.

## Building the theme

Theme uses Foundatation and node-sass.

Install node.js and GNU Make and run

    make

After first run you can just use `make scss` to build CSS.

## Configuring the server

Create `server_conf/config.php`. Use `server_conf/config.php.example` as an
example.

[Install Ansible][a-install] and create a `production` file

```
[server]
xx.xx.xx.xx
```

Where `xx.xx.xx.xx` is the ip address or hostname of the server.

Then just execute the `pico.yaml` playbook using the `production` file.

    ansible-playbook -k -u root -i production pico.yaml

[Ansible]: http://www.ansible.com
[Pico]: http://pico.dev7studios.com/
[a-install]: http://docs.ansible.com/intro_installation.html
