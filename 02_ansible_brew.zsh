ansible-galaxy install -r ./ansible/galaxy/requirements.yaml
ansible-playbook --vault-password-file ./ansible/vault/secret ./ansible/homebrew-packages.yaml
