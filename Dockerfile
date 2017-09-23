FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:latest
# ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
# RUN gcloud components update
USER jenkins
ARG AGENT_WORKDIR=/home/jenkins/agent
ENV AGENT_WORKDIR=${AGENT_WORKDIR}
RUN mkdir /home/jenkins/.jenkins && mkdir -p ${AGENT_WORKDIR}
VOLUME /home/jenkins/
VOLUME ${AGENT_WORKDIR}
WORKDIR /home/jenkins
