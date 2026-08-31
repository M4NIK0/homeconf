#!/bin/bash

systemctl --user enable ssh-agent.service
systemctl --user start ssh-agent.service
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

echo export "SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket"
echo 'SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket'$'\n'"$(cat ~/.zshrc)" > ~/.zshrc
