# Troubleshooting

## S3 Access Error

Issue:
403 Forbidden while downloading/uploading artifacts.

Solution:
Configured IAM roles and S3 permissions correctly.

---

## DNS Resolution Issue

Issue:
Application could not resolve internal service hostnames.

Solution:
Updated Route53 records and application configuration.

---

## Java Runtime Mismatch

Issue:
Application compiled with Java 21 while server used Java 17.

Solution:
Updated Java version and rebuilt WAR.

---

## Application Deployment Failure

Issue:
HTTP 500 Internal Server Error.

Solution:
Reviewed Tomcat logs and redeployed application artifact.
