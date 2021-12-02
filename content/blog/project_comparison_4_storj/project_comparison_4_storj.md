---
id: project_comparison_4_storj
title: "A Journey through the Decentralization and Blockchain Space – Part Four: Storj"
tags: [threefold_grid, threefold_cloud, technology, blockchain, peer_to_peer]
category: [foundation, cloud, technology]
image: ./project_comparison_4_storj.png
image_caption: Storj & how it compares to ThreeFold
excerpt: Follow me to the fourth stop on my journey through the space. This time, we’re looking into Storj!
authors: [hannah_cordes]
created: 2021-10-21
---

Welcome to the fourth part of our journey through the decentralization space. After exploring [Dfinity](https://threefold.io/blog/post/project_comparison_1_dfinity/), [Akash](https://threefold.io/blog/post/project_comparison_2_akash/), and most recently [Filecoin](https://threefold.io/blog/post/project_comparison_3_filecoin/), we’ll now explore Storj to find out what we have in common and where ThreeFold stands out. Here we go!

## Storj & how the project compares to ThreeFold

[Storj](https://www.storj.io) is a decentralized cloud storage (DCS) solution founded in 2014 by Shawn Wilkinson, offering cloud object storage on its network of nodes and ISPs spread across different countries.

<br/>

ThreeFold and Storj are both open source projects that view transparency as an integral part of their business philosophy. Actually, ThreeFold is the first full-stack blockchain-enabled [cloud](https://cloud.threefold.io/) to be made open source – all of our code is open source and available for everyone to review or use. 

<br/>

Another similarity is that security and privacy are crucial aspects of our projects. Both are private by design and believe it’s vital that every person has total [control and ownership](https://threefold.io/blog/post/threefold_data_sovereignty/) over their data – not even Storj or ThreeFold can access the data of users within their respective ecosystems, creating trustless environments. Storj provides security and privacy by encrypting the data by an [Uplink client](https://docs.storj.io/dcs/concepts/overview) before it is uploaded to its DCS. The data is then split into pieces which are distributed across different nodes and ISPs connected to Storj’s cloud network. At ThreeFold, we’re creating an [entirely secure](https://forum.threefold.io/t/critical-security-updates-for-apple-and-google-underline-need-for-secure-it-ecosystem/1271), peer-to-peer IT ecosystem that empowers users and gives them back control and ownership of their own data. We’re [secure](https://library.threefold.me/info/threefold#/tfgrid/threefold__usp_secure?id=network-security) across all dimensions of our solutions – from our operating system Zero-OS to Quantum Safe File System ([QSFS](https://threefold.io/tech/zdbfs)) and [Planetary Network](https://threefold.io/tech/planetary-network). 

<br/>

While Storj does not have its own operating system, we’ve built our [Zero-OS](https://www.threefold.io/tech/zero-os) from scratch. It allows servers to run autonomously and workloads to be hosted securely, preventing them from administrative exploits and errors. The self-driving and self-healing [features](https://threefold.io/blog/post/zero_os_blog/) of Zero-OS eliminate backdoors, reduce the hacking surface and remove the need for human involvement.

<br/>

Both projects are compatible with certain IT tools and protocols. While Storj is  S3-compatible and [integrates](https://www.storj.io/integrations) a couple of developer tools like FileZilla or Fastly, ThreeFold is highly compatible with leading industry standards and tools from S3 to Docker containers, [Kubernetes](https://forum.threefold.io/t/grid-utilization-plan-part-one/1157) and more. Moreover, ThreeFold can run anything that runs on Linux, allowing for a seamless migration of any digital workload, even from [traditional cloud providers](https://threefold.io/blog/post/threefold_cloud_vs_centralized_providers_like_aws_azure/) like Microsoft Azure or AWS. 

<br/>

A difference between the projects is that Storj focuses on providing the storage layer for developers to build storage applications like Dropbox upon, rather than offering such services themselves, whereas our energy-efficient full stack [cloud infrastructure](https://cloud.threefold.io/) includes solutions like the [ThreeFold Marketplace](https://threefold.io/marketplace) of ready-made peer-to-peer applications that runs on our Edge Virtual Data Center ([eVDC](https://threefold.io/info/cloud#/cloud__evdc)). Moreover, we’re working with innovative teams and developers to develop self-sovereign [alternatives](https://threefold.io/blog/post/interview_with_jimber/) to commonly used applications (e.g. video conferencing, office tools).

### Network & Storage

On Storj’s decentralized network, uploaded data is automatically spread across nodes in different countries. The storage capacity on Storj’s network is increased whenever a new node is connected to it. There are roughly 9,6 Petabyte of data stored on Storj with nodes in more than 80 countries, whereas roughly 85 Petabyte of storage, compute, and network capacity are deployed on the [ThreeFold Grid](https://threefold.io/grid). Currently, the nodes connected to our Grid are spread over more than [50 countries](https://explorer.grid.tf).

<br/>

While Storj only offers storage capacity, ThreeFold provides storage, compute, and network capacity. Moreover, our system is endlessly scaleable, whereas Storj’s scalability is limited as it does not empower people without technical skills to contribute and has more complex structures, such as its Satellite component which will be explained further down. We’re continuously extending our reach and our system is capable of seamlessly growing on demand, as it enables anyone to [become a 3Node](https://threefold.io/farm) on our ThreeFold Grid. Moreover, our self-driving and self-healing [technology](https://threefold.io/tech) is unique in the space and removes the need for monitoring and maintaining the nodes.

<br/>

Storage nodes on Storj are responsible for storing and returning data reliably. While Storj generally allows anyone with the excess capacity and bandwidth to run a node on its network, the project does not offer certified hardware. With Storj, anyone who wants to become a node operator has to build their own nodes which have to meet the specific hardware [requirements](https://docs.storj.io/node/before-you-begin/prerequisites) of Storj. At ThreeFold, our technology was designed to scale to anywhere electricity and bandwidth can be found to meet local digital infrastructure needs, to empower the unconnected and to drive our vision of an interconnected world. This is also why we’re working with certified hardware partners to provide [plug-and-play](https://shop.threefold.tech/index.php?route=common/home) 3Nodes. These 3Nodes enable even people without technical skills to join and contribute to what we like to call the [People’s Internet](https://threefold.io/blog/post/join_the_peoples_internet/), as [we believe](https://threefold.io/mission) that everyone should be given equal chances and that Internet access is a human right.

<br/>

Next to the storage nodes, there are two other [main components](https://docs.storj.io/dcs/concepts/overview) of the Storj network: Uplink and Satellite. [Uplink](https://docs.storj.io/dcs/concepts/definitions) is Storj’s umbrella term for any application that stores or retrieves data and encrypts, encodes, and coordinates data with other services. Storj’s [Satellite](https://docs.storj.io/dcs/concepts/satellite) consists of a set of storage node services like storage node reputation, data repair, billing and more. Storj users have to sign up for accounts on Satellites and pick a specific Satellite to trust. While any user could run their own Satellite in theory, Storj recommends users to create an account on a Satellite that is hosted by a third party like Storj Labs to reduce complexity. This approach, however, fosters centralization, whereas our peer-to-peer [infrastructure](https://smartereum.com/189750/threefold-is-audaciously-building-a-new-decentralized-internet/) is an open system where anyone can provide and utilize cloud resources without any intermediaries. On top of that, we’ve implemented cryptographically-secured deployment specifications, called [Smart Contracts for IT](https://threefold.io/tech/smart-contract), to ensure that workloads run as intended in a tamper-proof way, and allow systems to scale and heal autonomously without intermediaries.

### Tokenomics & Payment Methods

Both projects have native utility tokens. While the Storj token is an Ethereum-based token that represents a unit of storage capacity on the Storj network, [ThreeFold Tokens](https://threefold.io/tft) (TFT) can represent either a unit of compute, storage or network on the ThreeFold Grid. Some Storj community members [criticize](https://forum.storj.io/t/the-elephant-in-the-room-where-is-the-storj-token-utility/12452) a lack of utility of the Storj token, as storage capacity on Storj can be purchased and paid for not only in Storj token but also using fiat payment options like credit card or invoice. However, Storj themselves don’t see this as an issue and [state](https://www.storj.io/blog/storj-token-balances-and-flows-report-q1-2021) that the intention behind their tokens is to facilitate the provision and receipt of data storage and not to create a digital currency or any other kind of financial instrument. In contrast, our ThreeFold Tokens are the fuel for IT capacity, as they allow people to hold current and future cloud capacity on the ThreeFold Grid. Moreover, a limited supply of four billion ThreeFold Token has been set to keep the currency scarce, while the burning mechanism simultaneously ensures continuous rewards for current and future nodes. Find out more about our two algorithms, Proof-of-Capacity (PoC) and Proof-of-Utilization (PoU), in our [tokenomics](https://library.threefold.me/info/threefold#/tokens/threefold__tokenomics).

<br/>

By connecting storage nodes to Storj’s network and providing storage capacity to others, node operators get rewarded with Storj tokens which they receive [from Storj Labs](https://www.storj.io/blog/storj-token-balances-and-flows-report-q2-2021) as a centralized payment operator, whereas ThreeFold Token are already rewarded upon the connection of capacity to our Grid. Moreover, storage capacity on Storj’s network can only be purchased with a subscription-based [model](https://www.storj.io/pricing). With ThreeFold, anyone can become a farmer and be [rewarded income](https://library.threefold.me/info/threefold#/tfgrid/farming/threefold__farming_reward) in the form of ThreeFold Tokens for [expanding](https://library.threefold.me/info/threefold#/tfgrid/farming/threefold__farming_intro) the Internet by contributing cloud capacity. ThreeFold Tokens incentivize an open and autonomous [peer-to-peer](https://threefold.io/tech/peer-to-peer) system free from any type of intermediary. We’re enabling anyone to become an independent farmer, as we believe in empowering people and that no single entity should have the power to control systems. Based on our [ThreeFold Blockchain](https://threefold.io/tech/tf-chain), which will be released on Testnet 3.0 soon, a new discount as well as [billing model](https://forum.threefold.io/t/introducing-tf-chain-an-updated-billing-model/1277) will be introduced. The latter will allow users to authorize [smart contracts](https://threefold.io/tech/smart-contract) to automatically deduct their wallets according to the capacity they use.

## Conclusion

In summary, we both share the same vision of a decentralized Internet. The biggest difference between Storj and ThreeFold is that Storj is focused on providing storage, whereas [ThreeFold](https://threefold.io/blog/post/an_intro_to_the_threefold_grid/) does not only provide storage but also compute and network capacity. While Storj seeks to be the storage layer for the [decentralized Internet](https://threefold.io/blog/post/quest_decentralize_internet/), ThreeFold provides the [low-level primitives](https://threefold.io/blog/post/an_intro_to_the_threefold_grid/) for a *truly* decentralized Internet: compute, storage and network. 

<br/>

While we’re the [largest](https://www.forbes.com/sites/johnkoetsier/2020/06/20/largest-distributed-peer-to-peer-grid-on-the-planet-laying-foundation-for-a-decentralized-internet/), most advanced peer-to-peer cloud infrastructure in the world and are expanding fast, some aspects of Storj's storage network still function in a rather centralized manner, such as their payment model and Satellites. In addition to that, we’re providing the ideal infrastructure for edge workloads. The project could therefore [benefit](https://forum.threefold.io/t/threefold-is-the-substrate-for-decloud/1295) from moving on top of our fully decentralized, highly energy-efficient and autonomous [infrastructure](https://africa.businessinsider.com/local/markets/ambitious-startup-to-disrupt-the-internet-and-cloud/b38rwj4). Together, we could drive the [decentralization](https://www.econotimes.com/ThreeFold-DFINITY-and-the-race-to-Decentralize-the-Internet-1618367) of storage capacity all over the world. We believe in a world without boundaries, where people are able to share information, value and knowledge without limits nor intermediaries. To achieve this vision and to effect change at a large scale it takes collaboration. Thanks for coming along and stay tuned, as we’ll take a closer look at Holochain next!
