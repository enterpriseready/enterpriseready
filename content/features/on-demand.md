+++
date = "2021-08-13T00:00:00Z"
title = "Environments On Demand"
featuresslug = "ondemand"
type = "feature"
hero = "/images/headers/ondemand.png"
metadescription = ""
pagetitle = "Environments On Demand"
ogimage = "/images/headers/ondemand.png"
+++

Ephemeral environments, when set up the right way, function independently of your infrastructure team or any one person in charge. They prevent blocks by allowing your teams to collaborate asynchronously.


## Break things, don't block things
- ephemeral environments are intrinsically isolated environments
- by keeping your environments isolated, they can run independently of each other
- decoupling your dependencies will prevent your environments from breaking other environments
- isolated environments allow each member to test features independently without worrying about blocking other team members if anything goes awry


## Asynchronous collaboration
- for developer teams, ephemeral environments should be created and updated with every new code commit
- once the code is pushed, another developer can perform a code review on the active environment at their own convenience
- since ephemeral environments are on demand, nobody needs to set anything up with the environment between these two stages
- this applies to other teams as well -- for example, product and QA will also be able to instantly access the environments without scheduling or coordinating with other teams



## Automating your environments
- in order to have ephemeral environments ready when needed, your SRE or DevOps team should automate the process
- by having automated environments, your developers won't need to ping anyone in order to deploy any code changes
- this way, environments are ready right when your teams need them, so the pipeline does not slow down and each team member can work independently





----
### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
