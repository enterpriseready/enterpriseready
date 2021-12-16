+++
date = "2016-10-25T00:00:00Z"
title = "GDPR 202: Controllers, processors and subjects’ rights"
type = "gdpr"
metadescription = "An advanced analysis of the GDPR and how it will impact SaaS companies."
pagetitle = "EnterpriseReady: Advanced GDPR Analysis"
hero = "/images/gdpr/headers/gdpr-202.png"
ogimage = "images/gdpr/headers/gdpr-202.png"
+++

Perhaps you’ve read our introduction to [GDPR for SaaS companies](/gdpr/gdpr-saas) and decided you want to learn more, or perhaps you’ve already been thinking about GDPR but haven’t spent a lot of time analyzing what it might mean for your company. Here, we try to take things a little deeper, looking at some of the core concepts of GDPR compliance and how they might apply to SaaS companies, specifically.

Because there’s still much ambiguity in terms of exactly how certain aspects will be defined and adjudicated in practice, there are places where we present more questions than we do answers. However, it’s nonetheless important to be thinking about these topics and how you’ll address them, both technologically and contractually with your customers, vendors and partners.

## Are you a data controller or a data processor? The distinction matters a lot.

One of the major facets of GDPR is that no company processing personal data is free from liability for its protection and proper usage. The definition of processing encompasses everything from storage to behavioral analysis, so if you’re touching personal data in any way, really, you’ll want to act accordingly:

> [From Article 4](https://gdpr-info.eu/art-4-gdpr/): “[P]rocessing” means any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction

However, your exact role in the personal-data pipeline is critically important because of how the law assigns liability between data controllers and data processors. If you think you might be considered a controller under the GDPR, you’ll want to study the law very carefully. There are many requirements for controllers—especially around getting consent from data subjects, and providing data to / erasing data about data subjects—that are much different and much more laborious than what you might be accustomed to.

A [controller is defined](https://gdpr-info.eu/art-4-gdpr/) as the entity that “determines the purposes and means of the processing of personal data.” More often than not, that’s going to be the company dealing directly with data subjects and collecting the data for its own use, or contracting with other companies to collect data on its behalf. The controller is also going to be the party responsible for obtaining the proper consent from data subjects (for just about every single use of their data); providing information about other companies with which it will be shared; and responding to requests for data records, erasures and other rights afforded by GDPR.

A [processor is defined](https://gdpr-info.eu/art-4-gdpr/) as an entity that processes data on behalf of the controller. Many technology companies also use the term subprocessor to talk about the companies that they use to store or otherwise process personal data, but with which the controller does not have a contractual relationship. It might be easy to jump to the conclusion that most B2B SaaS vendors will primarily act as processors, but that’s not necessarily the case. In fact, most SaaS providers will almost certainly acting as a controller, at least for data they collect from their users or leads (or EU-based employees).

Let’s walk through a few examples to, hopefully, help clear up these terms:

* Users logs into her Intuit account to check out her personal budget situation on Mint. Intuit uses Mixpanel ([which had its own recent personal data situation](https://techcrunch.com/2018/02/05/mixpanel-passwords/)) to provide detailed website analytics. User is the data subject; Intuit is the controller; Mixpanel is the processor.
* User buys something online using PayPal. PayPal sends the details to Lattice Engines “to develop and optimize predictive models. User is the data subject; PayPal is the controller; Lattice Engines is the processor. ([Here’s a visualization](https://rebecca-ricks.com/paypal-data/) of the roughly [600 processors with which PayPal shares personal data](https://www.paypal.com/ie/webapps/mpp/ua/third-parties-list).)
* Your company based in the EU uses Slack for internal messaging. Slack collects users’ names, email addresses, phone numbers, activity logs and more, and stores and analyzes everything on AWS. Users are the data subjects; Slack is likely the controller for that data if it uses that data for internal purposes, but a processor for any personal data entered within messages themselves or shared as documents; your company is the controller for personal data entered via messages or shared as documents, and might be the controller for account info if Slack only stores emails, etc., on your behalf and doesn’t use that info for business processes; AWS is a subprocessor.
* Your company uses the Zendesk integration with Slack and an EU customer creates a ticket. This fires an alert with the ticket body and user’s name into your #support Slack channel. You are the controller; Zendesk and Slack are processors; AWS is a subprocessor. But, wait … hopefully that didn’t trigger an error for Zendesk and accidentally pipe that data into Rollbar, which would then become a subprocessor. Also, if Zendesk logged the IP address of your EU customer who visited their website into Loggly, it is now also a subprocessor.

As the last examples highlights, things can get pretty messy pretty fast, even for B2B SaaS companies whose businesses, on the surface, don’t have much to do with personal data. Every time you’re touching it, you’re doing so as a controller or processor (or subprocessor), with all the responsibilities each role entails.

For more on this topic specific to SaaS companies, [read this blog post by Twilio](https://www.twilio.com/blog/2017/10/gdpr-data-subjects-controllers-processors.html) laying out its views on this topic and explaining how companies—including Twilio—can be both data controllers and data processors.

### Being a controller means bearing more responsibility

The distinction between controller and processor matters so much not just because controllers are the one responsible for interacting with data subjects and all that entails, but also because [controllers are responsible](https://gdpr-info.eu/art-24-gdpr/) for ensuring that every processor they use complies with GDPR requirements around data privacy and security. Using processors that meet certain certifications or adhere to specific codes of conduct can help controllers meet this obligation, but controllers and processors also must enter into binding contracts around data usage:

> [From Article 28](https://gdpr-info.eu/art-28-gdpr/): Processing by a processor shall be governed by a contract or other legal act under Union or Member State law, that is binding on the processor with regard to the controller and that sets out the subject-matter and duration of the processing, the nature and purpose of the processing, the type of personal data and categories of data subjects and the obligations and rights of the controller.

Apart from fines [LINK] levied for things you might expect (e.g., negligent security practices or failing to get proper consent), controllers can also be fined for violations related to their contracts with data processors. Furthermore, controllers are on the hook for notifying data subjects of any breaches, wherever they happen across the supply chain.

### Being a processor still means bearing responsibility

That being said, things are not necessarily any simpler for data processors, which have their own set of rules to follow. For example, processors may not engage any additional processors (if you’re a SaaS company, this includes your IaaS provider) without written consent from the controller. Processors also need to manage their processors contractually and bear responsibility to the controller should their processors mess up:

> [From Article 28](https://gdpr-info.eu/art-28-gdpr/): Where a processor engages another processor for carrying out specific processing activities on behalf of the controller, the same data protection obligations as set out in the contract or other legal act between the controller and the processor as referred to in paragraph 3 shall be imposed on that other processor by way of a contract or other legal act under Union or Member State law, in particular providing sufficient guarantees to implement appropriate technical and organisational measures in such a manner that the processing will meet the requirements of this Regulation. Where that other processor fails to fulfil its data protection obligations, the initial processor shall remain fully liable to the controller for the performance of that other processor's obligations.

And although they’re not directly responsible for providing data records or other information to data subjects, data processors will be required to store and maintain in a format that makes such disclosures possible.

### What if…

There are also gray areas that GDPR doesn’t expressly cover, but which SaaS providers and their customers will certainly want to think about as they engage with other. Here are a couple:

* **What if customers share EU personal data without letting you know?** Your customer would almost shoulder the majority of liability in this case, but the GDPR is unclear about proper protocol should a SaaS provider discover protected data on its systems. Does an acknowledgement of the personal data constitute constructive notice, at which point your company is required to act under GDPR requirements even if your customer refuses to?
* **How do APIs fit into the picture?** The [controversy over Facebook’s API access and data-sharing policies](https://www.theverge.com/2018/3/21/17147600/mark-zuckerberg-facebook-cambridge-analytica) should also give SaaS companies something the think about. Even if you don’t directly share data with third parties without customer consent, customers may use your APIs to integrate with any number of external services that will then process personal data, or just download data themselves onto their laptops. Who owns those relationships? And is providing a means of data-sharing with a potentially unlimited number of other products really a best practice for data security?

Language in customer contracts or licenses could help protect against this scenario by making users confirm they will only use a product for certain types of data or communication, and by making them assume liability for any use of personal data beyond that scope. You can get an example of how this might look from the Salesforce [Data Processing Addendum](https://www.salesforce.com/content/dam/web/en_us/www/documents/legal/Agreements/data-processing-addendum.pdf) (and many others in our collection of SaaS-company GDPR policies) that covers the various relationships and liabilities among Salesforce, its customers, and its subcontractors with regard to GDPR and other country-specific laws.

## Compliance, administratively

As noted in the introduction, the GDPR is a vast regulation containing many specific rules to follow, and many guidelines—especially around concepts such as data security ([Article 32](https://gdpr-info.eu/art-32-gdpr/))—that offer suggestions but no prescriptive measures for compliance. Some of the areas you’ll definitely want to assess include:

* How clearly you’re explaining your data-processing activities to data subjects, and whether you’re **obtaining express consent** for each purpose. Note that opt-out consent forms will not fly. ([Article 7](https://gdpr-info.eu/art-7-gdpr/))
* **How much data you actually need** to fulfill a specific purpose. The GDPR mandates that companies don’t collect more data than they need, process data more than required or store data longer than necessary. ([Article 5](https://gdpr-info.eu/art-5-gdpr/))
* How anonymized and/or encrypted your user data actually is. Truly **anonymous data** is not subject to GDPR requirements but “pseudonymous” data—that “which could be attributed to a natural person by the use of additional information—is subject to GDPR requirements. ([Recital 26](https://gdpr-info.eu/recitals/no-26/)) However, the GDPR still does encourage pseudonymization.
* Whether your company is required to appoint a **representative** located within the EU. ([Article 27](https://gdpr-info.eu/art-27-gdpr/))
* Whether your company is required to appoint a **data protection officer**. ([Article 37](https://gdpr-info.eu/art-37-gdpr/))
* The **specificity of record-keeping** required around how data is used and with whom it will be shared. Controllers and processors with less than 250 employees don’t have to comply with some of the more-stringent requirements, unless their data-processing “is likely to result in a risk to the rights and freedoms of data subjects ... is not occasional, or ... includes special categories of data.” ([Article 30](https://gdpr-info.eu/art-30-gdpr/))
* Whether your relationships with data subjects provide a **legitimate interest** under which personal data may be processed without express consent. ([Article 6](https://gdpr-info.eu/art-6-gdpr/)) The law is vague on when this might apply, outside of in the case of emergencies, cybersecurity and other non-standard situations, but does caution that “the existence of a legitimate interest would need careful assessment.” ([Recital 47](https://gdpr-info.eu/recitals/no-47/))

For a concrete example of GDPR data-minimization in action, here is the partial text of an email that Intercom recently sent to all of its customers:

> I’m writing to let you know about an upcoming change to the way we store Visitor data in Intercom, coming into effect on **May 11th, 2018**.

> **What’s changing**

> In preparation for the new EU General Data Protection Regulation (GDPR), we will now be **expiring Visitor data once a Visitor has not been seen for nine months**.
> This means that from **May 11th, 2018**:

>> * We will automatically delete the IP and location of visitors who have not visited your site in 9 months.
* If a visitor returns after 9 months they will be treated like a new visitor. There will be no record of previous visitor auto messages or conversations.

> This change only impacts [Visitor data](https://via.intercom-mail-100.com/e?ob=3m6TmtvTmKFEMLzPv3TR7XkAtGe%2BjrI67hpE8ghB%2B%2Bp0A7%2FEk0GtMZa8tw0fUm1efsuO%2B0jPjx4DYB%2BHqwe%2BAv6jzFztNFaGpFd90LbVUBRongarCNWW1DUgrBShOxkh3Ec08MTA4B%2FZtFTqSt0EFl3ew2kbg%2FeUtLKGYkptt57YwqRnbQTBnKGxvt22Z206&h=2ce6e789ab7cbc9e9f2d2909b16465667b3683b1-15668737682) – all other data is unaffected. Note, while GDPR is an EU regulation, it ultimately affects any business with customers in the EU which is why we are applying these changes globally across our entire customer base.  


## Compliance, technologically
Technologically speaking, one of the bigger hurdles to compliance might be designing your data architectures so that you can easily provide information to data subjects should they request it. It’s technically the job of data controllers to supply this information, but where processors are involved, they’ll be required to supply it to controllers.

Here’s what the GDPR allows for data subjects to demand from controllers (note that clause (h) refers to algorithms, machine learning models and any “automated decision-making”):

> [From Article 15](https://gdpr-info.eu/art-15-gdpr/):

> 1) The data subject shall have the right to obtain from the controller confirmation as to whether or not personal data concerning him or her are being processed, and where that is the case, access to the personal data and the following information:

>> a. the purposes of the processing;

>> b. the categories of personal data concerned;

>> c. the recipients or categories of recipient to whom the personal data have been or will be disclosed, in particular recipients in third countries or international organisations;

>> d. where possible, the envisaged period for which the personal data will be stored, or, if not possible, the criteria used to determine that period;

>> e. the existence of the right to request from the controller rectification or erasure of personal data or restriction of processing of personal data concerning the data subject or to object to such processing;

>> f. the right to lodge a complaint with a supervisory authority;

>> g. where the personal data are not collected from the data subject, any available information as to their source;

>> h. the existence of automated decision-making, including profiling, referred to in Article 22(1) and (4) and, at least in those cases, meaningful information about the logic involved, as well as the significance and the envisaged consequences of such processing for the data subject.

> 2) Where personal data are transferred to a third country or to an international organisation, the data subject shall have the right to be informed of the appropriate safeguards pursuant to Article 46 relating to the transfer.

> 3) The controller shall provide a copy of the personal data undergoing processing.

(You can also get a sense of the scope in [this admittedly played-up sample letter](https://www.linkedin.com/pulse/nightmare-letter-subject-access-request-under-gdpr-karbaliotis/) posted by a PricewaterhouseCoopers consultant on LinkedIn.)

Any personal data delivered to data subjects must be delivered in “a structured, commonly used and machine-readable format,” in part so that data can easily be transferred from one controller to another should the subject so desire. The GDPR calls this the “right to data portability.” ([Article 20](https://gdpr-info.eu/art-20-gdpr/))

Data subjects can also demand that controllers **correct inaccurate data** about them ([Article 16](https://gdpr-info.eu/art-16-gdpr/)) and, in certain cases, **erase** ([Article 17](https://gdpr-info.eu/art-17-gdpr/)) or **restrict** ([Article 18](https://gdpr-info.eu/art-18-gdpr/)) the processing of their personal data. Where personal data is being used for **direct marketing**, data subjects can object at any time and controllers must stop processing said data for that purpose. ([Article 21](https://gdpr-info.eu/art-21-gdpr/))

If these seem like unlikely circumstances, don’t be so sure. Since the EU implemented a right to be forgotten in search results in 2014, [Google claims it has received more than 650,000 requests](https://www.npr.org/sections/thetwo-way/2018/02/28/589411543/google-received-650-000-right-to-be-forgotten-requests-since-2014), to remove more than 2.3 million URLs in all, from its results. It removed about 43 percent of them. In [a recent survey of U.S. consumers](http://www.zdnet.com/article/beware-marketers-the-consumer-data-collection-blowback-is-just-starting/), 69 percent said they don’t believe companies are doing all they can to protect user data, and 93 percent said they should be able to delete their online data when they want to.

## More reading
Convinced that GDPR will matter to your company and looking for some more guidance on how and where it might apply, or how other SaaS companies are thinking about it? You can check out some of our other pieces on this topic:

1. [What is GDPR and why should I care?](/gdpr/what-is-gdpr)
1. [How GDPR might affect the SaaS industry](/gdpr/gdpr-saas)
1. [How SaaS providers are preparing for GDPR](/gdpr/preparing-for-gdpr)
1. [How to read the full-text GDPR](/gdpr/how-to-read-gdpr)
1. [Other Useful GDPR Links](/gdpr/useful-gdpr-links)
