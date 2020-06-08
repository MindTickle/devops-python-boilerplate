pyenv global 3.7.1
pip install -U pip
pip install awscli

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh && chmod 700 get_helm.sh && sudo ./get_helm.sh

aws eks update-kubeconfig --name dev-eks --region ap-southeast-1
kubectl get pods -n eddard
helm version
