include packagecloud

node default {
    package { ["curl", "openssh-server", "ca-certificates", "postfix"]: ensure => "installed" }

    packagecloud::repo { "gitlab/gitlab-ce":
        type => 'deb',
        server_address => 'https://packages.gitlab.com/',
    }

    package { ["gitlab-ce"]: ensure => "installed" }
}