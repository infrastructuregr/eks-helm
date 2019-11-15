### eks-helm


![Docker builds](https://img.shields.io/docker/cloud/build/infrastructuregr/eks-helm)  ![Docker pulls](https://img.shields.io/docker/pulls/infrastructuregr/eks-helm.svg?style=flat)

Docker image to deploy with helmfile to kubernetes or / and amazon eks. Includes the following:

* [awscli] - pip script to manage amazon aws resources.
* [kubectl] - The Kubernetes command-line tool.
* [aws-iam-authenticator] - provide authentication to your Kubernetes cluster using AWS IAM.

* [helm] - The package manager for Kubernetes.
* [helmfile] - Helmfile is a declarative spec for deploying helm charts.


### Plugins

Helm has many plugins, some of them are installed below.

| Plugin | README |
| ------ | ------ |
| helm diff | [github.com/databus23/helm-diff][helmdiff] |
| helm secrets | [github.com/futuresimple/helm-secrets][helm-secrets] |
| helm git | [github.com/aslafy-z/helm-git][helm-git] |



   [awscli]: <https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html>
   [helm]: <https://helm.sh/>
   [kubectl]: <https://kubernetes.io/docs/tasks/tools/install-kubectl/>
   [aws-iam-authenticator]: <https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html>
   [helmdiff]: <https://github.com/databus23/helm-diff>
   [helm-secrets]: <https://github.com/futuresimple/helm-secrets>
   [helmfile]: <https://github.com/roboll/helmfile>
   [helm-git]: <https://github.com/aslafy-z/helm-git>
