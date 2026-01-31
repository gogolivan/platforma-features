#!/bin/bash

# Firewall is already initialized by postStartCommand, verify it's active
check "firewall DROP policy is set" bash -c 'sudo iptables -L OUTPUT | grep -q "policy DROP"'