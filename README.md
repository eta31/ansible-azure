# Project Title
Ansible learning

## Description
Learning ansible with Azure cloud with CI/CD implementation

## Getting Started

### Dependencies

* Docker, Git, Azure subscription

### Building docker image
```
docker build -t ansible:v2 -f azure/Dockerfile .
```

### Executing program

* How to start container
```
docker run --name ansible-test ansible:v2
docker exec -it <container_id> /bin/bash 
```

* Inside container
```
bash azure_env.sh
az login
ansible-playbook azure_create_resource_group.yaml
ansible-playbook azure_create_linux_vm.yaml
```


## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Author

[@Eta31](https://github.com/eta3)



