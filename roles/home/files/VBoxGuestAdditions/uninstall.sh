#!/bin/sh
# Auto-generated uninstallation file

PATH=$PATH:/bin:/sbin:/usr/sbin
LOGFILE="/var/log/vboxadd-uninstall.log"

# Read routines.sh
if ! test -r "/opt/VBoxGuestAdditions-6.0.4/routines.sh"; then
    echo 1>&2 "Required file routines.sh not found.  Aborting..."
    return 1
fi
. "/opt/VBoxGuestAdditions-6.0.4/routines.sh"

# We need to be run as root
check_root

create_log "$LOGFILE"

echo 1>&2 "Removing installed version 6.0.4 of VirtualBox Guest Additions..."

NO_CLEANUP=""
if test "$1" = "no_cleanup"; then
    shift
    NO_CLEANUP="no_cleanup"
fi

test -r "/var/lib/VBoxGuestAdditions/filelist" || abort "Required file filelist not found.  Aborting..."

# Stop and clean up all services
if test -r "/opt/VBoxGuestAdditions-6.0.4"/init/vboxadd-service; then
    stop_init_script vboxadd-service 2>> "$LOGFILE"
    delrunlevel vboxadd-service 2>> "$LOGFILE"
    remove_init_script vboxadd-service 2>> "$LOGFILE"
fi
if test -r "/opt/VBoxGuestAdditions-6.0.4"/init/vboxadd; then
    stop_init_script vboxadd 2>> "$LOGFILE"
    test -n "$NO_CLEANUP" || "/opt/VBoxGuestAdditions-6.0.4"/init/vboxadd cleanup 2>> "$LOGFILE"
    delrunlevel vboxadd 2>> "$LOGFILE"
    remove_init_script vboxadd 2>> "$LOGFILE"
fi
finish_init_script_install

# Load all modules
# Important: This needs to be done before loading the configuration
#            value below to not override values which are set to a default
#            value in the modules itself.
for CUR_MODULE in /opt/VBoxGuestAdditions-6.0.4/installer/module-autologon
    do
        . "$CUR_MODULE"
    done

# Load configuration values
test -r "/var/lib/VBoxGuestAdditions/config" && . "/var/lib/VBoxGuestAdditions/config"

# Call uninstallation initialization of all modules
for CUR_MODULE in ""
    do
        if test -z "$CUR_MODULE"; then
            continue
        fi
        mod_${CUR_MODULE}_pre_uninstall
        if [ 0 -ne 0 ]; then
            echo 1>&2 "Module \"$CUR_MODULE\" failed to initialize uninstallation"
            # Continue initialization.
        fi
    done

# Call uninstallation of all modules
for CUR_MODULE in ""
    do
        if test -z "$CUR_MODULE"; then
            continue
        fi
        mod_${CUR_MODULE}_uninstall
        if [ 0 -ne 0 ]; then
            echo 1>&2 "Module \"$CUR_MODULE\" failed to uninstall"
            # Continue uninstallation.
        fi
    done

# And remove all files and empty installation directories
# Remove any non-directory entries
cat "/var/lib/VBoxGuestAdditions/filelist" | xargs rm 2>/dev/null
# Remove any empty (of files) directories in the file list
cat "/var/lib/VBoxGuestAdditions/filelist" |
    while read file; do
        case "$file" in
            */)
            test -d "$file" &&
                find "$file" -depth -type d -exec rmdir '{}' ';' 2>/dev/null
            ;;
        esac
    done

# Remove configuration files
rm "/var/lib/VBoxGuestAdditions/filelist" 2>/dev/null
rm "/var/lib/VBoxGuestAdditions/config" 2>/dev/null
rmdir "/var/lib/VBoxGuestAdditions" 2>/dev/null
exit 0
