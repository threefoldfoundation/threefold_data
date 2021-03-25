---
id: threefold_foundation_32
title: Edge Cloud, not Grid Cloud
tags: [threefold_cloud, technology]
category: [tftech, cloud]
image: ./edge_cloud.png
image_caption: cloud
excerpt: The term Edge Cloud or, to be more precise, Edge Computing is one of the most exciting technology terms of these days.
authors: [kristof_de_spiegeleer]
created: 2018-08-22
---


## Edge Cloud, not Grid Cloud?

The term Edge Cloud or, to be more precise, Edge Computing is one of the most exciting technology terms of these days. 

<iframe width="750" height="421" src="https://www.youtube.com/embed/7uA9aoIfMZo" frameborder="0" allow="aautoplay; encrypted-media;" allowfullscreen></iframe>

## Edge Computing Definition

According to Wikipedia, "**Edge computing** is a distributed computing paradigm in which computation is largely or entirely performed on distributed device nodes known as smart devices or edge devices as opposed to primarily taking place in a centralized cloud environment. 
<br/>
<br/>
In summary, this means that the cloud is divided into smaller pieces and distributed to the edge of the network. 

## Drivers for Edge Computing

Some latency-sensitive applications require fast response times to work correctly. A good example is self-driving cars. A lot of decisions in autonomous vehicles have to be made instantaneously; the decision to react to the unexpected while driving at high speed cannot afford to be slowed down by data traveling long distances to be processed. To improve the system's reliability, additional hops, and any further points of failure must be eliminated. Moving to compute as far out as possible to the Edge is the logical choice.
<br/>
<br/>
More generically, real-world situations are increasingly relying on an IT component to be involved in some form of decision making where time is of the essence.  The current IT setup is that we have highly concentrated IT setups in data centers connected by fast networks to the rest of the world. This setup is rapidly becoming obsolete as we need to have the fastest possible response for everyday activities, which cannot sustain the time delay caused by (extended) network connections.  Having actual data processing and storage facilities close to these real-world situations is the next IT capacity evolution.
<br/>
<br/>
These thousands of situations are mostly in the IoT area. Still, other killer applications like streaming would greatly benefit from being served from the Edge rather than a distant central location.
<br/>
<br/>

## Edge Computing Market Facts

Due to the billions of IoT devices driven by various use cases like autonomous driving,  a massive demand for Edge Computing is evolving rapidly. According to the Digital Journal, the Edge Computing market is growing extremely fast. With a  CAGR of over 35.0% and the market is expected to reach  USD 33.75 billion by the end of 2023.
<br/>
Source: [http://www.digitaljournal.com/pr/3394129](http://www.digitaljournal.com/pr/3394129)
<br/>
<br/>
Edge Computing and Grid Computing are often used in the same context and sometimes are confused. For this article, we'd like to define the terms going forward as follows: 
<br/>
<br/>
Grid Computing means a computer network of 100% distributed computer resources like processing power, memory, and data storage of similar or different types to which authorized people can run their computation workloads. That means that Grid Compute nodes are mostly in data centers and maybe dispersed over more extensive regions but are typically still far from the Edge. Compared to Edge Computing,  Grid Computing environments are owned by more than one individual or company, and thus, controlled by many.
<br/>
<br/>
Edge computing has risen from a need to have data processing and storage as close as possible to real-world situations.  The situation could be as simple as recording biometric data by a smartwatch to support the required information for a self-driving car to function as intended.  The necessity comes from having local computing and storage capacity - it can be used by multiple use cases (situations) but does not have to.

## The Benefits of Edge Computing

Edge computing comes with specific benefits that are mandatory for the next evolution in the IT industry.  We have optimized the central model to such a degree that the network connects the central capacity to use cases in the field, the next bottleneck.  Edge computing is solving several challenges faced by real-world situations with the following benefits:

### Speed

**Speed** is probably the most crucial benefit of edge computing, as there are plenty of use cases that require near-real-time computing.  

### Scalability

The scalability of edge computing also makes it incredibly [versatile](https://www.vxchnge.com/blog/edge-computing-use-cases). By partnering with local data centers further out on the Edge, companies can easily target desirable markets without investing in expensive infrastructure expansion. Edge data centers allow them to service end-users efficiently with little physical distance or latency. They also do not constrain companies with a substantial footprint, allowing them to shift to other markets rapidly should economic conditions change.

### Availability and Security

Traditional cloud computing architecture is, by definition, centralized, which makes it especially vulnerable to [distributed denial of service (DDoS)](https://www.vxchnge.com/blog/how-to-protect-data-centers-from-a-new-generation-of-ddos-attacks) attacks and power outages. Edge computing distributes processing, storage, and applications across a wide range of devices, nodes and data centers, which makes it difficult for any single disruption to take down the network which is why logically and geographically dispersed systems are often used for DDoS mitigation like in Content Delivery Networks (CDN)
<br/>
<br/>
By pushing everything to the cloud, you're leaving your business open to ISP failures and cloud server downtime. Many mission-critical operations like railroads and chemical plants won't even use the cloud today. Their server farms are the only way to guarantee uptime.

### Process optimisation

Another big benefit is process optimization. If self-driving cars were to use the cloud instead of the Edge, they'd be pushing all the data they gather up to the cloud. But if the Edge makes local decisions, the cloud may not need all that data immediately – or even at all.

## Requirements for Edge Computing

When compute and storage capabilities exist on the Edge, we need to overcome several challenges around capacity distribution.  Most traditional IT technologies do not allow this as they live in large data centers where there is a lot of "care" for these technologies.
<br/>
<br/>
The most significant generic hurdle to overcome is that there is going to be a lot less "care" for the technology to rely on at the Edge.  These "devices" have to be self-sufficient to no small degree.  If we want to sum up some of the specifics of edge technology, this will come out:
<br/>
<br/>

*   A typical edge device or node must run an OS that comes in at a low cost or, ideally, for free like some open source offerings. This enhances the proliferation of capacity at the Edge. 
*   Container technology must be embedded in the OS at the lowest possible level to create the maximum benefit of efficiency from the edge hardware: classic Virtual Machine environments are just too inefficient and resource consuming for edge use cases. There will be Virtual Machine based edge solutions, but these are going to be out there for a certain period, catering for current IT workloads to move to the Edge.  The Edge's correct move can only happen when traditional IT applications split up into pieces and require a lot less capacity to run.  Hence, it will convert over time to containerized technology.
*   Edge Computing hardware will consist of datacenter grade hardware and all sorts of other types of hardware.  The Edge might include some smaller sized data center facilities but also include different types of "homes" for compute and storage equipment.  Think of transportation as a specific use case - capacity on maritime vessels, capacity on trains, and vehicles' capacity.  Hardware will have to accommodate different use cases,  price levels, form factors, and power consumption. 
*   Edge hardware needs a lightweight OS that is very close to the hardware components to get the maximum out of compute and storage capacity.  Less is more - for real Edge capacity, local people won't be able to interact with edge capacity - one further step - there will be no need to have remote people access these devices for maintenance purposes.  The ultimate edge computing solution will have a significant amount of self-sustainability - where there are no more highly technically skilled people required to keep the capacity available, up and running.
*   In most cases, Edge means being remote, and having no access to humans or humans are only too expensive for the specific use case. 
*   Power outages or no network availability will cause system failures. The ideal OS to deal with this revolves around no people; the zero-touch approach should be stateless and needs to have self-healing capabilities run by automation software robots.<br />

## Existing Edge Computing Solutions

Today there are a few Edge Computing platforms out there that cover some requirements as outlined above. 
<br/>
<br/>
*   Microsoft, for instance, launched products like Azure IoT Edge and Azure Data Box Edge to extend their Datacenter based Azure cloud offering to the Edge. 
*   Another attempt to bring centralized cloud technology to the Edge is the Openstack Edge Computing initiative, which is in the concept phase only so far. 
*   A new OS for the Edge is CoreOs, also known as Container Linux, which runs on nearly any platform, whether physical, virtual, or private/public cloud.
* More recently, there are a few blockchain-driven technologies out there pushing for edge capacity to exist.  Examples are:
    *   [SIA](https://sia.tech/)
    *   [Sonm](https://sonm.com/)
    *   [Filecoin](https://filecoin.io/)
*   Content delivery networks with a lot of "capacity" sitting close to end-users are expanding their capabilities beyond content delivery
    *   [Limelight](https://www.limelight.com/products/iot-and-edge-cloud/)
    *   [Akamai](https://www.akamai.com/)<br />
<br/>
<br/>

## The Holy Grail

The holy grail would be a self-healing Edge Grid. Edge, because of all the benefits Edge Computing brings to the user: Speed, Scalability, Reliability, Security, Versatility, and Process Optimization. Grid, because it fulfills the distributed workload requirements, a classic centralized cloud would generally be used without a centralized nature and all its disadvantages.
<br/>
<br/>
Probably the most critical part of the ideal solution is self-healing. The biggest challenge of an Edge Computing environment is the dependency on local care: humans to maintain hardware and upgrade or fix software components. Self Healing needs to do the job here, which means zero people can be involved. 
<br/>
<br/>
Only a self-healing mechanism with zero-people involved, completely decentralized, brings down the cost and provides more security to the environment, and makes it highly scalable. 
<br/>
<br/>
Some of you may think that new blockchain-based technologies may be the holy grail. But they are not.
<br/>
<br/>
In most cases, their implementations are too slow, and that's why it does not make sense to use them for production purposes. Another downside is the complexity of the application caused by stitching together 3rd party technologies. In many cases, these blockchain-based technologies are at a very early stage with beta implementations or even roadmap only type of technology.
<br/>
<br/>
The holy grail is something that hasn't been created before; it needs to be a versatile system that is self-manageable.  A large global conglomerate should not own the capacity - it should be owned by many. Therefore, it should have a commercial model where people individually can decide to partake in building this global edge solution and where there is a defined return on investment for those partakers.
<br/>
<br/>
A few groups of people, like us, are creating decentralized solutions for this, owned by the many, and creating services for all. 


