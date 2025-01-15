# Replace <Password> with your Actual Password
# Replace <Public IP Address> with Windows Host IP Address
ansible all -i <Public IP Address>, -m win_ping -e "ansible_user=ansible ansible_password='Eta\!@345' ansible_winrm_server_cert_validation=ignore ansible_connection=winrm"
