 #!/bin/bash

vboxmanage controlvm "centos-minimal-test-1" poweroff
vboxmanage controlvm "centos-minimal-test-2" poweroff
vboxmanage controlvm "ubuntu-minimal-test-3" poweroff

VBoxManage unregistervm "centos-minimal-test-1" --delete
VBoxManage unregistervm "centos-minimal-test-2" --delete
VBoxManage unregistervm "ubuntu-minimal-test-3" --delete
