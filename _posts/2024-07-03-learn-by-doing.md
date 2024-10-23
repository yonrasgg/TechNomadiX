---
title: Trial and Error - Learning by Doing in DevOps and Programming 
date: 2024-07-03 01:30:00 +/-TTTT
categories: [DEVOPS, AGILE_METHODOLOGIES]
tags: [learning, devops, programming, trial-and-error, hands-on, learn-by-doing, poka-yoke]
image:
    path: assets/img/images.png
    alt: Learn by doing
mermaid: true
---

In software development and DevOps, both the trial and error method and learning by doing are essential techniques that facilitate practical and experiential learning. These methods acknowledge the dynamic nature of technology, where today's decisions impact tomorrow's possibilities, and where unknowns are inevitable. This blog post explores how these methods support growth in DevOps and programming, emphasizing their practical application, value in building resilience, and integration with other methodologies like the Poka Yoke technique for error prevention.

## Learning by Doing

Learning by doing is a hands-on approach that allows individuals to acquire knowledge through active participation and experimentation. John Dewey, one of the main proponents of this methodology, emphasized that the retention rate of learning improves significantly when we perform a task ourselves.

- **Retention through Action**: Dewey’s findings suggest that individuals retain:
  - 10% of what they read.
  - 20% of what they hear.
  - 30% of what they see.
  - 50% of what they hear and see.
  - 70% of what they say or write.
  - 90% of what they do.

  ```mermaid
  xychart-beta

  title "Information Retention by Activity"

  x-axis [Read, Hear, See, Hear and See, Say or Write, Do]

  y-axis "Retention Percentage (%)" 0 --> 100
  
  bar [10, 20, 30, 50, 70, 90]
  ```
  
  These statistics highlight the effectiveness of an active learning approach, where doing yields the highest retention. This is particularly relevant in DevOps, where hands-on experience is crucial for understanding complex systems and workflows.

- **Stages of Learning by Doing**: The learning by doing process typically follows a structured path:
  - **Experience/Experimentation**: Individuals collect information, prepare resources, and perform activities that allow them to experiment and learn.
  - **Analysis of the Experience**: After the activity, the individual analyzes what went well, what went wrong, and how it could be improved.
  - **Knowledge Construction**: Moving from practical to theoretical, this stage focuses on deriving lessons and building conceptual knowledge.
  - **Application to Future Projects**: Finally, individuals consider how the learned lessons can be applied to similar situations in the future, avoiding the same mistakes and applying successful strategies.

*[John Dewey on Learning by Doing](https://www.pedagogy4change.org/john-dewey/)*

## Trial and Error in Programming and DevOps

Trial and error is a heuristic approach that involves trying different solutions until one succeeds. This method is inherently valuable in software development, where experimentation and iterative testing are part of the problem-solving process.

- **The Value of Experimentation**: In programming, trial and error can be seen during debugging and testing phases. Developers write code, run it, identify errors, correct them, and try again until the desired output is achieved. This iterative process helps in refining both the code and the developer's understanding of the problem.

  - **Implications for Testing**: Software testing is a manifestation of trial and error. Testing helps verify specifications, design, and code to identify any errors. As famously stated, *“Testing is the process of running a program in order to find errors.”* This principle underlies the iterative testing process, where developers keep modifying code until they eliminate defects.

- **Principles of Effective Testing**:
  - **Pareto Principle**: 80% of defects are often caused by 20% of the code. Understanding this principle helps prioritize debugging efforts.
  - **Traceability to Requirements**: All tests must be directly traceable to customer requirements to ensure that they meet intended outcomes.
  - **Planned and Structured**: Tests should be planned well in advance, starting with small modules and progressively integrating them to test the entire system.

*[Principles of Software Testing](https://www.javatpoint.com/software-testing-principles)*

## Poka Yoke Technique in DevOps

The Poka Yoke technique, which means “avoid mistakes” in Japanese, is aimed at preventing errors from occurring in the first place. This technique complements the trial and error method by focusing on designing systems that make errors either impossible or immediately obvious.

- **Preventing Defects at the Source**: In DevOps workflows, Poka Yoke can be applied to automate processes to ensure consistency and accuracy. Examples include:
  - **Automated Build Checks**: By using CI/CD pipelines, teams can prevent the integration of faulty code by automatically running tests before merging changes.
  - **Preemptive Error Handling**: Incorporating mechanisms that catch errors before they happen, such as form validation or input checks, ensures that issues are detected before they escalate.

- **Control and Warning Functions**: Poka Yoke systems can function as either control mechanisms that prevent an error from occurring or warning mechanisms that alert when an error is detected.
  - **Control Function**: Prevents mistakes altogether by making certain actions impossible (e.g., a deployment tool that doesn’t allow deployment if specific criteria aren’t met).
  - **Warning Function**: Issues alerts when errors occur, allowing developers to correct issues in real-time (e.g., warning messages in IDEs that detect syntax errors).

- **Benefits of Poka Yoke**:
  - **Higher Quality**: By preventing errors from reaching production, product quality is improved.
  - **Customer Satisfaction**: Delivering high-quality products leads to better customer satisfaction and loyalty.
  - **Reduction in Rework**: Identifying defects earlier in the process reduces the need for rework, saving time and resources.

*[Poka Yoke in DevOps](https://businessmap.io/lean-management/improvement/what-is-poka-yoke#:~:text=Poka%2DYoke%20is%20any%20mechanism,human%20errors%20as%20they%20occur.)*

---
Trial and error, learning by doing, and techniques like Poka Yoke play crucial roles in the growth and success of software development and DevOps practices. Trial and error provide the flexibility to experiment and learn, while learning by doing ensures knowledge is deeply internalized. The Poka Yoke technique ensures quality and error prevention, leading to a more robust and reliable development process. By combining these approaches, teams can foster an environment of continuous learning and improvement.

---

As you continue your journey in DevOps and software development:

- Embrace experimentation as a key driver for learning and innovation.
- Implement error-prevention techniques like Poka Yoke to improve the quality of your processes.
- Foster an environment where mistakes are seen as learning opportunities and learning is seen as an active pursuit.