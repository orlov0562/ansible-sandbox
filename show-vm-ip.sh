#!/bin/bash

VBoxManage \
    --nologo \
    guestcontrol "centos-minimal-test-2" \
    --verbose \
    --username="root" \
    --password="<password>" \
    run \
    --exe "/usr/sbin/ip" \
    --timeout 3000 \
    --wait-stdout \
    --wait-stderr \
    -- pwd/arg0 a
