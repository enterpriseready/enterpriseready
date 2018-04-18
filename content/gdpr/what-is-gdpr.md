+++
date = "2016-10-25T00:00:00Z"
title = "What is GDPR and why should I care?"
type = "gdpr"
metadescription = "A basic overview of GDPR and how it will impact SaaS companies."
pagetitle = "EnterpriseReady: GDPR SaaS Basics"
hero = "/images/gdpr/headers/gdpr-101.png"
ogimage = "/images/gdpr/headers/gdpr-101.png"
+++

The European Union’s [General Data Protection Regulation (GDPR)](https://www.eugdpr.org/) takes effect on May 25, 2018, and is rife with provisions that will impact the way in which SaaS vendors and their customers interact with each other. While it might be a big win for private citizens seeking some sovereignty over their personal information, it will undoubtedly make life at least a little trickier for every company doing business in the EU, employing EU citizens, handling the personal data of European citizens or doing business with companies who do business in the EU.

Boiled down to its essence, GDPR mandates that any companies storing data about European citizens will need to keep a close eye on their data-privacy practices—as well as those of their vendors and their vendors’ vendors—in order to ensure personal data is being handled within the confines of the new law. Those confines range from proper disclosure to citizens about how their data is being used to reasonable techniques for keeping that data secure. GDPR also places strict timelines on disclosure of data breaches and, in some cases, mandates the appointment of a data protection officer.

If you find yourself asking why you should plan for GDPR at all rather than just assuming it won’t affect you, perhaps a look at the types of fines it imposes will help you care a little more. Yes, these are maximum fines subject to a number of mitigating factors, but they should still be a bit jarring ([from Article 83](https://gdpr-info.eu/art-83-gdpr/)):

>  * Infringements of certain administrative requirements can warrant fines of up to €10 million or, in the case of an undertaking, 2 percent of annual worldwide turnover of the preceding financial year, whichever is higher.

> * Infringements of requirements around data protection and data subjects’ rights can warrant fines of up to €20 million or, in the case of an undertaking, 4 percent of annual worldwide turnover of the preceding financial year, **whichever is higher**.

Let’s dive a little deeper into the law itself and how it could affect the SaaS industry not just in Europe, but also for international companies doing business with European companies or consumers. There is a lot to consider, which we do in some other pieces, but we’ll try to hit the main highlights here.

## Does your company need to care about GDPR?

**If you’re serving users, customers or employees based in Europe, the short answer is “yes.”** It really doesn’t matter where your company is based or where your data is stored. Here’s how the law explains this topic for companies operating out of the EU:

> This Regulation applies to the processing of personal data in the context of the activities of an establishment of a controller or a processor in the Union, regardless of whether the processing takes place in the Union or not.

Basically, if you’re based in the EU or have an office there, you should assume that GDPR applies to the business you’re doing there.

**Based in the United States (or anyplace else) but providing a service directly to European customers? GDPR most likely applies to you, too.** The law leaves some leeway in the B2C space (for example, just having a website that’s accessible in the EU isn’t enough to invoke GDPR), but it probably will be difficult to argue that GDPR doesn’t apply to B2B SaaS services, especially if there’s any type of sales engagement or customer support involved. Here’s the actual text from the law:

> This Regulation applies to the processing of personal data of data subjects who are in the Union by a controller or processor not established in the Union, where the processing activities are related to:

>> (a)  the offering of goods or services, irrespective of whether a payment of the data subject is required, to such data subjects in the Union; or

>> (b)  the monitoring of their behaviour as far as their behaviour takes place within the Union.

[Here’s the full text of the section (Article 3) addressing territorial scope](https://gdpr-info.eu/art-3-gdpr/).

Thankfully, the recitals preceding the official bill text offer a little more color on how you should interpret “offering of goods or services” and “monitoring of their behavior.” If you’re going to directly collect data from users, you’ll probably want to have your attorney parse these sections carefully. However, **a big caveat for B2B SaaS providers is that if your customers’ data is governed by GDPR, then you need to be GDPR-compliant**, as well (more on that later):

> From [Recital 23](https://gdpr-info.eu/recitals/no-23/): [T]he processing of personal data of data subjects who are in the Union by a controller or a processor not established in the Union should be subject to this Regulation where the processing activities are related to offering goods or services to such data subjects irrespective of whether connected to a payment. In order to determine whether such a controller or processor is offering goods or services to data subjects who are in the Union, it should be ascertained whether it is apparent that the controller or processor envisages offering services to data subjects in one or more Member States in the Union. Whereas the mere accessibility of the controller's, processor's or an intermediary's website in the Union, of an email address or of other contact details, or the use of a language generally used in the third country where the controller is established, is insufficient to ascertain such intention, factors such as the use of a language or a currency generally used in one or more Member States with the possibility of ordering goods and services in that other language, or the mentioning of customers or users who are in the Union, may make it apparent that the controller envisages offering goods or services to data subjects in the Union.

> ...

> [Recital 24](https://gdpr-info.eu/recitals/no-24/): The processing of personal data of data subjects who are in the Union by a controller or processor not established in the Union should also be subject to this Regulation when it is related to the monitoring of the behaviour of such data subjects in so far as their behaviour takes place within the Union. In order to determine whether a processing activity can be considered to monitor the behaviour of data subjects, it should be ascertained whether natural persons are tracked on the internet including potential subsequent use of personal data processing techniques which consist of profiling a natural person, particularly in order to take decisions concerning her or him or for analysing or predicting her or his personal preferences, behaviours and attitudes.

There’s also **the issue of employee data** ([Article 88](https://gdpr-info.eu/art-88-gdpr/)), which any company hiring EU citizens will certainly keep on file and very possibly share with third parties (e.g., for various HR functions). Employees have the same general rights as other EU citizens under GDPR, which means employers should be prepared to meet GDPR requirements around transparency, data access, the right to be forgotten, and other rights the law provides. However, the GDPR does allow for EU member countries to enact more specific rules regarding employee data. So there’s a baseline set of rules that apply everywhere, but certain countries might grant employees even more rights, or enact stricter controls on employers. Additionally, the Working Party established by the [EU DPD](https://en.wikipedia.org/wiki/Data_Protection_Directive) (basically the predecessor to the GDPR) provided an [opinion on data processing at work](http://ec.europa.eu/newsroom/article29/item-detail.cfm?item_id=610169) that suggests that EU employees have a right to privacy while at work.

## What is ‘personal data’
So, you’ve decided that GDPR is going to affect your business. The next thing you’ll want to familiarize yourself with is the type of data GDPR protects: “personal data” about “natural persons” (i.e., not entities, such as corporations, that might be considered legal persons). But don’t let any legalese fool you—GDPR covers pretty much every common method by which websites or applications might collect data about their users:

> [From Article 4](https://gdpr-info.eu/art-4-gdpr/): “[P]ersonal data” means any information relating to an identified or identifiable natural person (“data subject”); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.”

With regard to online identifiers, the bill explains that

> [Recital 30](https://gdpr-info.eu/recitals/no-30/): Natural persons may be associated with online identifiers provided by their devices, applications, tools and protocols, such as internet protocol addresses, cookie identifiers or other identifiers such as radio frequency identification tags. This may leave traces which, in particular when combined with unique identifiers and other information received by the servers, may be used to create profiles of the natural persons and identify them.

**If you’re storing people’s names, or even their IP addresses, you’re dealing with personal data.**

## Re: GDPR, it’s good to not be Facebook

If there’s a silver lining to GDPR from the perspective of a SaaS company, it’s that companies not dealing in personal data as a core part of their businesses should have less exposure to liability and certain GDPR requirements. Providing a code-management platform a la GitHub? Apart from usernames, passwords and IP addresses (and maybe employee data), you probably don’t have a lot of user data subject to GDPR requirements (though you should still take the steps to comply). Going the DeepMind route and analyzing patient data for hospitals? Well, that’s another story altogether ...

The law provides a number of guidelines for dealing **certain types of sensitive or potentially discriminatory data**, ranging from medical records to criminal convictions to race. You definitely should examine the text more closely to see how GDPR might treat the types of data you’re dealing with, but a general rule is that the more sensitive the data or the more likely it could be used to discriminate against subjects, the more safeguards and limitations you should put in place around how it’s shared, processed and secured.

There’s also one passage from the law’s recitals (or preamble) that’s quite interesting given the popularity of artificial intelligence and computer vision services, in particular:

> [From Recital 51](https://gdpr-info.eu/recitals/no-51/): The processing of photographs should not systematically be considered to be processing of special categories of personal data as they are covered by the definition of biometric data only when processed through a specific technical means allowing the unique identification or authentication of a natural person.

We read this as, “If you’re providing a basic photo-storage service, those photos don’t necessarily merit any special protection. But if you’re offering any type of service around facial recognition or other means of identifying who’s in the photos, you’ll want to take extra steps to keep that data private.”

## More reading
Convinced that GDPR will matter to your company and looking for some more guidance on how and where it might apply, or how other SaaS companies are thinking about it? You can check out some of our other pieces on this topic:

1. [GDPR 202: Controllers, processors and subjects’ rights](/gdpr/gdpr-202)
1. [How GDPR might affect the SaaS industry](/gdpr/gdpr-saas)
1. [How SaaS providers are preparing for GDPR](/gdpr/preparing-for-gdpr)
1. [How to read the full-text GDPR](/gdpr/how-to-read-gdpr)
1. [Other Useful GDPR Links](/gdpr/useful-gdpr-links)
