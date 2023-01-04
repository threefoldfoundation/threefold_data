---
id: build_on_threefolds_open_infrastructure_part_two
title: "Build on ThreeFold’s Open Infrastructure – Part Two: For Experts"
image_caption: "Build on ThreeFold’s Open Infrastructure – Part Two: For Experts"
description: This post is part of an ongoing series on building on ThreeFold’s open infrastructure. It’s for the more tech-savvy crowd, as we’ll dive into our cloud solution and everything enabled by the technology and tooling built on top.
date: 2022-09-21
taxonomies:
    people: [hannah_cordes]
    tags: [threefold_grid,technology,peer_to_peer]
    categories: [foundation]
extra:
    imgPath: build_on_threefolds_open_infrastructure_part_two.png
---

ThreeFold’s reliable, open-source, peer-to-peer Internet infrastructure together with a growing community of enthusiastic, driven early-adopter developers and end-users are the key to accelerating the growth and development of the Grid and to unlocking all of its potential. While the foundation has been laid, it will be up to all of us as a movement to improve and build upon it.

<br/>

After looking back at the ThreeFold Grid’s evolution and what makes it a game-changing Internet infrastructure in [part one](https://www.threefold.io/blog/build-on-threefolds-open-infrastructure/), it’s time to explore our cloud solution and the technology available today in part two! You can think of these as some of the essential low-level building blocks that when combined created a limitless sandbox for developers.

<br/>

If you’re wondering what virtual machines are, haven’t heard about Kubernetes before and don’t know your way around coding languages, this part might be less interesting for you. Feel free to skip and jump right into [part three](https://www.threefold.io/blog/build-on-threefolds-open-infrastructure-part-three/) on weblets and end-user experiences.

## Elements of our comprehensive & decentralized cloud solution

The ThreeFold Grid provides [various primitives](https://library.threefold.me/info/threefold#/technology/threefold__tfgrid_primitives) for compute, storage, and network – fulfilling all the needs centralized cloud providers cater to as well, while offering advantages in terms of decentralization, energy efficiency, security and more. [Zero-OS](https://forum.threefold.io/t/all-you-need-to-know-about-zero-os/1734) includes a collection of components, called primitives. These primitives are the low-level constructs which can be deployed on the ThreeFold Grid. As mentioned above, they act as building blocks for skilled developers that enable them to build and create in complete digital freedom.

<br/>

Additionally, the high compatibility of ThreeFold’s primitives with industry-standard tools and protocols makes it easy and seamless for developers to migrate workloads to the Grid. All of the primitives not only benefit from the unique efficiency and security features of [Zero-OS](https://library.threefold.me/info/threefold#/technology/threefold__zos), but also come with unique features and capabilities themselves. Here are some of the primitives to give you an idea of what you’ll get:

#### ZMachine

ThreeFold’s [ZMachine](https://library.threefold.me/info/threefold#/technology/zmachine?id=zmachine) is a lightweight virtual machine (VM) solution that’s unique to the ThreeFold Grid. ZMachine enables both traditional VM deployments and also introduces a next generation container specification built on our [ZFlist](https://library.threefold.me/info/threefold#/technology/threefold__zos_fs?id=why-this-zflist-concept) technology. ZFlist containers enabled by ZMachines are more secure and more flexible than the current industry standard Docker-based containers. With Kubernetes running on top of ThreeFold’s ZMachine [technology](https://library.threefold.me/info/threefold#/tfgrid/threefold__grid_use?id=tfgrid-kubernetes-cloud), we have a highly compatible and unique solution.

#### ZFlist

The [ZFlist](https://library.threefold.me/info/threefold#/technology/threefold__zos_fs?id=why-this-zflist-concept) is a next generation container format – supported directly at the operating system level on Zero-OS – which extends the industry-standard Docker container concept in an efficient and secure way. It provides a unique advantage over traditional containers via the use of mini VMs. By employing mini VMs, the FList concept provides better isolation than traditional container systems while retaining the advantages that containers offer over full VMs.

#### Kubernetes

ThreeFold has long supported the most used open-source container orchestration tool in the world, [Kubernetes](https://kubernetes.io/), which integrates the industry standard [Docker](https://www.docker.com/) format, a container creation and management tool. It’s used to manage many of the largest and most complex cloud deployments. Kubernetes can be used to create a production-ready environment. The ThreeFold Grid provides a lightweight Kubernetes VM that can be used to create clusters according to specific needs. By providing both VMs and Kubernetes, we’re able to offer the most comprehensive solution in the decentralized/blockchain space to deploy, scale, and manage cloud compute workloads. Kubernetes users can, for the most part, simply bring their existing configuration files and recreate their deployments on a Grid based cluster seamlessly. With the third generation of the Grid, we provided a very simple way to provision [Kubernetes clusters with Terraform](https://library.threefold.me/info/manual/#/manual3_iac/grid3_terraform/manual__terraform_k8s?id=more-info).

#### Terraform

[Terraform](https://forum.threefold.io/t/threefold-grid-3-0-supports-terraform/1184?u=hannahcordes) is a widely-used open-source Infrastructure as Code (IaC) software tool enabling a consistent workflow in order to manage complex deployments across different cloud providers. It also integrates directly with our Grid’s [existing Kubernetes functionality](https://library.threefold.me/info/threefold#/cloud/threefold__usp_compatible?id=kubernetes) to offer a complete solution for reserving hardware and deploying software.

<br/>

In a nutshell, Terraform offers a complete solution for reserving hardware and deploying software. It allows for specifying deployments on the [ThreeFold Grid](https://library.threefold.me/info/threefold#/tfgrid/threefold__tfgrid_home) in a simple, declarative, and human-readable language describing the desired end state. Terraform can be used to deploy the full set of [Zero-OS](https://forum.threefold.io/t/all-you-need-to-know-about-zero-os/1734) primitives, supporting any existing or future Linux workload, with endless possibilities. It is like a lower-level Kubernetes for the hardware part of cloud deployments.

#### Dedicated Nodes

We’re also supporting [dedicated nodes](https://forum.threefold.io/t/exciting-news-dedicated-nodes-on-the-people-s-internet/2645?u=hannahcordes). By utilizing dedicated nodes on the ThreeFold Grid, you’ll benefit from a truly decentralized and highly reliable Internet infrastructure that uses less energy and comes at a much more affordable price than any comparable alternative. With dedicated nodes, users are able to exclusively reserve the entire capacity of a 3Node to deploy solutions for themselves or for other customers, while also paying for all capacity of the respective 3Node. Dedicated nodes on our Grid will be highly cost effective, as they’ll be available with a 70% discount on [pricing](https://forum.threefold.io/t/pricing-for-tfgrid/2518/7). All the ThreeFold Grid features will be available on [dedicated nodes](https://forum.threefold.io/t/exciting-news-dedicated-nodes-on-the-people-s-internet/2645?u=hannahcordes) as well – from deploying VMs and containers to CapRover and more. Dedicated and non-dedicated 3Nodes can be combined.

#### V Language

ThreeFold is built with simplicity in mind which is why we’re using [V](https://www.threefold.io/partners/vlang/) – a statically typed programming language similar to Go, and inspired by Rust, Swift, and Oberon. It’s the official [smart contract](https://library.threefold.me/info/threefold#/technology/threefold__smartcontract_it) language on the Grid, as its simplicity and readability allows anyone to go through and understand any code base, even non-developers.

<br/>

Despite being simple, V gives a lot of power to the developer and can be used in pretty much every field, including systems programming, webdev, gamedev, GUI, mobile, science, embedded, tooling, etc. It aims to become an alternative to JavaScript as the de facto coding language on the market in the upcoming years. With V, the developer doesn’t need to change anything in their code. “It just works”, like in Python, Go, or Java, except there’s no heavy GC tracing everything or expensive RC for each object. V can translate your entire C project and offer you the safety, simplicity, and 10-25x faster compilation speeds.

<br/>

With +30,5K Stars on [GitHub](https://github.com/vlang/v), V brings a strong open-source developer community to the ThreeFold ecosystem to develop the infrastructures and applications of tomorrow – making it the ideal smart contract language for the ThreeFold ecosystem.

## An open invitation

So, now that you’ve learned more about the building blocks of the ThreeFold Grid and how you can build with them, we’d like to invite you to try and test them yourselves!

<br/>

While we’re very proud of our progress and the strong ecosystem around us, now’s the time to build upon the foundation. The team continues to do incredible work to further develop and advance the Grid with each and every release. They continue to improve the components, develop new features and build new solutions.

<br/>

With your support, the team can work even faster. If you share our belief in open source and decentralization, we invite you to help us test and improve not only the Grid and its primitives but also the solutions built on top. Together, we keep building and advancing to realize our Internet of Internets vision and to empower people with true digital sovereignty. 

<br/>

* Dive into the [manual](https://library.threefold.me/info/manual/#/) to get started
* Learn more about [testing the ThreeFold Grid](https://library.threefold.me/info/manual/#/manual__grid3_testing?id=testing-the-threefold_grid3)
* Join this growing [movement](https://t.me/threefold) & our [testing community](https://t.me/threefoldtesting)

### Join us for [part three](https://www.threefold.io/blog/build-on-threefolds-open-infrastructure-part-three/)!

Get ready for [part three](https://www.threefold.io/blog/build-on-threefolds-open-infrastructure-part-three/) of our series where we’re diving into a world of possibilities for developers, end-users and everyone in-between. The final part will not only show you what’s possible on the ThreeFold Playground today but also introduce you to our end-user experiences that empower you with digital sovereignty which are available for beta testing now!
