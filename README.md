# Developer Box
All-in-one development environment

## Port mapping
|Port|Type|Protocol|
|----|----|--------|
|53  |TCP |DNS     |
|53  |UDP |DNS     |
|80  |TCP |HTTP    |

## Stack

### Vagrant
- Docker provisioner
- Hosts updater
- Virtualbox guest additions

### Docker
- Docker compose
- Devilbox (Optional)

## Windows

### Install base stack
- Download a copy of developer box
- Run `setup.bat` to install
- Copy project directory to this directory
- Check at http://localhost

### Update base stack
- Download a copy of developer box
- Run `update.bat` to update
- Copy project directory to this directory
- Check at http://localhost

## Devilbox

### Setup
- Download a copy of devilbox
- https://devilbox.readthedocs.io/en/latest/
