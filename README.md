EKS Fargate Obeservability Demo
===


## Steps

### 1. Create EKS Cluster
```
eksctl create cluster -f cluster.yaml
```

### 2. Deploy Demo Application
```
kubectl apply -f manifest.yaml
```


### 3. Generate Load
```
./gen-load.sh
```

Then you should see traces from CloudWatch/X-Ray
![alt text](image.png)