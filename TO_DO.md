*This is just a list of things that need to be done to each server (provisioning). I use it as a guide for writting my playbooks.*


**All Servers**
1. ~~Install standard packages used by all servers:~~
    *       lsof, tree, elinks, bind-utils, net-tools, policycoreutils-python, traceroute
2. Configure /etc/hosts on all servers with the following:
    *   ~~1.2.3.4   home    home1   home-1~~
    *   ~~1.2.3.5     server1     server-1    lfcs-practice.com   server1.lfcs-practice.com~~
    *   ~~1.2.3.6     server2     server-2~~

**Home Server**

  1. ~~Create users: eric, linda~~
  2. ~~Set password for eric and linda to "redhat"~~
  2. ~~Create groups: engineers~~
  3. ~~Create the following directories~~ 

*     /root/unique/dir1
*     /root/unique/dir2
*     /root/search/6
*     /root/search/6/erased
*     /root/backups/7
*     /root/backups/7/restored
*     /root/found/9/start_with_ab
*     /root/found/9/directories
*     /root/other_users
*     /root/root_user
*     /root/opt/vbox/links

 4. ~~Copy file_01.txt - file_10.txt to /root/unique/dir1~~
 5. ~~Copy file_01.txt - file_08.txt to /root/unique/dir2~~
 6. Create failed login attemps for linda
 7. ~~Create a soft link named /root/opt/vbox/links/uninstall.sh that points to /opt/VBoxGuestAdditions/uninstall.sh~~

**Server 1**

  1. ~~Install Apache webserver and create main server configuration called lfcs-practice.com~~
  2. 


**Server 2**

  1. 
  2. 
