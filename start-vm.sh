#!/bin/bash

VBoxManage clonevm "centos-minimal" \
    --snapshot "centos-minimal-snapshot" \
    --options link \
    --name "centos-minimal-test-1" \
    --register

VBoxManage clonevm "centos-minimal" \
    --snapshot "centos-minimal-snapshot" \
    --options link \
    --name "centos-minimal-test-2" \
    --register

VBoxManage clonevm "ubuntu-minimal" \
    --snapshot "ubuntu-minimal-snapshot" \
    --options link \
    --name "ubuntu-minimal-test-3" \
    --register


#VBoxManage discardstate "centos-minimal-test-1"
#VBoxManage discardstate "centos-minimal-test-2"

VBoxManage modifyvm "centos-minimal-test-1" --macaddress1 "0800273DE219"
VBoxManage modifyvm "centos-minimal-test-2" --macaddress1 "0800272A25A9"
VBoxManage modifyvm "ubuntu-minimal-test-3" --macaddress1 "0800276A7767"

VBoxManage startvm "centos-minimal-test-1" --type headless
VBoxManage startvm "centos-minimal-test-2" --type headless
VBoxManage startvm "ubuntu-minimal-test-3" --type headless
