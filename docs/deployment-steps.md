# Deployment Steps

1. Launch EC2 instances
2. Configure Security Groups
3. Configure Route53 records
4. Configure IAM roles
5. Build application using Maven

```bash
mvn clean install
```

6. Upload artifact to S3

```bash
aws s3 cp target/vprofile-v2.war s3://project-artifacts70/
```

7. Download artifact on App Server

```bash
aws s3 cp s3://project-artifacts70/vprofile-v2.war /tmp/
```

8. Deploy WAR file to Tomcat
9. Restart Tomcat service
10. Create AMI
11. Configure Auto Scaling Group
