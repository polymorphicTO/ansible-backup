# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.ssh.insert_key = true
  config.ssh.forward_agent = true

  # General VirtualBox VM configuration.
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--cpus", 1]
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.define "utility" do |utility|
    utility.vm.hostname = "utility"
    utility.vm.network :private_network, ip: "192.168.112.11"
  end

  config.vm.provision :ansible do |ansible|
    ansible.groups = {
      "all" => ["utility"],
    }
    ansible.playbook = "add-backups.yml"
  end

end
