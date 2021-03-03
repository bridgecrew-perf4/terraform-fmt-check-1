FROM alpine:latest

# Install terraform 0.13.6
RUN wget https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_linux_amd64.zip
RUN unzip terraform_0.13.6_linux_amd64.zip && rm terraform_0.13.6_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# Command to run: terraform fmt -check -diff -recursive .
# Return code: 0 all good | 3 fmt error
