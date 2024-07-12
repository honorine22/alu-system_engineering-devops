# SSH

In this project, you will learn about SSH and how to connect to a remote server using SSH with RSA key pair authentication.

## Requirements

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Background Context

Along with this project, you have been attributed an Ubuntu server, living in a datacenter far far away. You will connect to this server using the `ssh` command and an RSA key pair. The server has been configured with the public key you will create ("How-To" below) and you will share the public key in your intranet profile.

You can access your server information in the "My servers" section of the intranet, where each line contains the IP and username you should use to connect via `ssh`.

Note: Your server is configured with an Ubuntu 20.04 LTS environment.

## Resources

Read or watch:

- [What is a (physical) server](https://en.wikipedia.org/wiki/Server_(computing))
- [What is a (physical) server - video](https://www.youtube.com/watch?v=b2Z7MojyXqE)
- [SSH essentials](https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys)
- [SSH Config File](https://www.ssh.com/academy/ssh/config)
- [Public Key Authentication for SSH](https://www.ssh.com/academy/ssh/public-key-authentication)
- [How Secure Shell Works](https://www.hostinger.com/tutorials/ssh-tutorial-how-does-ssh-work)
- [SSH Crash Course (Long, but highly informative. Watch this if configuring SSH is still confusing. It may be helpful to watch at x1.25 speed or above.)](https://www.youtube.com/watch?v=hQWRp-FdTpc)

For reference:

- [Understanding the SSH Encryption and Connection Process](https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process)
- [Secure Shell Wiki](https://en.wikipedia.org/wiki/Secure_Shell)
- [IETF RFC 4251 (Description of the SSH Protocol)](https://tools.ietf.org/html/rfc4251)
- [Internet Engineering Task Force](https://www.ietf.org/)
- [Request for Comments](https://www.rfc-editor.org/)

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### General

- What is a server
- Where servers usually live
- What is SSH
- How to create an SSH RSA key pair
- How to connect to a remote host using an SSH RSA key pair
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

## Your servers

| Name | Username | IP | State |
| --- | --- | --- | --- |
| 6130-web-01 | | | |

## Tasks

### 0. Use the private key

Create a client configuration file that you can use to connect to your server without typing a password.

Requirements:
- Your SSH client configuration must be configured to use the private key `~/.ssh/school`
- Your SSH client configuration must be configured to refuse to authenticate using a password
