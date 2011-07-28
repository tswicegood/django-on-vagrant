Vagrant::Config.run do |config|
  config.vm.define :django do |config|
    # All Vagrant configuration is done here. The most common configuration
    # options are documented and commented below. For a complete reference,
    # please see the online documentation at vagrantup.com.

    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "1104_32"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    config.vm.box_url = "http://boxes.armstrongcms.org.s3.amazonaws.com/ubuntu_server_1104_32bit.box"

    # Boot with a GUI so you can see the screen. (Default is headless)
    # config.vm.boot_mode = :gui

    # Assign this VM to a host only network IP, allowing you to access it
    # via the IP.
    config.vm.network "33.33.33.10"

    # Forward a port from the guest to the host, which allows for outside
    # computers to access the VM, whereas host only networking does not.
    config.vm.forward_port "http", 8000, 8080

    # Share an additional folder to the guest VM. The first argument is
    # an identifier, the second is the path on the guest to mount the
    # folder, and the third is the path on the host to the actual folder.
    # config.vm.share_folder "v-data", "/vagrant_data", "../data"
    config.vm.share_folder "django-project", "/home/vagrant/project", "./project"
    config.vm.share_folder "packages", "/home/vagrant/packages", "./packages"

    # Enable provisioning with Puppet stand alone.  Puppet manifests
    # are contained in a directory path relative to this Vagrantfile.
    # You will need to create the manifests directory and a manifest in
    # the file base.pp in the manifests_path directory.
    #
    # An example Puppet manifest to provision the message of the day:
    #
    # # File { owner => 0, group => 0, mode => 0644 }
    # #
    # # file { '/etc/motd':
    # #   content => "Welcome to your Vagrant-built virtual machine!
    # #               Managed by Puppet.\n"
    # # }
    #
    # config.vm.provision :puppet do |puppet|
    #   puppet.manifests_path = "manifests"
    #   puppet.manifest_file  = "base.pp"
    # end

    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "django.pp"
    end
  end
end
