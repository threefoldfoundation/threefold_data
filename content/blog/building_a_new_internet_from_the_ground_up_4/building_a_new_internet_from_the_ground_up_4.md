---
id: building_a_new_internet_from_the_ground_up_4
title: "Building a New Internet From the Ground Up – Part 4: Network"
tags: [threefold_grid,technology,peer_to_peer]
category: [foundation,farming,cloud]
image: ./building_a_new_internet_pt_4.png
image_caption: The ThreeFold Grid Peer-to-Peer Technology
excerpt: We're (finally) back with part 4, looking at the networking aspects of the ThreeFold Grid.
authors: [scott_yeager]
created: 2022-02-03
---

After introducing the ThreeFold Grid in [part one](https://threefold.io/blog/post/an_intro_to_the_threefold_grid/) and diving deep into [storage](https://threefold.io/blog/post/building_a_new_internet_from_the_ground_up_pt2/) and [compute](https://threefold.io/blog/post/building_a_new_internet_from_the_ground_up_3/), we’re back with part 4 to look at the networking aspects of the ThreeFold Grid.

<br/>

Computer networking is a rather complex phenomenon with a thankfully intuitive outcome: you send messages from one place to another. We all understand that our digital devices become a lot less interesting when they are not connected to the Internet. However, networking is not just Internet, and when it comes to building a new Internet, it's important to understand what that means.

<br/>

The existing Internet can be defined as a global set of networks and protocols that enable us to do things like load web pages and use apps that rely on external data. It depends on lots of underlying infrastructure, including fiber optic cables running along the ocean floor, our home routers and their connection to an Internet service provider (ISP), lots of cell service towers, and an increasing number of satellites. All of that makes the Internet possible, and it's still required for a new Internet to function.

<br/>

[ThreeFold](https://library.threefold.me/info/threefold#/) uses and builds new protocols to create a network that is interoperable with the existing Internet. These include private overlay networks, the [Planetary Network](https://forum.threefold.io/t/how-our-planetary-network-works/1210) based on Yggdrasil, and various interfaces to the public Internet. Let's see how they work.

## Private overlay networks

Every deployment on the [ThreeFold Grid](https://library.threefold.me/info/threefold#/threefold__tfgrid_primitives?id=network-uses-nu) belongs to a network, which is one of the Grid primitives. These networks allow data to be transmitted between workloads in a private and secure manner. They are called overlay networks because they pass traffic over some underlying network. That could be within a single node or between nodes on infrastructure provided by a farmer. The Grid uses software called WireGuard for this purpose, a simple, fast, and secure option among its alternatives.

<br/>

By means of encryption, the traffic on a private overlay network is unreadable to any other device on that network. Likewise, the workloads within the private network have no visibility of the underlying network. Individuals who deploy workloads can access their networks over a secure tunnel, assuming that one of the nodes in the network is reachable from the public Internet. This is suitable for workload administration and some private applications. For public services and peer-to-peer communication, the ThreeFold Grid provides other solutions.

## Planetary Network

The [Planetary Network](https://library.threefold.me/info/manual/#/technology/threefold__planetary_network?id=planetary-network) is an implementation of the [Yggdrasil Network](https://yggdrasil-network.github.io/about.html), which is a next generation approach to network routing. It is a peer-to-peer solution where all traffic is encrypted and takes the shortest path to its destination. These features make it highly compatible with the ethos and goals of the ThreeFold Grid: privacy, security, and efficiency. The design also allows nodes, workloads, and users to communicate freely without relying on centralized intermediaries.

<br/>

Many [ThreeFold Farmers](https://library.threefold.me/info/threefold#/tfgrid/farming/threefold__farming_intro?id=threefold-farming) connect their nodes to a home router which blocks all inbound traffic by default. This is a sensible feature that doesn't interfere with most Internet usage (enthusiasts who want to host their own website or a gaming server might bypass this, for example). However, nodes on the Grid need to be reachable, especially in order to receive workload definitions from deployers.

<br/>

The Planetary Network solves this by accepting inbound traffic through an outbound connection to a publicly accessible peer. You can think of this like making a call to an operator and then waiting for another call to be routed to you on that line. Even if your phone is set to block all incoming calls, someone can still reach you if they can reach the operator.

<br/>

This also provides a way for workloads to communicate with one another and be reachable by users. Anyone can enable the Planetary Network on their own device to access sites and services in a very [secure and private](https://forum.threefold.io/t/critical-security-updates-for-apple-and-google-underline-need-for-secure-it-ecosystem/1271) way. While the ThreeFold Grid is designed to be fully interoperable with the existing Internet, the Planetary Network provides an alternative which can sit side by side in a seamless way.

### Reliable Message Bus

Using the Planetary Network, nodes and Grid users can send messages over the [Reliable Message Bus](https://library.threefold.me/info/threefold#/manual__rmd). Notably, it is used for the delivery of workload definitions as mentioned earlier. [Zero-OS](https://forum.threefold.io/t/all-you-need-to-know-about-zero-os/1734) supports some other RMB messages as well, for doing things like checking available capacity on a node in real time. RMB is a general purpose protocol that can be used by developers in their applications. It queries the [ThreeFold Blockchain](https://threefold.io/blog/post/tf_chain/) as a kind of address book for the Planetary Network, enabling nodes and users to find each other in a decentralized way.

## Public IPs and Web Gateways

Finally, let's see how the Grid can offer services over the public Internet using public IP addresses and [web gateways](https://threefold.io/tech/web-gateway/). Everytime we type a domain name into our browser, like threefold.io, it is resolved to an IP address. The browser then forms a connection with that address to retrieve the site we're looking for. Reviving a theme from earlier, that IP must be publicly reachable.

### Public IPs

We're in the midst of a shift from the older IPv4 standard to the newer IPv6 standard. While IPv6 has plenty of addresses for every device on the planet and many more, it hasn't been universally adopted yet, and IPv4 addresses are in short supply. You likely have one assigned to your router at home, and these days, even getting a second one from your ISP can be a difficult and expensive proposition.

<br/>

The ThreeFold Grid allows farmers who own blocks of IPv4 addresses to rent them out to deployers. These addresses get attached to individual workloads which are then reachable over the public Internet. A deployer could then assign their own domain name to that IP and host a website there. This is a very flexible way to make Grid deployments publicly available, but it comes at a relatively high cost.

### Web Gateways

[Web gateways](https://library.threefold.me/info/manual/#/technology/threefold__webgw) are another way to make workloads on the ThreeFold Grid available over the public Internet. In this case, the farmer may provide a domain name that points to one of their nodes which is publicly reachable. Deployers are then able to reserve a subdomain, like explorer.threefold.io is a subdomain of threefold.io, that routes traffic to their workload. It is also possible for a deployer to point their own domain to the gateway node which then routes traffic to the appropriate workloads.

<br/>

We glossed over a bit in the earlier description of domain name to IP address resolution. In fact, multiple domains can point to a single IP address and this is common practice among existing web hosts. Adding similar functionality to the Grid helps to ease the demand for IPv4 addresses and is a lower cost solution for deployers than renting a dedicated IP. The web gateway also serves to enhance security and reliability of Grid-hosted services.

<br/>

The gateway provides a connection from the public Internet to the secure private overlay networks that all workloads use. However, this is not a standard network connection but instead a network socket, which provides security through separation. This is something like passing along the contents of mail pieces without their envelopes. Web gateways also enable redundancy, as multiple gateways can point to the same workload, and multiple workloads can serve the same set of gateways.

<br/>

When we say the ThreeFold Grid scales limitlessly, this is one of the ways that's true. Many nodes, many gateways, many applications, and many users can all fit into this model. Deployers can start with a single [virtual machine](https://library.threefold.me/info/manual/#/manual__weblets_vm?id=virtual-machine) and a single public IP like in the example I'll use to wrap up this piece below, then ramp up to a globally distributed and highly redundant system as their requirements grow.

## Send, receive, complete

Now we've seen how the ThreeFold Grid handles networking. From private and secure communication between workloads, to next generation [peer-to-peer](https://threefold.io/tech/peer-to-peer/) communication and full compatibility with the existing Internet, these offerings are comprehensive. Not only that, but they can be pretty darn fun to play with too.

<br/>

In my own recent experience, I deployed a virtual machine on the Grid with a public IP and hosted a simple website with a map of nodes on the Grid that I'd been working on. I was able to quickly share it with some colleagues and members of the community. It went from a project I was tinkering with on my own computer to a live site on the Internet in a matter of minutes, thanks especially to the [networking features](https://forum.threefold.io/t/tf-deep-dive-session-5-threefold-grid-architecture/1756) of the ThreeFold Grid.

<br/>

For the final piece of this series, we'll see how everything comes together to turn computer code into a meaningful digital experience. Stay tuned!
