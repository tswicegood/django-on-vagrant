stage { "pre": before => Stage["main"] }
class python {
    package {
        "build-essential": ensure => "latest";
        "python": ensure => "latest";
        "python-dev": ensure => "latest";
        "python-setuptools": ensure => "latest";
        "git-core": ensure => "latest";
    }
    exec { "pip":
        command => "easy_install pip",
        path => "/usr/local/bin:/usr/bin:/bin",
        refreshonly => true,
        require => [Package["build-essential"], Package["python-setuptools"],
            Package["python"], Package["python-dev"], Package["git-core"]],
        subscribe => Package["python-setuptools"],
    }
}
class { "python": stage => "pre" }


class django {
    exec { "django":
        command => "/usr/local/bin/pip install /home/vagrant/packages/Django-1.3.tar.gz",
        require => Exec["pip"],
        logoutput => true,
    }
}

include django
