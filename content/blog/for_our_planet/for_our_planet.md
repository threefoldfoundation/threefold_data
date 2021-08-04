---
id: for_our_planet
title: A Better Solution for Our Planet
tags: [threefold_farming,why]
category: [farming,twin,foundation,cloud,aci]
image: ./better_solution.png
image_caption: sustainability
excerpt: We believe IT can be sustainable. Actually, it should be! That's why energy efficiency has always been a key focus of ours..
authors: [weynand_kuijpers]
created: 2020-12-02
---
<br/>
<br/>
Today, the global Internet and IT infrastructure requires enormous amounts of energy, responsible for about 10% of annual global energy consumption. This makes the IT industry amongst the most pollutive industries in the world (along with the often-discussed airline industry, for comparison).
<br/>
<br/>
We believe IT can be sustainable. Actually, it should be! That's why energy efficiency has always been a key focus of ours. With climate change and sustainability as some of the most pressing issues of our times, new green solutions need to be our priority. It has been key to ThreeFold since the very beginning of its story to enable a technological infrastructure that can reduce the Internet’s carbon footprint drastically. 

## Simplicity is the key to unlock a better future

Over time, integration suites, middleware solutions, and enterprise service busses have been invented and implemented to cover integration challenges within the current internet. This has further complicated IT architectures, resulting in a loss of actual end user workload performance.
<br/>
<br/>
ThreeFold reworked the whole approach to IT architectures and eliminated the layers of complexity. The result is a cloud stack that presents minimal overhead and that requires less hardware – reducing heat generation and eventually cooling requirements. By reducing the need for power, the net result is an energy-efficient Internet grid.

## Improving resilience and efficiency through Self-Healing IT

Keeping systems up and running is a major requirement in modern day IT. Leading vendors earn most of their margin by selling maintenance contracts, performance guarantees, and professional services. Their business models bring no incentive to make things simple and efficient for consumers.
<br/>
<br/>
Creating a self-healing environment requires only minimal manual intervention to replace broken hardware components. Broken hardware components are inevitable, and the Zero-OS distributed node architecture deals with such failures by turning off broken components and provisioning unused capacity. By removing the need to ship broken parts back and forth, and linking to the corresponding installation knowledge (engineers), a lower carbon footprint can be achieved.

## “No painkiller” approach. We tackle the root issue

If a specific piece of software or hardware is not delivering the required performance or reliability, we should analyze the core design/algorithm and its usage of soft/hard components to determine the root causes of persistent issues to be solved.
<br/>
<br/>
Currently, most storage vendors follow the path of least resistance when trying to improve on performance. Their solution for meeting performance targets is to use faster components (CPU, memory, network card, proprietary acceleration) rather than looking at the core algorithms that drive the utilization of those components. Swapping components for faster ones perpetuates a cycle of cutting corners and focuses reliance on innovation from hardware component providers rather than solving the more fundamental and underlying issues. That's a "painkiller" approach.
<br/>
<br/>
Zero-OS was designed to solve root problem issues by design. While still using high-performance hardware components on the ThreeFold Grid, the algorithm of Zero-OS maximizes utilization possibilities. This enables greater performance and sustainability. Some key examples how this is achieved:

## Eliminating unnecessary elements from standard architectures

Virtualization adds a layer of software between the actual end-user workload and physical hardware. It also allows for multiple workloads to run on the same hardware by using excess capacity. There is definitely merit in building a virtualization solution. Building an effective virtualization solution that does not require abundant context switching is key and this is why Zero-OS has been developed. Zero-OS uses a minimal Linux kernel that allows for a number of user spaces to co-exist. In these user spaces, containerized versions of software can be run, eliminating the need for hypervisors, virtual OS to fuel the virtual machines, and guest operating systems. This also minimizes the required overhead for the host OS.

## Minimizing network connections usage

Supercomputing delivered many new technologies. But, not all of them are usable solutions for everyday workloads. One technology invented to make supercomputers performant is the use of Remote Direct Memory Access (RDMA). RDMA allowed physical CPU boards (containing both CPUs and memory) to access other CPU boards in memory stored data over a dedicated channel. This eliminated the need to transport data between CPU nodes over network connections (or other mainstream means to exchange data). The result was a considerable reduction in overhead created when allowing distributed end user workloads to operate over multiple physical cores. The leading server and storage solutions brands have never considered nor implemented such mechanisms. This resulted in an increased need for faster networks - increasing complexity, costs, efforts and resources needed to operate solutions.
<br/>
<br/>
RDMA is only used in certified farms and requires involvement of TFTech.

## Minimizing disk usage 

The storage solution uses slow and big (the bigger the better) HDD disks which drive in rack density. As they spin slower they consume less power and need less cooling. But then, how can you deal with read/write intensive workloads? The storage algorithm uses a SSD cache to acknowledge Inputs/Outputs coming from the applications, fills the erasure coded data blocks in large (up to 64MB) storage containers and writes the big chunks of data on the big and slow HHDs. If you are familiar with HDD disks, you know they like to be streamed on instead of having a lot of small bits written in a scratchy way.
<br/>
<br/>
**Continuous innovation in all of these areas are leading to an efficient technology stack.**
