export CLUSTER_NAME=fargate-obeservability-demo
export REGION=ap-southeast-1
export SERVICE_ACCOUNT_NAMESPACE=fargate-container-insights
export SERVICE_ACCOUNT_NAME=adot-collector
export SERVICE_ACCOUNT_IAM_POLICY=arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy

eksctl create iamserviceaccount \
--cluster=$CLUSTER_NAME \
--region=$REGION \
--name=$SERVICE_ACCOUNT_NAME \
--namespace=$SERVICE_ACCOUNT_NAMESPACE \
--attach-policy-arn=$SERVICE_ACCOUNT_IAM_POLICY \
--override-existing-serviceaccounts \
--approve