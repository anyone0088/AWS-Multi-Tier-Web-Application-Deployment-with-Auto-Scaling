AWS Multi-Tier Web Application Deployment with Auto Scaling 🚀

📌 Project Overview

This project demonstrates the deployment of a scalable multi-tier Java web application on AWS infrastructure using EC2 instances and AWS cloud services. The application architecture separates services into multiple layers to improve maintainability, scalability, and reliability.

The project includes application deployment, DNS configuration, artifact management, EC2 provisioning, AMI creation, and Auto Scaling implementation.

---

🏗 Architecture

User
   ↓
Tomcat Application Server (EC2)
   ↓
Route53 DNS
   ↓
RabbitMQ Message Queue
   ↓
Memcached Cache Server
   ↓
MariaDB Database Server
   ↓
S3 Artifact Storage
   ↓
AMI + Auto Scaling Group
⚙ Technologies Used
Cloud Services
AWS EC2
AWS S3
AWS Route53
AWS IAM
Auto Scaling Group
AMI (Amazon Machine Image)
Application Stack
Apache Tomcat
Java
Maven
MariaDB
RabbitMQ
Memcached
Linux (Ubuntu/Amazon Linux)
Tools
Git
GitHub
VS Code
SSH
✨ Features
Multi-tier application deployment
EC2-based infrastructure setup
S3 artifact storage and retrieval
Route53 DNS configuration
RabbitMQ integration
Memcached integration
MariaDB database configuration
IAM role-based access control
AMI creation for reusable infrastructure
Auto Scaling Group implementation
Service configuration using EC2 user-data scripts
📂 Repository Structure
AWS-MultiTier-WebApp-Deployment/
│
├── README.md
├── scripts/
│   ├── app_userdata.sh
│   ├── db_userdata.sh
│   ├── rabbitmq_userdata.sh
│   └── memcached_userdata.sh
│
├── screenshots/
│   ├── ec2-instances.png
│   ├── route53.png
│   ├── autoscaling-group.png
│   ├── ami.png
│   ├── s3-bucket.png
│   └── application-running.png
│
├── docs/
│   ├── deployment-steps.md
│   └── troubleshooting.md
│
└── architecture/
    └── architecture-diagram.png
🚀 Deployment Workflow
Clone Repository
git clone https://github.com/yourusername/AWS-MultiTier-WebApp-Deployment.git
Build Application
mvn clean install
Upload Artifact to S3
aws s3 cp target/vprofile-v2.war s3://your-bucket-name/
Download Artifact on App Server
aws s3 cp s3://your-bucket-name/vprofile-v2.war /tmp/
Deploy WAR File
sudo cp /tmp/vprofile-v2.war /var/lib/tomcat10/webapps/ROOT.war
Restart Tomcat
sudo systemctl restart tomcat10
🔍 Challenges and Troubleshooting

During deployment several issues were identified and resolved:

Fixed IAM permission errors with S3 access
Resolved Route53 DNS configuration issues
Corrected EC2 role authentication problems
Fixed application deployment errors
Resolved Java runtime mismatch (Java 17 vs Java 21)
Configured application dependencies correctly
Debugged service connectivity issues
📸 Screenshots

Add screenshots here:

EC2 instances
Route53 configuration
S3 bucket
Auto Scaling Group
AMI creation
Application running successfully
🎯 Learning Outcomes

This project helped me gain hands-on experience with:

AWS cloud infrastructure deployment
Linux administration
Multi-tier architecture design
DNS and networking concepts
IAM roles and permissions
Auto Scaling concepts
Application deployment lifecycle
Real-world troubleshooting and debugging
👨‍💻 Author - 
Deepanshu Prabhakar
