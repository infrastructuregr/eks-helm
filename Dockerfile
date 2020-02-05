FROM infrastructuregr/terraform-kubectl

ENV AWSCLI_VER 1.17.9
ENV HELM_VERSION v3.0.3
ENV HELMFILE_VERSION v0.99.0
ENV KUBECTL_VER v1.17.2
LABEL version="${HELMFILE_VERSION}-${HELM_VERSION}-${KUBECTL_VERSION}"


RUN apk add --update --no-cache git py-pip bash jq\
    && pip install awscli==$AWSCLI_VER \
    && curl https://get.helm.sh/helm-$HELM_VERSION-linux-amd64.tar.gz | tar xvzf - --strip-components=1 -C /usr/bin

ADD https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VER/bin/linux/amd64/kubectl /usr/bin/kubectl
RUN chmod +x /usr/bin/kubectl

ADD https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator /usr/bin/aws-iam-authenticator
RUN chmod +x /usr/bin/aws-iam-authenticator

ADD https://github.com/roboll/helmfile/releases/download/${HELMFILE_VERSION}/helmfile_linux_amd64 /usr/bin/helmfile
RUN chmod +x /usr/bin/helmfile


RUN helm init \
    && helm plugin install https://github.com/databus23/helm-diff --version master \
    && helm plugin install https://github.com/futuresimple/helm-secrets --version master \
    && helm plugin install https://github.com/aslafy-z/helm-git --version master \
    && rm -f /var/cache/apk/*

ENTRYPOINT ["/bin/bash","-c"]
