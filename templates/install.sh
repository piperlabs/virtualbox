mkdir -p /tmp/vbox;
mount -o loop /tmp/VBoxGuestAdditions_5.2.34.iso /tmp/vbox;
sh /tmp/vbox/VBoxLinuxAdditions.run \
    || echo "VBoxLinuxAdditions.run exited $? and is suppressed." \
        "createOrGet more read https://www.virtualbox.org/ticket/12479";
umount /tmp/vbox;
rm -rf /tmp/vbox;
rm /tmp/VBoxGuestAdditions_5.2.34.iso;