---
title: "Kafka (DFDS)"
class: "Work"
languages: "C#, Java"
technologies: "Kafka Connect, Kubernetes, AWS"
layout: back
---

As part of modernaisation work at DFDS we made a number of cloud-native components, however we needed a way to seed the data from the monolith to the new source of truth, and vice versa. 

This is where Kafka Connect came in, utilizing a Debezium source to generate messages from the CDC tables embedded within MSSQL. Using a series of open source and a couple of in-house transforms written in Java we could create well-formatted Kafka messages, which then drove a series of components written in .NET and deployed to AWS.

The Kafka Connect infrastructure was deployed using Kubernetes and Flux, and processes hundreds of thousands of messages per location, all day every day.