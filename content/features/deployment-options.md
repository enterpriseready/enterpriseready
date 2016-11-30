+++
date = "2016-10-25T00:00:00Z"
title = "Deployment Options"
featureslug = "deployment-options"
type = "feature"
hero = "/images/deployment-model.svg"
metadescription = "A guide for SaaS products to balance enterprise customers' data security concerns and application overhead with flexible deployment options."
pagetitle = "Enterprise Ready SaaS App Guide to Deployment Options"
ogimage = "images/twtr/deployment-options-og.png"
+++

As discussed in our overview of the various [deployment options that are available to SaaS vendors](/blog/deployment-models), many large enterprises will ask for a private instance of an application. They might be looking for a single tenant instance that you host and manage. Or they might be looking for a full on-prem, air-gapped server installation… or anything in between. Ultimately, you'll want to be able to deliver a version of your application that can be deployed anywhere.  

The reason enterprises ask for this can vary. For many industry verticals like financial services, legal, health care, governments and industrial the reasons often come down to security and compliance. Other application categories like developer tools, ops, data science, BI or security tools are built around an integration with internal systems that are already running on private networks.

Much of the prevailing wisdom about supporting both a multi-tenant SaaS version and an enterprise installable version of your application suggests it is too hard as it splits your internal attention from the primary product. However, we think that the development and ops landscape has changed enough in the last ten years to reconsider that line of thinking. Thanks to the evolution of devops & the emergence of containers, applications are more portable now than ever before.  As a result, while legacy SaaS providers are stuck managing their aging cloud deployments, modern SaaS applications can leverage this newfound portability to offer enterprise customers the choice of their preferred deployment option.  

## Enterprise Development
One of the key challenges for SaaS vendors who are also going to deploy on-prem is to manage the development of these offerings as a single product.  

The key methods that will allow you to do so effectively are as follows:  

**Same code base** - Enterprise-only & public-cloud-only features can be introduced in the same codebase instead of forking it. It's preferable to use the pattern of `if (enterprise) { ... }` or `if (public ){ ... }` within the same code base.  

**Leverage release channels** - Enterprise versions will likely not be automatically deployed to your customers at the same cadence that you update your public cloud version. As a result, it is important that just as you have dev, test and production environments, you should introduce enterprise release channels also.  

## Application Delivery
There is a lot to consider when delivering a version that your customers can install and manage on their own. Particularly, they’ll be looking for something that can run on their preferred OS (likely Red Hat Enterprise Linux or Centos). Common options for delivering private instances are as follows:  

**Java App** - For applications written in Java, vendors like Atlassian have provided customers with a `.jar` file. Customers are expected to install the JVM, spin up Tomcat or another web server and provide their own configured database (such as MySQL, Postgres or MS SQL).  
**deb/rpm/.exe Package** - Often used to deploy components. Configuration is generally managed through config files externally. Updates are delivered through each package manager. If you go down this route, check out [PackageCloud.io](https://www.packagecloud.io).  
**VM Images** - For vendors who would offer their enterprise version as an “appliance”, the VM route wraps up the application along with all of it’s dependencies including the host OS into a machine image (`.ova` or as an AMI for [distribution in AWS](https://aws.amazon.com/marketplace/)).  
**Docker Images** - [Docker](https://www.docker.com) offers an unprecedented level of application portability and as such, it can be very useful for deploying enterprise applications into unfamiliar environments. Customers manage the host OS and therefore are responsible for OS patches and updates. Docker images are versioned with tags and offer native support for mounting volumes. Both of these features make application updates less painful than other solutions. [Replicated](https://wwww.replicated.com) has continued to focus on using Docker images as the foundation for application portability into enterprise environments.  

## Private Instance Features
In any buyer managed private instance there are key features that are important to incorporate for enterprise buyers. First and foremost, these enterprise buyers will generally require many of the features that comprise EnterpriseReady ([RBAC](/features/role-based-access-control), [audit logs](/features/audit-log), [advanced reporting](/features/advanced-reporting), [change management](/features/change-management), etc). Second they will need features that allow them to manage the application lifecycle, including installation, configuration, updates, backups, and more. Finally, it's important to think about how you are going to support a buyer-managed private instance when something isn't working well. Ideally you will have SSH access to the servers, but many large enterprise buyers can't or won't be able to provide this. Troubleshooting a system that you don't have direct access to is a new skill to learn.

**Installation** - The specifics of the installation will be highly dependent on the delivery mechanism chosen. However, some general considerations are as follows. Be sure to provide detailed installation instructions that show the how to install each component of you software. This includes how to add your GPG keys and remote endpoints, how to upgrade/downgrade, etc. Some customers will opt for the simplicity of a `curl | sh` script, however this will not satisfy all security minded customers so be sure to provide the detailed instructions also.  
**System requirements enforcement** - To help prevent errors during installation, it can be super helpful to provide tools that can validate that the resources provided meet your hardware, network and environment requirements.  
**Licensing** - Each instance should be installed from a unique license that includes metadata about the instance including license expiration, as well as any features enabled/disabled.  
**Settings console** - A console for managing instance level settings such as hostname, SSL/TLS certs, SMTP information, external integrations and any other configuration option your customer will need to supply.  
**Database configuration** - Many enterprise will actually prefer to bring their own instance of MySQL, Elastic Search, Redis etc. They often have on-staff DBAs who would prefer to leverage their own instances of those components. As a result, it is important to expose the configuration options to allow your application to leverage those external resources.  
**User management** - For applications that are run behind-the-firewall, many enterprises will prefer to manage users with their existing directory service (ie LDAP or Active Directory). This is a bit different than the [SSO feature](/features/single-sign-on) that your public-cloud hosted customers will be looking to leverage. The reason being that traditional enterprise user directories are hosted in their private network and they generally prefer to connect applications deployed on that same network to integrate with it directly.   
**Update management** - Most private instance are capable of making outbound internet requests to check for updates. For instances unable to check the public internet, monitoring a local file path for the presence of manually transferred update packages can be useful.  
**Instance reports** - The enterprise IT admin managing the application will have different reporting requirements than many smaller customers. Provide info for usage as well as common instance data like CPU & Memory usage.  
**Support enablement** - It is optimal for customers to be able to leverage tools to self-diagnose potential issues or at least automate the generation of the files that you'll need to support them.  
**Horizontal scalability** - Most enterprise instances will be significantly smaller than your cloud-hosted instance. However, they still may need to scale some components to multiple machines (for high availability at a minimum).  
**Backups** - Allow customers to schedule backups of important application data. This could be done with a series of scripts that customers run on a certain schedule. Ensure that you've tested the restore functionality as well, backups with malfunctioning restore capabilities aren't going to get you very far.   

{{< note >}}
*This might appear to be a self-serving feature for us to focus on, we debated if we should even list it. However, since we thought it was important enough to build <a href="https://www.replicated.com">an entire company around</a>, we decided it was important enough to list here. Plus, there is no one better suited to talk about it than us.*
{{< /note >}}

## Examples
----   
{{< example title="GitHub Deployment Options" url="/github/deployment-options" image="/github/images/example.png" >}}
