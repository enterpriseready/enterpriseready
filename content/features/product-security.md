+++
date = "2016-10-25T00:00:00Z"
title = "Product Security"
features = ["product-security"]
type = "feature"
hero = "/images/product-security.svg"
+++

Security is an incredibly deep topic to address. Many of the other EnterpriseReady features are closely related to security. For SaaS companies working with larger enterprise IT buyers it is incredibly important for this to be an area of strength. Most enterprises will provide potential software vendors with long third-party [vendor security questionnaires](https://www.vendorsecurityalliance.org/questions). These documents generally cover a broad range of security topics including physical office security, employee screening, office network security, business continuity, upstream vendor security, disaster recovery, data security, secure IT policy, asset security, data center security in order to evaluate the overall security posture of an organization.

For the purpose of this guide we’re going to focus on product related security issues. These be broken into 3 primary categories of development security, ops security and product security. We also recommend a detailed review of the [security controls recommended by OWASP](https://www.owasp.org/index.php/Category:Control).

## Development
**Secure development**  
**Code reviews** By ensuring that at least two pairs of eyes are looking at every line of code, rouge actors are deterred.  
**Static code analysis** - Leveraging automated tools to inspect code changes for vulnerabilities.  
**Dev environments** -  
**Product architecture**  
**Encryption Primitives** - ensure that encryption methods are not “homegrown”. Use industry defined standards.  
**Continuous threat modeling**  
**Feature security design reviews**  

## Ops
**Devops security** -
**Automation** - reproducibility is key to ensuring consistent and intended environments by removing opportunity for human error.
**Vaults** leverage vaults to store server credentials, (amazon kvs, hashicorp vault)
**Network security** - TLS all the things (including internal server-to-server communication), VPC, VPN, Hosted Zones, limit public IP addresses on servers to web servers,
**Intrusion security** - SignalSciences
**DDOS prevention** - Cloudflare
**Server security** - private networks, patching,
**Data security** - Encryption, least privilege, deletion, auditing use of privileges
**Separation of roles** - The same person can do all things, they just need to maintain different roles
**Leverage trusted images** - If using Docker, enable Content Trust to ensure the image lifecycle is securely managed
**Monitoring** -

## Product
**Password security** - storage (bcrypt), strength, expiration, reuse, reset policy, 2 factor
**API Tokens** - should be treated as securely as passwords
**Sessions** - manage sessions, if account deleted end all exisiting sessions
**Client side** - if you’re storing client side information use JWT or another provably secure method
**API Rate Limiting** - particularly on failed and unauthenticated requests
**Secure defaults** - out of the box security, defaults should be set to keep data private etc,
**Demonstrable security** - certifications, audits, pen-tests, documentation, addressing security forms, white papers,

**Hints**

1. Seed random numbers with `now()`
