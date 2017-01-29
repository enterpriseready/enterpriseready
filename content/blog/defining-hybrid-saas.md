+++
date = "2016-11-20T00:00:00Z"
title = "Defining Hybrid SaaS"
type = "breakdown"
company = "Defining Hybrid SaaS"
metadescription = "What does hybrid cloud mean? How do we clearly define on-prem, private cloud, public cloud, etc"
pagetitle = "Defining Hybrid SaaS"
+++

## Work in progress

I think that a broad definition of Hybrid Cloud is... you run a consumer website... you host your application in a data center where you control the servers, but you have the ability to "burst" onto a public cloud for excess capacity. This feels less relevant for software you purchase.
This is possible with privately hosted SaaS applications but not that common.

When it comes to hybrid cloud for running enterprise software, it is first important to define these four terms:

"On-prem" (aka on-premises or on-premise) - this means you 1) physically own the hardware  2) you manage the hardware 3)  you control the OS & the applications you run 4) Machines are accessible via your private network.

"Managed Datacenter" 1) you own the hardware 2) you outsource the maintenance of the hardware 3)  you control the OS & the applications you run 4) Machines are accessible via your private network.

"Private Cloud" 1) you do not own the hardware 2) hardware maintenance is done by IaaS provider 3) you control the OS & the applications you run 4) machines are accessible on your private network

"Public Cloud" 1) you do not own the hardware 2) hardware maintenance is done by application owner (maybe outsourced to IaaS)  3) you do not control the OS or the applications that are run 4) machines are accessible on the public internet

So hybrid would be some version of hybrid ownership of hardware/software with the application provider... generally by creating single tenant architecture that is then connected to both parties private networks.

2 different models of SaaS hybrid cloud solutions:

1) The application provider spins up a single tenant version of the application & restricts it's access to your IP range (basically adding it to your private network). The data storage & processing resides in the application providers infrastructure... they're responsible for maintaining updates, uptime etc.

2) The application provider spins up a single tenant version of the application & restricts it's access to your IP range (basically adding it to your private network). Only the processing resides in the application providers infrastructure... they're responsible for maintaining updates, uptime etc. But the data is stored in your on-prem/managed-datacenter/private-cloud and is accessed by the application provider's cloud.

A separate but related option is Enterprise Key Management... which Box is doing and it basically moves control of encryption keys to customer controlled hardware.
