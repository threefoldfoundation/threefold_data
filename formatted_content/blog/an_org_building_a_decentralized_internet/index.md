---
id: an_org_building_a_decentralized_internet
title: "ThreeFold: An Organisation Building a Decentralized Internet"
image_caption: "ThreeFold: An Organisation Building a Decentralized Internet"
description: Greetings fellow decentralization lovers, I am in search of people looking to contribute to what is now the largest decentralized network in the world, working towards the goal of providing a decentralized internet that breaks down barriers to information and compute resource access. Our network provides digital equality to all users while placing the control of their data back into their hands.
date: 2022-11-09
taxonomies:
    people: [threefold_community]
    tags: [threefold_grid,technology,peer_to_peer,threefold_cloud]
    categories: [foundation]
extra:
    imgPath: an_org_building_a_decentralized_internet.png
---

# ThreeFold: An Organisation Building a Decentralized Internet


_*Disclaimer: This blog has been written by ThreeFold community member Drew Smith, and was originally a Reddit post. The team found so much value within it that we felt it was important to give it a permanent space within the ThreeFold Blogs collection, and Drew agreed to this. Besides a few grammatical corrections and minor contextual tweaks, the content has not been edited – and you can find the original post [here](https://www.reddit.com/user/DrewSmith214/comments/yhym2f/an_organization_building_a_decentralized_internet/).*_ 

<br>

Greetings fellow decentralization lovers, I am in search of people looking to contribute to what is now the largest decentralized network in the world, working towards the goal of providing a decentralized internet that breaks down barriers to information and compute resource access. Our network provides digital equality to all users while placing the control of their data back into their hands.

<br>

The project I’m discussing is [Threefold.io](https://threefold.io/), this is a project that currently has nearly 3000 Bare-Metal** **nodes in 64 countries allowing anyone in the world to deploy an industry standard VPS on the decentralized infrastructure with no involvement of the centralized cloud providers, This is a network meant to be used by everyone that can be expanded by anyone. You can check out a current map of the nodes online on the [ThreeFold Explorer](https://dashboard.grid.tf/explorer/statistics)

<br>

The ThreeFold Grid consists of three synergistic layers: The Nodes, The Network, and the BlockChain.

<br>

* **The Nodes:** These are hardware that gives its grid its power, The requirements for running a 3Node are a bare metal x86_64 machine and a reliable internet connection. These nodes can be hosted in a variety of environments spanning at home deployments to rented-space DC's. This includes DC's themselves being able to bring capacity online so long as it’s a fully bare metal device.
   
    * You can find **_plug and play solutions_** for bringing a 3Node online on the [3Node marketplace](https://marketplace.3node.global/index.php?dispatch=    categories.view&category_id=167), this marketplace includes node offerings from both the organizations itself as well as multiple independent businesses that have become certified 3Node Resellers. 
   
    * If you're familiar with the concepts of building a server/pc you can also bring your hardware online as **_D.I.Y 3Node_** this allows you to contribute any additional hardware you may have in your deployment to the support of both the grids network and compute capacity. you can find documentation on D.I.Y nodes on the [Forums](https://forum.threefold.io/t/diy-nodes-guide/837) or in the [Wiki](https://library.threefold.me/info/threefold#/tfgrid/farming/threefold__diy_guide)

    Each node is booted using a fully in house developed autonomous operating system that automates both node deployment and workloads being deployed on the node after its online, called [Zero-OS](https://github.com/threefoldtech/zos). This OS is a hypervisor environment that accepts commands from and is managed by the block-chain.

<br>

* **The Network(s):** The grid is supported by multiple internal and external networks that allow for the nodes to function as a decentralized data center. This is made of two major components.
  
    * **Z-Net**- is an internal private overlay network between VMs, Kubernetes Nodes, Containers and the grid. This network allows for minimal usage of Public ipv4 space while still allowing for global deployment solutions encompassing multiple 3Nodes.
 
    * **Planetary Network-** This is a peer to peer end to encrypted network solution based on opensource technologies (yggdrasil) that allow grid users to create, develop and overlay networks designed to protect users ability to communicate and access information. You can find the github Repo [here](https://github.com/threefoldtech/planetary_network), with 3000 endpoints all controlled by a single DAO, the potential exists to create the most reliable peer to peer mesh in existence.
    
    * **Public IPv4-** Threefold farmers have the ability to add Public Ipv4 to the grid in addition to their compute capacity, these IPs can be deployed as gateway addresses in support of the grid, or rented by end users for their workloads, at the time of this writing the threefold grid has 1114 Public Ipv4 addresses available for use. you can find documentation on adding I.P addresses to the grid [here](https://forum.threefold.io/t/diy-public-node-guide/3340)

<br>

* **The BlockChain:** the blockchain technologies built into the Threefold Grid represent what makes the grid truly unique and allows it to be utilized to support customer facing workloads or provide a decentralized compute resource pool. grid utilization is supported and created through two avenues
    
    * **Individuals:** can deploy any workload they need on any node on the grid, if it can run on Linux it can run on the grid, this type of use is supported by the [Threefold Playground](https://play.grid.tf/#/), a decentralized deployment solution that provides industry standard Linux vps deployments as multiple use case specific deployment solutions for [Kubernetes](https://kubernetes.io/), [Caprover](https://caprover.com/), [Peertube](https://joinpeertube.org/), [Funkwhale](https://funkwhale.audio/), [Mattermost](https://mattermost.com/), [Discourse](https://www.discourse.org/), [Taiga](https://www.taiga.io/), [Owncloud](https://owncloud.com/), [Presearch](https://presearch.io/), [SubSquid](https://subsquid.io/), [CasperLabs](https://casperlabs.io/), and [Node Pilot](https://nodepilot.tech/)
       
        * Custom VM images cab be uploaded to the [Threefold Hub](https://hub.grid.tf/) allowing full deployment customization with any Linux os image supporting cloud-init. Documentation on creating custom images can be found [On the Forums](https://forum.threefold.io/t/manipulating-cloud-images-for-the-grid/3380)
       
        * Storage workloads can be deployed using [Terraform](https://github.com/threefoldtech/terraform-provider-grid) with offerings of HDD, SSD and [Quantum Safe File Storage](https://github.com/threefoldtech/terraform-provider-grid)
   
    * **Solution Providers**: these are developers of user facing services that utilize the grid as their hosting platform. These organizations/individuals are able to develop customized solutions that provide needed services in their market and receive rewards for the utilization that their developments bring. A great example of this is [Zonaris](https://zonaris.con/), which is a third party organization that is quickly taking the lead in grid solution development. They have recently released an interface that allows end users to deploy [Streamr](https://streamr.network/discover/network/) nodes on the Threefold grid while paying in fiat currency. you can get started with them at [Get Zonaris](https://get.zonaris.com/).
        
        * This allows developers to invest in only their code while having the infrastructure of a worldwide virtual data center at their disposal to scale their solutions with their business needs.
        
        * Solution providers are able to automate their tools being deployed on the grid using [Terraform](https://github.com/threefoldtech/terraform-provider-grid).

<br>

 What this has all truly come together to form is an organization where anyone can contribute to building a more private and secure internet that is designed to allow universal access to information and compute power regardless of the end user's nationality or beliefs. Threefold truly exists to capitalize on the ideal economies from every corner of the world, in order to provide a better digital future for all.

<br>

**What Can You Do?**

Much of what you see today at Threefold.io is the work of 100s of decentralized contributors working together towards a common goal. The grid is designed so that anyone can contribute whether you're a developer, a property owner, an I.S.P, or just someone with a spare computer and a network connection. As it stands the grid is strong and well supported across the world. The biggest impact that can be made today is by developing solutions that leverage the grid and use its resources to bring affordable and accessible hosting to end users.

<br>

There are many discussions happening on the [Threefold Forum](https://forum.threefold.io) about partnerships with other projects and how we can better support both the crypto landscape and the general internet user base. Even by just joining discussions on the Threefold Forum and providing your input and ideas you can help to make sure that the internet of tomorrow is built for and by the users of tomorrow. but there are lots of ways to contribute:

* You can purchase the TFT token following [this guide](https://library.threefold.me/info/threefold#/tokens/threefold__how_to_buy).
* You can learn about farming [here](https://library.threefold.me/info/threefold#/tfgrid/farming/threefold__farming_intro).
* You can learn more about the Threefold Cloud and Deploying [here](https://library.threefold.me/info/threefold#/cloud/threefold__cloud_home).

<br>

_*Written by Drew Smith*_