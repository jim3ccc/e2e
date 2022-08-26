# e2e
end-to-end pipeline with AWS, Terraform, Ansible, Docker, Jenkins

## Acceptance Criteria
  * Post-provisioning report shows
    * No provisioning errors
    * Clear sequence of provisioning steps
    * Nginx running and listening on ports 80 and 443 and response on ports 80 and 443
    * content of configuration file of active instance  
  
  * Automated pipeline can be run repeatedly with same results (fully provisioned EC2 instance with required components after every deployment)
