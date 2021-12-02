---
id: project_comparison_2_akash
title: "A Journey through the Decentralization and Blockchain Space – Part Two: Akash"
tags: [threefold_grid, blockchain, technology, threefold_cloud, threefold_token]
category: [foundation]
image: ./project_comparison_2_akash.png
image_caption: Akash & how it compares to ThreeFold
excerpt: This post is the second one in a series to explore fellow projects and their solutions with regards to what they share with ThreeFold but also where we differ. Follow me on my journey through the space. This time, we're looking into Akash!
authors: [hannah_cordes]
created: 2021-10-05
---

As announced in [the first episode of this series](https://threefold.io/blog/post/project_comparison_1_dfinity/), I’d like to shed some light on the complex decentralization and blockchain space and look into what fellow projects have to offer. There are various projects decentralizing parts of the internet. So in this second blog post, we’ll be exploring Akash and their solutions to find out what we have in common and where we differ. Follow me on the second step of my journey to better understand the space we operate in and how ThreeFold stands out.

## Akash & how the project compares to ThreeFold

Founded in 2015, [Akash](https://akash.network) is an open-source and blockchain-based cloud computing platform. They [strive](https://akash.network/about#vision) for an open, permissionless, and sovereign cloud that allows anyone to reserve computing resources without any intermediaries. Their cloud platform provides a simple way for deploying and scaling cloud applications. 

<br/>

The Akash Network is a decentralized, on-chain marketplace for leasing cloud computing resources, while the Akash Container Platform is an off-chain platform for cloud management services (deployment, hosting, and management of workloads) on Kubernetes, the industry standard for container orchestration. We also integrated Kubernetes into our [P2P Cloud](https://threefold.io/info/cloud#/cloud__cloud_intro) solution, but we didn’t stop there. On ThreeFold’s cloud solution, developers additionally have the option to deploy virtual machines or to discover the future of cloud computing with [ZFlist](https://threefold.io/tech/zflist) – a game-changing Docker-compatible solution that is distributed across many mini VMs, positioning itself as the ideal infrastructure for edge workloads. And all data produced by these workloads can be stored in our [Quantum Safe File System](https://threefold.io/tech/zdbfs) solution that is highly compatible with most storage tools (e.g. S3) and protocols (e.g. IPFS).

<br/>

With Akash, developers would get access to what is probably the best decentralized computing cloud on the market, whereas ThreeFold offers a full stack cloud infrastructure that unites compute, storage, and network. Having integrated all leading industry-standard tools, ThreeFold’s [cloud solution](https://cloud.threefold.io/) allows for a seamless migration of any digital workload – even from centralized cloud providers like [AWS or Microsoft Azure](https://threefold.io/blog/post/threefold_cloud_vs_centralized_providers_like_aws_azure/). This empowers developers from all over the world to deploy their applications and workloads on a fully decentralized infrastructure, without having to learn new tools. Developers using Akash, however, may still need to rely on other decentralized projects to decentralize the storage and network components of their solutions.

<br/>

Akash sees their [USP](https://docs.akash.network) in hosting containers that allow any type of cloud-native application to be hosted without vendor lock-in or having to learn new protocols, a vision shared and extended by ThreeFold as the project is already compatible with most of the industry standards. With the integration of [Terraform](https://forum.threefold.io/t/threefold-grid-3-0-supports-terraform/1184) into the upcoming third release of the [ThreeFold Grid](https://www.forbes.com/sites/johnkoetsier/2020/06/20/largest-distributed-peer-to-peer-grid-on-the-planet-laying-foundation-for-a-decentralized-internet/), developers will be capable of hosting any existing or future Linux workload seamlessly.

## Network and development possibilities

Akash is one of the most robust decentralized compute solutions out there and is one of the key players in driving the DeCloud movement. On its platform, computing resources can be leased on the Akash Marketplace, driven by its blockchain based on the [Cosmos SDK](https://github.com/cosmos/cosmos-sdk). It’s already being used by a range of blockchains and applications. On their marketplace, users can determine the terms and price for their deployments and have cloud providers bid for the opportunity in a reversed auction. Nevertheless, the project still relies on centralized data centers as they seek to prevent unutilized capacity [from centralized cloud computing services](https://blog.orchid.com/akash-networks-greg-osuri-on-decentralizing-cloud-computing/) to go to waste, leveraging about 85% of this underutilized cloud capacity from data centers. So, while Akash is preventing capacity from being wasted, they also highly depend on centralized capacity – and so do the workloads using their platform.

<br/>

With ThreeFold, developers are enabled to tailor the terms for storing their workloads to fit their needs, benefiting from full decentralization and edge possibilities. Moreover, developers get access to the most distributed peer-to-peer infrastructure in the world – the ThreeFold, currently present in [more than 50 countries](https://explorer.grid.tf). Another unique attribute of the ThreeFold Grid is that the capacity within the network is provided by many people and organizations, forming an infrastructure that can be described as the “[People’s Internet](https://threefold.io/blog/post/tf_grid_peoples_internet/).” It is the first full-stack blockchain-enabled cloud to be made open source, allowing anyone to connect cloud capacity to the network by downloading [Zero-OS](https://threefold.io/tech/zero-os), our stateless and lightweight operating system powering the [ThreeFold Grid](https://threefold.io/grid). Once booted, the servers run and can’t be accessed physically. As they’re self-healing, they don’t require any maintenance. All in all, this model flips traditional IT upside down, allowing anyone to [join](https://threefold.io/blog/post/join_the_peoples_internet/) the ThreeFold ecosystem. 

<br/>

Both projects also reward their communities for providing capacity. Akash planned to launch a limited edition for an own node device, called Supermini, with plug-and-play functionalities similar to our [3Node](https://library.threefold.me/info/threefold#/technology/technology?id=_3nodes). *However, Akash [just announced](https://akash.network/blog/supermini-update) that they’ll be postponing the launch of their Supermini indefinitely, meaning they won't be offering anything comparable to our 3Node anytime soon.* Our [3Node](https://threefold.io/farm) is a general purpose computer that acts as  a low-level provider for IT capacity. It is booted with our unique operating system Zero-OS and enables even people without technical skills to participate. We’re collaborating with certified hardware partners and plan to extend our reach in the near future to allow even more people to [join](https://threefold.io/blog/post/join_the_peoples_internet/) the ThreeFold Grid. 

## Tokenomics and incentive models

Both, Akash Token (AKT) and [ThreeFold Token](https://threefold.io/tft) (TFT), are utility tokens fuelling an open-source cloud. While the Akash Tokens (AKT) represent a unit of compute on the Akash Network, ThreeFold Tokens (TFT) represent a unit of compute, storage or network on the ThreeFold Grid. Akash’s payment model allows users to pay for what they need, when they need it, using a reverse auction. In order to create a deployment, users have to provide a deposit first. As payments are effected passively, it is crucial for users to keep their deposits funded to maintain the lease of their capacity reservations. With our [ThreeFold Blockchain](https://threefold.io/tech/tf-chain), which will be released on Testnet 3.0 soon, a [new billing model](https://forum.threefold.io/t/introducing-tf-chain-an-updated-billing-model/1277) is being introduced. This model allows users to authorize [smart contracts](https://threefold.io/tech/smart-contract) to automatically deduct their wallets (similarly to a direct debit transaction), depending on how much capacity they use. Additionally, we’re implementing a new discount model, which will provide users with discounted capacity pricings according to the amount of ThreeFold Tokens stored in a user’s wallet.

## Conclusion

All in all, Akash does a great job with regards to decentralizing cloud capacity. However, it doesn’t challenge the status-quo in terms of [data privacy](https://forum.threefold.io/t/security-privacy-on-the-threefold-grid-and-second-best-alternatives-out-there-today/1290). At ThreeFold, we’re determined to empower users, to give them back control and ownership of their data in an [entirely secure](https://forum.threefold.io/t/critical-security-updates-for-apple-and-google-underline-need-for-secure-it-ecosystem/1271), peer-to-peer IT ecosystem. While Akash and ThreeFold seem like competitors on a cloud level, we see ourselves more as a potential [decentralized substrate](https://forum.threefold.io/t/threefold-is-the-substrate-for-decloud/1295) for Akash to scale to the edges of our world. Akash developers would surely benefit from the lightweight and stateless features of our Zero-OS which could provide them with a more efficient and private infrastructure to test, build, and collaborate on workloads. 

<br/>

Akash and ThreeFold share the same goal – to bring secure, performant, and data-sovereign cloud solutions for humanity to thrive. As Sam [put in a nutshell](https://forum.threefold.io/t/threefold-is-the-substrate-for-decloud/1295): ThreeFold is the ideal substrate for projects like Akash to run on, instead of depending on traditional cloud providers – as we provide the low-level primitives for a decentralized world. So, we believe [Akash and ThreeFold](https://forum.threefold.io/t/how-is-threefold-different-from-akash-and-holochain/804/2) are complementary in many ways and could  join forces to further push the boundaries of [cloud decentralization](https://africa.businessinsider.com/local/markets/ambitious-startup-to-disrupt-the-internet-and-cloud/b38rwj4) together.

<br/>

As we truly believe in collaboration, we invite all other projects in the space to join us in our quest to decentralize the entire Internet and Cloud stack to restore the neutrality we once took for granted. Thanks for taking this journey with me and don’t forget to stay tuned for the next stop: [Filecoin](https://threefold.io/blog/post/project_comparison_3_filecoin/)!
