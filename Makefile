# 08/22/2019 - customization by Cappetta
#        for the SecDevOps Cyber Range: https://github.com/secdevops-cuse/CyberRange
# Reference : https://github.com/pgporada/terraform-makefile/blob/master/Makefile

# Copyright 2016 Philip G. Porada
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.



.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: apply destroy-backend destroy destroy-target plan-destroy plan plan-target prep
# VARS="variables/$(ENV)-$(REGION).tfvars"
CURRENT_FOLDER=$(shell basename "$$(pwd)")
S3_BUCKET="secdevops-cuse"
WORKSPACE="$(ENV)-$(REGION)"
BOLD=$(shell tput bold)
RED=$(shell tput setaf 1)
GREEN=$(shell tput setaf 2)
YELLOW=$(shell tput setaf 3)
RESET=$(shell tput sgr0)
REGION="us-east-1"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

set-env:
	@if [ -z $(ENV) ]; then \
		echo "$(BOLD)$(RED)ENV was not set$(RESET)"; \
		ERROR=1; \
	 fi
	@if [ -z $(REGION) ]; then \
		echo "$(BOLD)$(RED)REGION was not set$(RESET)"; \
		ERROR=1; \
	 fi
	@if [ -z $(AWS_PROFILE) ]; then \
		echo "$(BOLD)$(RED)AWS_PROFILE was not set.$(RESET)"; \
		ERROR=1; \
	 fi
	@if [ ! -z $${ERROR} ] && [ $${ERROR} -eq 1 ]; then \
		echo "$(BOLD)Example usage: \`AWS_PROFILE=whatever ENV=demo REGION=us-east-1 make plan\`$(RESET)"; \
		exit 1; \
	 fi

init: set-env ## initialize the project [ usage: make init REGION=us-east-1 ]
	@echo "$(BOLD)Configuring the terraform backend$(RESET)"
	@cd ./terraform/environments/$(REGION) &&	terraform init \
		-input=false \
		-force-copy \
		-lock=true \
		-upgrade \
		-verify-plugins=true \
		-backend=true \
		-backend-config="profile=$(AWS_PROFILE)" \
		-backend-config="region=$(REGION)" \
		-backend-config="bucket=$(S3_BUCKET)" \
		-backend-config="key=virginia/secdevops-cuse-dev-v2.tfstate" \
	    -backend-config="acl=private"
	@echo "$(BOLD)Switching to workspace $(WORKSPACE)$(RESET)"
	@terraform workspace select $(WORKSPACE) || terraform workspace new $(WORKSPACE)

plan: ## Show terraform plan output
	@cd ./terraform/environments/$(REGION) && time terraform plan \
		-lock=true \
		-input=false \
		-refresh=true | grep -i "will be created"

range: ## Create Everything
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve \
		-lock=true \
		-input=false \
		-refresh=true \
		&& time inspec exec terraform/inspec/cyberRange.full.instances.rb -t aws://

kali: ## Create just kali
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve \
		-lock=true \
		-input=false \
		-refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.kali[0] \
		--target=module.staging-infrastructure.module.network.aws_internet_gateway.gw

offensive: ## Create Kali & Commando vms
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve \
	    -lock=true -input=false -refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.kali[0] \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.commando[0] \
		--target=module.staging-infrastructure.module.network.aws_internet_gateway.gw \
		--target=module.staging-infrastructure.module.network.aws_nat_gateway.nat-a \
		--target=module.staging-infrastructure.module.network.aws_route_table.private-a \
		--target=module.staging-infrastructure.module.network.aws_route_table.public-a \
		--target=module.staging-infrastructure.module.network.aws_route_table_association.private-a \
		--target=module.staging-infrastructure.module.network.aws_route_table_association.public-a \
		--target=module.staging-infrastructure.module.secdevops.aws_security_group.kali

honeypot: ## Create T-Pot Honeypot
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve \
		-lock=true -input=false -refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.tpot[0]

myhouse: ## Create myhouse / kali test environment
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve \
		-lock=true -input=false -refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.cr_myhouse7[0] \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.kali[0] \
        --target=module.staging-infrastructure.module.network.aws_internet_gateway.gw \
        --target=module.staging-infrastructure.module.network.aws_nat_gateway.nat-a \
        --target=module.staging-infrastructure.module.network.aws_route_table.private-a \
        --target=module.staging-infrastructure.module.network.aws_route_table.public-a \
        --target=module.staging-infrastructure.module.network.aws_route_table_association.private-a \
        --target=module.staging-infrastructure.module.network.aws_route_table_association.public-a

destroy-honeypot: ## Destroy T-Pot Honeypot
	@cd ./terraform/environments/$(REGION) && time terraform destroy -force \
		-lock=true -input=false -refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.tpot[0]

target-simple: ## Learn the fundamentals [ Create Metasploitable Targets ]
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve \
		-lock=true -input=false -refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.cr_ms3_2k8[0] \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.ami_ms3_2k12[0] \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.cr_ms3_nix[0] \
		--target=module.staging-infrastructure.module.network.aws_internet_gateway.gw \
		--target=module.staging-infrastructure.module.network.aws_nat_gateway.nat-a \
		--target=module.staging-infrastructure.module.network.aws_route_table.private-a \
		--target=module.staging-infrastructure.module.network.aws_route_table.public-a \
		--target=module.staging-infrastructure.module.network.aws_route_table_association.private-a \
		--target=module.staging-infrastructure.module.network.aws_route_table_association.public-a \
		--target=module.staging-infrastructure.module.secdevops.aws_security_group.kali

defenders: ## Setup Detection Lab
	@cd ./terraform/environments/$(REGION) && time terraform apply --auto-approve -lock=true \
	    -lock=true -input=false -refresh=true \
	    --target=module.staging-infrastructure.module.secdevops.aws_instance.dl-dc[0] \
	    --target=module.staging-infrastructure.module.secdevops.aws_instance.dl-wef[0] \
	    --target=module.staging-infrastructure.module.secdevops.aws_instance.dl-win10[0] \
	    --target=module.staging-infrastructure.module.secdevops.aws_instance.dl-logger[0] \
	    --target=module.staging-infrastructure.module.network.aws_internet_gateway.gw --target=module.staging-infrastructure.module.network.aws_nat_gateway.nat-a --target=module.staging-infrastructure.module.network.aws_route_table.private-a --target=module.staging-infrastructure.module.network.aws_route_table.public-a --target=module.staging-infrastructure.module.network.aws_route_table_association.private-a --target=module.staging-infrastructure.module.network.aws_route_table_association.public-a --target=module.staging-infrastructure.module.secdevops.aws_security_group.kali

destroy-defenders: ## Destroy Detection Lab
	@cd ./terraform/environments/$(REGION) && \
	time terraform destroy -force -lock=true -input=false -refresh=true \
	--target=module.staging-infrastructure.module.secdevops.aws_instance.dl-dc[0] \
	--target=module.staging-infrastructure.module.secdevops.aws_instance.dl-wef[0] \
	--target=module.staging-infrastructure.module.secdevops.aws_instance.dl-win10[0] \
	--target=module.staging-infrastructure.module.secdevops.aws_instance.dl-logger[0]

destroy-simple: ## Destroy em! [ Eliminte the Basic Metasploitable Targets ]
	@cd ./terraform/environments/$(REGION) && time terraform destroy -force \
		-lock=true -input=false -refresh=true \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.cr_ms3_2k8[0] \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.ami_ms3_2k12[0] \
		--target=module.staging-infrastructure.module.secdevops.aws_instance.cr_ms3_nix[0]

destroy-force: ## Tasmanian Devil-Style Tornado [ Destroy everything now ]
	 @cd ./terraform/environments/$(REGION) && time terraform destroy -force \
		-lock=true -input=false -refresh=true

purge: ## clean up lingering volumes
	@time for id in $(aws ec2 describe-volumes --filters Name=status,Values=available | jq -r '.Volumes[] | .VolumeId' ); do echo aws ec2 delete-volume --volume-id $id; done

showvms: ## aws alias w/ jq to show stopped ec2 instances
    @time aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped"   |  jq -r   '.Reservations[] | .Instances[] | [.InstanceId, (.Tags[]|select(.Key=="Name")|.Value)]|@csv'

ips: ## aws alias w/ jq to show running assets & public ips
    @time aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"   |  jq -r   '.Reservations[] | .Instances[] | [.InstanceId, (.Tags[]|select(.Key=="Name")|.Value), .PublicIpAddress]|@csv'

debug: ## Issue? [ collect show useful output / symptoms ]
	@echo "I'll figure this out once people start complaining"

checkRange: ## run automated inspec tests
	@inspec exec ./terraform/inspec/cyberRange.defenders.rb -t aws:// > /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.desired.state.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.full.instances.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.honeynet.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.malware.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.network.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.network.sg.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.offensive.kali.system.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.offensive.rb -t aws:// >> /tmp/inspec.result && \
                 inspec exec ./terraform/inspec/cyberRange.targets.rb -t aws:// >> /tmp/inspec.result && \
                 egrep -i "error|fail|successful" /tmp/inspec.result

output: ## Show the output of terraform
	@cd ./terraform/environments/$(REGION) && time terraform output

cmds: ## show verbose cmd syntax
	@echo  "\t\Just the make commands listed below require \`make <cmdName> REGION=<region>\` \n \
	    \t"--------------------------------------------------------------------------------------------------" \n \
       defenders                      Create the Detection Lab \n \
       destroy-defenders              Destroy Detection Lab \n \
       destroy-force                  Destroy everything \n \
       destroy-honeypot               Destroy T-Pot Honeypot \n \
       destroy-simple                 Destroy em! [ Eliminte the Basic Metasploitable Targets ] \n \
       honeypot                       Create T-Pot Honeypot  \n \
       init                           Initialize the terraform project \n \
       kali                           Create Kali only \n \
       offensive                      Create Kali & Commando \n \
       output                         Show the output of terraform \n \
       plan                           Show the terraform plan output \n \
       purge                          Purge lingering volumes \n \
       range                          Create Everything  \n \
       showvms                        aws alias w/ jq to show stopped ec2 instances  \n \
       target-simple                  Create Metasploitable Targets"
