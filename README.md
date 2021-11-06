# vagrant-mininet

Repeatable [Mininet](http://mininet.org/) installation using HashiCorp [Vagrant](https://www.vagrantup.com).

## Installation

- Install [Vagrant](https://www.vagrantup.com/downloads)
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  - This is currently tested against VirtualBox, but it may work using different providers (e.g., VMWare Fusion)

## Usage

- Run `vagrant up`
- Run `vagrant ssh`
- Run `sudo mn --test pingall` within the VM to test that Mininet has been installed properly.

### Packet Captures using Wireshark

- Install XQuartz for macOS or Xming for Windows for X11 forwarding
- Run `sudo xauth add $(xauth list $DISPLAY)` to allow `root` to use X11 Forwarding
- Run `sudo -E wireshark &` to run Wireshark in the background.
- Once the Mininet controller is up, you will see the interfaces (e.g. `s1-eth1`) in Wireshark. 
  - You can run packet captures on any that were created by the Mininet SDN configuration.
