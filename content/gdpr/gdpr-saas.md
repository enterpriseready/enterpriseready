+++
date = "2016-10-25T00:00:00Z"
title = "How GDPR might affect the SaaS industry"
type = "gdpr"
+++

Beyond the additional technical, contractual and ethical changes required to comply with GDPR (for more info, see our [introduction to GDPR](/gdpr) and our explanation of some key concepts), it’s unclear exactly how the sweeping new European Union will play out in practice. For example, on the most foundational level, nobody is quite sure how strictly certain requirements will be enforced, or how harsh the actual penalties will be.

However, it seems plausible that one of the unintended consequences of GDPR could be a contraction in the market for SaaS in the EU. This could be spurred by large data controllers (in particular, B2C companies) trying to minimize their exposure to liability, as well as by B2B SaaS providers trying to do the same.

## More providers, more problems
Think for a second about a standard large enterprise, [acting as a data controller](https://gdpr-info.eu/art-24-gdpr/) under GDPR, and using several hundred, or even a thousand, SaaS applications. Every one of those that touches personal data is another [processor](https://gdpr-info.eu/art-28-gdpr/) to manage, per GDPR, and [another avenue for something to go wrong](https://blog.replicated.com/lashing-your-attack-surface-saas/). Additionally, data processors probably use their own subprocessors, and the controller is ultimately responsible for their data-privacy practices, as well.

All it takes is a software bug or a successful phishing email in an environment that enterprise doesn’t control, and it’s on the hook for meeting data-breach-disclosure requirements; proving it’s not to blame; and, if necessary, enforcing its indemnification clauses against its SaaS vendor. If this happens multiple times per year, that company is staring down a mountain of legal bills, PR cycles and other headaches. For risk-averse companies, limiting their exposure by managing as much as possible themselves might well look like the best option.

This isn’t a matter of feeling sorry for companies because they have to take seriously personal-data privacy. It’s also not a suggestion that companies wouldn’t go through many of these steps anyhow in the case of a data breach that didn’t invoke GDPR. But it is an acknowledgement of financial realities that come from having certain requirements, timelines and processes codified in law by a governmental body with a history of [enforcement](https://epic.org/privacy/right-to-be-forgotten/), and attached to fines of [up to 4 percent of annual revenue](https://gdpr-info.eu/art-83-gdpr/).

## Centralized platforms mean extra pain for processors
In some ways, though, GDPR could prove even more painful for SaaS companies acting as data processors than for their customers acting as data controllers. Not only must processors deal with the same issues around disclosure and liability should one of their subprocessors mess up, but they also have the added burden of being the single point of failure for their entire customer bases.

If you’re a SaaS provider operating under GDPR, processing more customer data means potentially opening yourself up to lots of legal action should you mess up. Think about the case of [Mixpanel’s recent password-slurping bug](https://techcrunch.com/2018/02/05/mixpanel-passwords/), which resulted in the accidental collection usernames and passwords for a not-insignificant percentage of Mixpanel’s customers. Had GDPR been in effect (and depending on the exact details of that situation, of course), it could be on the hook for fines related to its data-protection practices, as well as to every one of its customers/controllers whose users’ data was unintentionally exposed. That would be daunting enough for a large SaaS provider, but could be devastating for a startup or mid-sized company.

SaaS providers also have an additional impetus of reducing the operational complexity that GDPR will foist upon them. Today, you’re going about your business using reasonable security practices and promising best-effort support for your customers. Tomorrow, you’re contractually obligated to meet certain requirements around data privacy, security and access, and to demand the same contractual obligations from any companies you might use—including your cloud providers.

Some of this can be accomplished via standard terms of service and [what the industry calls Data Processing Amendments](https://c1.sfdcstatic.com/content/dam/web/en_us/www/documents/data-processing-addendum.pdf), but there’s no automating actual compliance. Data architectures and business logic might need to change, security/privacy certifications might have to be obtained, and legal actions might have to be litigated.

## What’s the answer?
The least you can do if you’re a SaaS provider is to closely study the GDPR and figure out how you’ll need to adapt your business and data-privacy practices in order to comply with it. At a minimum, that might require drafting new consent forms, terms of service and DPAs, and making sure your service is able to handle any data deletions, changes or whatever else your customers need in order to be GDPR-compliant. Most likely,

You’ll also want to do an audit of your own data practices to ensure you’re adequately minimizing collection and processing, and those of any subprocessors you use. They will also need to meet GDPR requirements around privacy and security, and be able to handle any data modifications you’re required to make on a customer’s behalf. You’ll also need to create a list of subprocessors to share with customers ([many companies publish this on their websites](/gdpr/preparing-for-gdpr)).

Or maybe you go a few steps further and begin offering on-premises installations, in order to give customers more control while also limiting your liability as a processor. Your product will still need to support GDPR capabilities around data management and deletion (at least, if you want anybody to buy it), but you should be largely free of the liability that comes from actually processing EU Citizens' personal data yourself. Also, your customers don’t have to worry so much about how your company is handling their data, or at all about how your subprocessors are handling their data on your behalf.

Discussions like this might seem like overkill—and maybe they are—but the truth is that we don’t yet know what the long-term effects of GDPR will be. The one thing we do know is that GDPR is going to change the way that companies collect and manage personal data. It’s better to start thinking about how that will affect the SaaS industry today, and being proactive in addressing any concerns, than to wait until you’re forced to by customers or by law.

## More reading
Convinced that GDPR will matter to your company and looking for some more guidance on how and where it might apply, or how other SaaS companies are thinking about it? You can check out some of our other pieces on this topic:

1. [What is GDPR and why should I care?](/gdpr)
1. [GDPR 202: Controllers, processors and subjects’ rights](/gdpr/gdpr-202)
1. [How SaaS providers are preparing for GDPR](/gdpr/preparing-for-gdpr)
1. [How to read the full-text GDPR](/gdpr/how-to-read-gdpr)
1. [Other Useful GDPR Links](/gdpr/useful-gdpr-links)
