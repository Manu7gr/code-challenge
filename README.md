# code-challenge
# Terraform
  To create EC2 instance using terraform run below commands inside terraform directory.
   1.terraform init
   2.terraform validate (To validate the terraform scripts)
   3.terraform plan
   4.terraform apply
  To clean up
   1.terraform destroy
   
# Ansible
  To install Java8 and jenkins in AWS EC2 run below playbooks which is in ansible-playbooks directory.
  1.To install Java8
    Run ansible-playbook java.yaml 
  2.To install jenkins
    Run ansible-playbook jenkins.yaml
# NodeJs
  Sample hello world application
  To run - Use dockerfile to build which is in nodejs directory and run the image.

# Jenkinsfile
  Jenkinsfile to 
  - > Notify when build starts
  - > Build docker image
  - > Pre-clean up the docker containers
  - > Run the docker image
  - > Test the server using curl
  - > Notify the job status in slacks
 
  
