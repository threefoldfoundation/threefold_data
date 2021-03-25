---
id: threefold_foundation_30
title: Zero People IT is the Future
tags: [technology, threefold_cloud]
ategory: [tech, cloud]
image: ./zero_people.png
image_caption: future
excerpt: Classic IT infrastructure setup is complex and is not cost-effective. Applications need a specific environment to operate in, built by integrating different technology components from different vendors. Elements of such a setup are operating systems, storage systems, networks, security systems, authentication systems, and more.
authors: [weynand_kuijpers]
created: 2020-08-17
---

## Introduction

### The "cost" of complexity in traditional IT

Classic IT infrastructure setup is complex and is not cost-effective. Applications need a specific environment to operate in, built by integrating different technology components from different vendors. Elements of such a setup are operating systems, storage systems, networks, security systems, authentication systems, and more.   
<br/>
<br/>
Putting components together is called (system) integration, and integration requires agreement on how these components will fit together and the knowledge to do it.
<br/>
<br/>
This complexity and need for integration originate from the way the IT industry historically developed. With time more and more layers appeared to bring new possibilities. Additional layers masked existing problems. Instead of fixing the underlying issues, several third parties needed to be involved, adding complexity and increased costs (such as license costs, upgrades, updates, etc.). Complexity has become a business model.

## Where can we get inspiration to do it a different way?

What if we could build IT architectures in a different way.  What if we would not accept component solution approaches anymore and start over with a completely blank sheet of paper?  Would we then come up with a different way of actually building automation, architectures, and business models?

### Looking at nature for inspiration

Let's start by looking for inspiration in nature. Suppose we consider IT systems to be a complex system. Are there parallels that we can draw between systems that exist in nature (and have evolved and improved over thousands of years) and those within the IT industry?
<br/>
<br/>
In nature, we see two kinds of systems (societies): centralized and decentralized systems.  Examples of centralized systems are herds, groups, or schools of animals living together where there is a hierarchy in the way they organize themselves. For decentralized systems, we can look at beehives and anthills.  Organizing efforts and benefits are distinct and come at a different cost.

### Centralized systems in nature

In centralized systems, there is governance of activities, wealth positions, and so forth.  Think of a group of lions or chimpanzees.  There is always an alpha male who is dominant in the whole group.  He is the only that enjoys all of the benefits because the entire group/structure works towards his wishes.  He gets to mate with most female group members because the system believes that he has the strongest genes to help the group to survive in the future. The dominant male also gets most of the food gathered by the group, and if he doesn't get it, he will claim it by showing his dominance and fight for it.  All the others are working towards this alpha male, and all the other males in the group will occasionally challenge the alpha male for dominance.  
<br/>
<br/>
This is very similar to how the IT industry has been operating to date:  there are a few alpha males in the industry - one for each sector that can be recognized (for example, in the Cloud Industry, you have Amazon, Google, Microsoft, and on the system integration front you have Dell, Siemens, CA Technologies).  They end up with the majority of businesses available in their specific markets. When challenged by new companies, they fight them (in every way possible, including killing them or acquiring them). And in analogy to the animal group, these alpha male companies have a lot of organizations that work with them, usually called "partners" or "channels."

### Decentralized systems in nature

For decentralized systems on [Wikipedia](https://en.wikipedia.org/wiki/Decentralised_system), we learn; "One of the most well-known examples of a "natural" decentralized system is one used by insect colonies such as Ants. In these insect colonies, control is distributed among the biological agents who act upon local information and local interactions to create complex and universal behavior collectively. While individually exhibiting simple behaviors, these agents achieve universal goals such as feeding the colony or raising the brood using dynamical mechanisms like non-explicit communication and exploiting their closely coupled action and perception systems. Without any form of central authority, these insect colonies achieve their universal goals by performing required tasks and by responding to changing conditions in their external environment. They also adjust the number of workers performing each task to ensure the completion of all tasks. For example, ant colonies guide their global behavior (in terms of foraging, patrolling, brood care, and nest maintenance) using a pulsing, shifting web of Spatio-temporal patterned interactions that rely on antennal contact rate and olfactory sensing. While these interactions consist of both interactions with the environment and each other, ants do not direct the behavior of other ants. They thus never have a "central controller" dictating what is to be done to achieve global goals."
<br/>
<br/>
So nature has provided us with solid examples of centralized and decentralized systems.  For much of what works in the modern world, we have ended up using the centralized model governing enterprises and countries.  Various industries have also adopted the centralized model where there is a pyramid structure, and everything works towards the alpha males.

## A different approach to creating and operating IT workloads

What if we can develop a new concept for creating, deploying, and operating IT workloads.  What if we say goodbye to the centralized way of controlling IT workloads.  Can we develop an idea that works in a decentralized way?

### The concept

To build this concept, we will draw the use of the human way of operating a large ship. The crew of a vessel has different roles, which we will call the *coordinators*. Some of these coordinators could be a captain, officers, engineers, and oilers.  These coordinators have in-depth knowledge of their specific tasks but usually lack a detailed understanding of the other roles. In the "hive" of a ship, the specific requests to get tasks done are sent to coordinators who will receive, interpret, execute their particular tasks, and report the (non-) progress of these tasks or subtasks.  For example, the captain will create and agree to a schedule of maintenance tasks for the engine room. These are daily, weekly and monthly tasks that should be completed by the engineers and oilers. The engineers and oilers do not get continuous input from the captain. They get one instruction to follow the schedule and know what needs to be done for every task. The intermediate state (what is complete and what still needs to be addressed) is stored by the coordinators executing the tasks. This is the most efficient way of accomplishing tasks.

### Jumping to the IT industry

If we bring this concept to the IT world, we conclude that today's IT systems are built in a significantly different way.  Most architectures (if not all) have a central facility that stores *all* information and *all* states of activity in a so-called central 'database.' A general norm within IT. However, these types of architectures are inefficient and are very complex - like the ship analogy -  a central command room (database) is created where every coordinator needs to report back. (1) The current level of activity, (2) the completion (state) of tasks, (3) the proper understanding of upcoming tasks by the coordinator to accomplish tasks in-progress or future - hence leading to the undesirable outcome of complexity due to centralization. 
<br/>
<br/>
In the ship example, we deem this type of functioning/workflow inefficient; however, in the IT world, it is a common way of doing it.  Furthermore, IT infrastructures usually have different databases to store "state" in different parts of the IT architecture.  The analogy would translate to different command rooms that orchestrate different functions on the ship in our ship. This, in turn, introduces the need for another role in starting coordinating between the different command rooms to ensure that all information is shared and communicated. Taking this pattern forward leads to an endless loop of adding interfaces, layers, bridges between different parts of the system that all store information, multiple times, and in different ways.  

### Datastores

By design, a decentralized IT  architecture should not use centralized data storage (databases) for multiple tasks (roles). It instead should feature a similar approach to the way of functioning as in the 'ship' example. In this architecture,  roles get short and precise instructions of the jobs to be completed and autonomously execute.  We call these execution engines *coordinators*.  Coordinators receive instructions, run on instructions and store all information about the current task *locally.*  They store all the relevant information in a local storage facility (available to the individual coordinators only) and provide information about the state of execution if and when other coordinators ask for a state update.

## Magical Coordinator

### Requirements to let actor based management work
<br/>
<br/>
* Less complexity

* State only with the actor itself (no-where else !!!)

* Understood language between actors 

* Process = recipes of a cook, NOT IN A DB
<br/>
<br/>

## Actor based IT solutions 

To simplify common IT architectures, we should look at a   new way of creating such a system that takes the current standards into account:
<br/>
<br/>
* No people involved in integrating different components into a single solution

    * Which, as a consequence, means no revenue generation based on creating and managing complexity.

* No central state / operational data storage

* Individual automated actors with specific knowledge for specific tasks

* Independent operating actors completing specific tasks
<br/>
<br/>
Such a system should ideally be owned by many (not just a single organization, bringing centralization back into the equations) that operate IT tasks for many.  We have not seen such a system in existence, but we are as TFTech building and rolling out technology that can do this.
<br/>
<br/>
We believe that IT's future is in decentralization where specific coordinators (bots) will roam a network of capacity looking for a task to do, making themselves available where needed, creating more of them when the system grows, and allowing the global population to deploy and operate IT workloads.
