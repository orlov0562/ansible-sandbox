#!/bin/bash

ansible-playbook pb/playbook-to-hosts.yml --extra-vars="APPLY_TO_HOSTS=local-ubuntu"
