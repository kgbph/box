# Developer Box
Basic LAMP stack development environment

[![License](https://img.shields.io/github/license/kgbph/box.svg?style=popout)](https://github.com/kgbph/box/blob/master/LICENSE)

## Stack
- `Vagrant` - Host machine provider
- `Docker` - Containerization support
- `Devilbox` - LAMP stack management

## Folder structure
- `bin` - Box operation scripts
- `config` - Default configuration files
- `data` - User configuration files
- `devilbox` - Devilbox submodule
- `projects` - User projects
- `sbin` - Internal operation scripts
- `provisioner` - Internal provisioner scripts

## Forwarded ports
|Port|Type|Protocol|
|----|----|--------|
|53  |TCP |DNS     |
|53  |UDP |DNS     |
|80  |TCP |HTTP    |
|443 |TCP |HTTPS   |

## Available commands

### Start devilbox
``` sh
bin/box/start
```

### Stop devilbox
``` sh
bin/box/stop
```

### Restart devilbox
``` sh
bin/box/restart
```

### Reload devilbox configurations
``` sh
bin/box/reload
```

### Open devilbox PHP shell
``` sh
bin/box/shell
```

### List available project configurations
``` sh
bin/project/list
```

### Switch project configuration
``` sh
bin/project/switch <project_name>
```

## Regular operations

### Get a local copy
``` sh
git clone --recursive https://github.com/kgbph/box.git
```

### Box startup
``` sh
vagrant up
```

### Box shutdown
``` sh
vagrant halt
```

### Devilbox startup
``` sh
vagrant ssh
cd /vagrant/devilbox
docker-compose up -d httpd mysql php
```

### Devilbox shutdown
``` sh
vagrant ssh
cd /vagrant/devilbox
docker-compose stop
docker-compose rm -f
```

## Configuring auto DNS
If you don’t want to add host records manually for every project, you can also use the bundled DNS server and use it’s DNS catch-all feature to have all DNS records automatically available.

### Windows
[Add custom DNS server on Windows](https://devilbox.readthedocs.io/en/latest/howto/dns/add-custom-dns-server-on-win.html#howto-add-custom-dns-server-on-win)

### Mac
[Add custom DNS server on MacOS](https://devilbox.readthedocs.io/en/latest/howto/dns/add-custom-dns-server-on-mac.html#howto-add-custom-dns-server-on-mac)

### Linux
[Add custom DNS server on Linux](https://devilbox.readthedocs.io/en/latest/howto/dns/add-custom-dns-server-on-linux.html#howto-add-custom-dns-server-on-linux)

## Troubleshooting
Ensure that the following tasks are done

- Vagrant machine is running
- Forwarded vagrant ports are clear from conflicts
- Devilbox docker containers are running
- Auto DNS is properly configured
- http://localhost is accessible

## FAQ

**How do I add new project?**
> Put your projects inside `projects` folder.

**How do I expose the box to my local network?**
> Uncomment the public network configuration line from `Vagrantfile` then execute `vagrant reload`.

**How to I change LAMP stack version?**
> Edit `devilbox/.env` file then restart docker containers

**How do I implement HTTPS?**
> Import the Certificate Authority into your browser and you are all set.

## External resources
- https://www.vagrantup.com/docs/index.html
- https://docs.docker.com/
- https://devilbox.readthedocs.io/en/latest/index.html

## License
This project is MIT licensed, as found in the LICENSE file.
