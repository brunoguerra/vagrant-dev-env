require 'erb'


Vagrant::Config.run do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :hostonly, "192.168.50.4"
  config.vm.network :bridged
  config.ssh.forward_agent = true
  config.vm.customize([
    'setextradata',
    :id,
    'VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-code',
    '1'
  ])

  # Enable provisioning through a shell script.
  config.vm.provision :shell do |shell|
    relative     = ''
    script       = 'provision.sh'
    shell.inline = ERB.new("<% def import(file); File.read('#{relative}' + file); end %>" + File.read("#{relative}#{script}")).result
  end

end

