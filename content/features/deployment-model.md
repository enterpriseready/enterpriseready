+++
date = "2016-10-25T00:00:00Z"
title = "Deployment Models"
featureslug = "deployment-model"
type = "feature"
hero = "/images/deployment-model.svg"
+++

This might come off entirely as a self-serving feature… so much so that we debated if we should even list it. However, since we thought it was important enough to build an entire company around we decided it was important enough to list here. Plus, there is no one better suited to talk about it than us.

Many large enterprises will ask for a private instance of an application. They might be looking for a single tenant instance that you host and manage. Or they might be looking for a full on-prem, air-gapped server installation… or anything in between. The reason enterprises ask for this can vary. For many industry verticals like financial services, legal, health care, governments and industrial the reasons often come down to security and compliance. Other application categories like developer tools, ops, data science, BI, security tools that integrate with internal systems that are already running on private networks. Below are the common methods for delivering applications to customers:

## Multi-tenant (vendor managed)
Most SaaS applications today are built to be deployed as a multi-tenant application that is managed and operated by the application vendor. This deployment model was pioneered by Salesforce as “on-demand” and has led to the modern software landscape we’re familiar with today. Often this the method through which all customer initially experience the product. In larger organizations where an application is not an approved vendor, but is still given access to sensitive company data this would be called “shadow IT”. There is an entire category around stopping shadow IT called “Cloud Access Security Brokers” or “CASBs”. As a result this is also the method that creates “bottom up” adoption of applications (and is the reason that applications like GitHub, Slack, Dropbox were able to penetrate the enterprise).

## Single-tenant (vendor managed)
Occasionally, large customers will prefer to have a dedicated instance of an application that is managed by the vendor. This can be similar to having an extra deployment environment (ie dev, staging, prod) as it is managed with the same tools. Some IaaS services are not compatible with true single tenant deployments as the backing services are multi-tenant in themselves.

## Private cloud (buyer managed)
Over the last seven years, enterprises have begun to away from physical data centers and the outsource the effort of racking & stacking servers to the IaaS providers. Often times they’ll start to move enterprise workloads over to cloud providers and setup a private network that those servers access. As they do so, the tooling that is available in those cloud platforms (namely AWS, GCE & Azure) which is often leveraged by SaaS companies in their multi-tenant deployments (ie RDS, S3, SNS, Lambda) are also available to enterprise installations. This means that SaaS vendor can reach a certain portion of the enterprise market by making private instances available in whatever cloud provider they use for their multi-tenant deployments.

## On-prem datacenter (buyer managed)
The largest enterprise buyers (banks, governments, healthcare orgs, telcos) often have some infrastructure that they’d like to utilize. To reach these customers SaaS providers will need a fully portable version of their application that can be deployed and managed anywhere. On some occasions, these customers will actually prefer to bring their own instances of common components (ie Postgres, MySQL, Nginx etc) and expect the SaaS application to be able to use their instances of those components.

## Buyer managed, private instance options
There is a lot to consider when delivering a version that your customers can install and manage on their own. Particularly, they’ll be looking for something that can run on their preferred OS (likely Red Hat Enterprise Linux or Centos). Common options for delivering private instances are as follows:

1. Java App - For applications written in Java, vendors like Atlassian have provided customers with a `.jar` file. Customers are expected to install the JVM, spin up Tomcat and provide their own database (generally MySQL or MS SQL).
1. Deb/Yum/.exe Package -
1. VM Images - For vendors who would offer their enterprise version as an “appliance”, the VM route wraps up the application along with all of it’s dependancies including the host OS into a machine image (`.ova` or as an AMI for distribution in AWS).
1. Docker Images - Docker offers an unprecedented level of application portability and as such, it can be very useful for deploying enterprise applications into unfamiliar environments. Customers manage the host OS and therefore are responsible for OS patches and updates. Docker images are versioned with layers and offer native support for mounting volumes… both features make application updates less painful than other solutions. Replicated has continued to focus on using Docker images as the foundation for application portability into enterprise environments.

## Examples  
<a href="/github/deployment-model"><img src="/github/images/ghe.png" width="300px" align="left" style="margin:0;"/></a>
<div class="clearfix"></div>
### [GitHub Deployment Options](/github/deployment-model)
