---
id: building_a_new_internet_from_the_ground_up_3
title: "Building a New Internet From the Ground Up – Part 3: Compute"
tags: [threefold_grid,technology,peer_to_peer]
category: [foundation,farming,cloud]
image: ./building_a_new_internet_3.png
image_caption: The ThreeFold Grid Peer-to-Peer Technology
excerpt: Part three of an approachable series on the inner workings of the ThreeFold Grid. This time, we're exploring compute.
authors: [scott_yeager]
created: 2021-10-04
---

*Welcome back for another installment of our accessible series on ThreeFold Grid technology. We are working through the three major categories that make up cloud infrastructure: storage, compute, and network. This time, we'll be focusing on compute.*

## What is compute?

While [storage](https://threefold.io/blog/post/building_a_new_internet_from_the_ground_up_pt2/) and network are fairly intuitive concepts – where data lives and how it gets around – compute is about the more mysterious realm of data processing and ultimately computer programming. Don't worry though, you don't need any technical abilities to gain a deeper understanding of what's happening behind the scenes when we use apps or interact with web sites.

<br/>

As mentioned in the [first part](https://threefold.io/blog/post/an_intro_to_the_threefold_grid/) of this series, compute is basically what happens with data once it reaches its destination. Compute gives data relevance, by processing it according to the instructions provided by developers in their source code. When talking about what the [ThreeFold Grid](https://threefold.io/grid) offers in terms of compute, it's mostly about how the code that developers produce gets executed in order to provide the services we enjoy. 

<br/>

With ThreeFold, this actually happens for the most part using the same tools and systems provided by traditional cloud services, meaning that it's highly compatible with existing cloud applications. What really makes the Grid different is that it's been designed to provide a level of efficiency and security that simply isn't possible without starting "from the ground up". Before we get into specifics of compute offerings built into ThreeFold's [Zero-OS](https://threefold.io/how-it-works/zero-os), let's briefly explore what computing is.

## Playing with zeroes and ones

Everything a computer's central processing unit does is based on a limited set of instructions that includes basic mathematical functions, logical operations, and ways to control the flow of a program. At their core, computers are really just automated adding machines that execute specified operations on whatever input they receive. It may be hard to believe that simple math creates all of the vibrant digital experience we enjoy, but at a certain low level, that's the truth.

<br/>

Take a messaging app as an example. Within a computer, all of the text, emojis, and images we see are represented by numbers. When we search for some text within a chat, matches are determined by checking if the numbers corresponding to the words we typed are equal to some numbers corresponding to words that appear in the chat history. This information is then converted into the list of results we see on screen.

<br/>

In this context, compute is mostly responsible for organizing all of our messages based on the individual or group we were talking with, the time that the message happened, and whether or not we've opened it yet. Typically, a messaging app stores data both on our local devices and on a back end in the cloud. Compute is also how the service decides to copy messages you sent on one device to other devices where you have the same app installed.

<br/>

Here is an important distinction about how the ThreeFold Grid operates. In a traditional cloud environment, it is impossible to know for sure what is happening on the backend, even if you are the one running the service. The administrative access retained by the cloud provider can be used for surveillance and tampering that can be very difficult or impossible to detect. 

<br/>

Zero OS offers a unique assurance that no one can abuse the Grid in this way, because it operates autonomously with no facilities provided for human intervention. In order to utilize compute capacity on the Grid, individuals and organizations deploy their choice of several "primitives," or basic components, that provide an environment for code to be executed and create the magic we experience as online applications.

## ThreeFold Compute Primitives

Since we're getting a bit into the technical weeds here, we'll just take a brief look at each primitive and what makes it special.

### Zmachine

Zmachine is a lightweight virtual machine (VM) implementation that's been developed in a uniquely efficient way by ThreeFold. VMs are essentially computers within computers, allowing multiple operating systems to run on a single physical system. A common example is running the Windows operating system on a Mac that's already running MacOS. 

<br/>

In the cloud world, virtual machines are a classic way to manage complex deployments with flexibility and resilience – by packaging different components into different VMs that can be run side by side and moved between different physical servers with ease. While VMs have been replaced in many cases with the new container paradigm, which we'll cover next, they are still widely used and provide a simpler solution than containers that's sufficient for many use cases.

### Flist

The [Flist](https://threefold.io/how-it-works/zflist)  is a next generation container format which extends the industry standard Docker container concept in an efficient and secure way. It is supported directly at the operating system level on Zero OS, and in its latest version on ThreeFold Grid 3.0, provides a unique advantage over traditional containers via the use of mini virtual machines.

<br/>

Containers provide greater efficiency and flexibility than VMs, by sharing parts of the host operating system between containers rather than duplicating the full operating system for each component. This, however, means that containers typically come with less of an assurance that different workloads and their data remain isolated from each other. By employing mini VMs, the Flist concept provides better isolation than traditional container systems while retaining the advantages that containers offer over full VMs.

### Kubernetes

Containers usually represent small parts of a full solution, which are created, interconnected, and destroyed on an ongoing basis. Kubernetes is the industry standard container orchestration system, and it's used to manage many of the largest and most complex cloud deployments. Kubernetes solutions are defined through configuration files that specify the types of containers, how updates are handled, and the network architecture both between containers and with the outside world.

<br/>

Multiple physical servers or VMs are typically used for a Kubernetes "cluster" which provides redundancy and scalability. The ThreeFold Grid provides a lightweight Kubernetes VM that can be used to create clusters according to specific needs. Kubernetes users can, for the most part, simply bring their existing configuration files and recreate their deployments on a Grid based cluster seamlessly.

## Wrapping up

Taken together, the compute primitives offer a comprehensive alternative to existing cloud compute providers. Users of Docker, Kubernetes, and virtual machines can bring their deployments to the Grid with a minimal amount of migration effort. This is distinct from other decentralized cloud projects, which either offer a single solution like Kubernetes or a completely new environment that developers must adapt their code to run within.

<br/>

Better yet, each compute offering on the ThreeFold Grid benefits from the unique efficiency and security features of Zero OS, as well as the unique aspects of the primitives themselves. Thanks again for joining me on this journey into the wonderful world of ThreeFold technology. In the next episode, we'll cover the last element of the cloud infrastructure triad: network.
