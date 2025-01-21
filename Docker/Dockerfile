FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install -y libicu-dev && \
    apt-get install curl -y && \
    apt-get install gnupg -y && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    echo "deb [arch=amd64] https://apt.releases.hashicorp.com focal main" > /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update -y && apt-get install packer -y && apt-get install unzip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install 
RUN apt-get install git -y && apt-get install maven  -y 
RUN rm -rf awscliv2.zip \
CMD ["/bin/bash"]

