* This purpose of this project is to provide a practice environment to use in studying for the Linux Foundations Certified Systems Adminstrator Exam

* In VirtualBox a private "vboxnet" netowrk will be created and a  "Host-only Adapter" will be configured as the 2nd network adapter on each virtual machine. Each server's ip address will be automatically convigured as follows:
  * home: 1.2.3.4
  * server1: 1.2.3.5
  * server2: 1.2.3.6
* Perform all actions on home-1 unless asked to ssh into another server. Always return to home-1 after completing tasks on other servers.
* The password for the root user is "vagrant"
* The following programs are installed for your convenience and they are not guaranteed to be automatically installed on the exam and in general as of this writing they are not installed by default on CentOS 7. But it has been reported that there is not much you should have to install on the exam.

  | Program Name | Package Name |
  | ------------ | ------------ |
  | lsof         | lsof         |
  | tree         | tree         |
  | elinks       | elinks       |
  | dig          | bind-utils   |
