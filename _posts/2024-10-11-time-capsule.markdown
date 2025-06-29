---
layout: default
title:  "Time Capsule"
tags: limits
before: environment
after: short-term-memory
---

# **Time Capsules**

---

> Ever wondered why AI sometimes confidently states facts that are completely wrong about recent events?

Large language models are expensive to train - they take huge amounts of data, time, and computing power. And once they're trained, they're **static**. That means they don't automatically learn new things or update themselves over time.

So if something happened *after* the model was trained, like a new scientific discovery, a political event, or even a celebrity breakup, the model simply won't know about it. Each model becomes a time capsule, preserving the knowledge and understanding of the world as it existed at a specific moment.

Sometimes, companies get around this by adding tools that let the model search the internet or access live data. But [the model itself can only ever "know" what existed at the time it was created](https://promptrevolution.poltextlab.com/understanding-knowledge-cut-offs-in-genai-models/).

That's what this widget demonstrates. You'll ask a question, and the widget will send it to **three different models** — LLaMA (Feb 2023), LLaMA 2 (July 2023), and LLaMA 3 (April 2024) — each trained at a different point in time.

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://willsh1997-knowledge-cutoff-gradio.hf.space"></gradio-app>

Compare the answers. What do they know? What do they miss? How do their responses change as you move through time?

---

## **What This Reveals**

This experiment shows that LLMs don't "stay up to date" - [they're frozen in time like archaeological artifacts](https://arxiv.org/html/2403.12958v1). Each model carries the knowledge and biases of its training moment, creating a snapshot of how the world was understood at that specific point.

The differences between models reveal how quickly our world changes and how that affects what AI systems "know." Events that seemed crucial in 2023 might be missing entirely from earlier models, whilst more recent models miss everything that happened after their training cutoff.

What's particularly concerning is that [many users don't realise when they're getting outdated information](https://www.toolify.ai/ai-news/demystifying-knowledge-cutoff-why-it-matters-for-ai-models-396770). The AI responds with the same confidence whether it's discussing ancient history or something that changed last week, and companies often aren't transparent about their models' limitations.

---

## **When It Matters**

Static knowledge makes AI excellent for general knowledge, writing help, or anything that doesn't change quickly. But it's problematic for breaking news, current events, policy changes, or anything that depends on recent information.

The real challenge isn't just missing recent events - it's the illusion of current knowledge that these systems create.

---

## **Reflections**

* Did the older models miss anything important in your test?
* How did the answers change between versions, and what does that tell you about how quickly knowledge becomes outdated?
* What kinds of questions are most affected by knowledge cutoffs?
* Should companies be more transparent about when their AI knowledge might be outdated?
* What are the risks of using outdated information without realising it?
* How might this limitation affect decision-making in important areas like healthcare, law, or finance?

---

## **Recommended Learning**

* [**Understanding Knowledge Cut-offs in AI Models**](https://promptrevolution.poltextlab.com/understanding-knowledge-cut-offs-in-genai-models/) - Knowledge cutoffs and why they matter
* [**Dated Data: Tracing Knowledge Cutoffs**](https://arxiv.org/html/2403.12958v1) - Complexities and inconsistencies in AI training data timestamps
* [**AI Transparency and Knowledge Limitations**](https://hdsr.mitpress.mit.edu/pub/aelql9qy) - AI transparency limitations
* [**Why Knowledge Cutoff Matters for AI Models**](https://www.youreverydayai.com/knowledge-cutoff-what-it-is-and-why-it-matters-for-large-language-models/) - Educational podcast episode on the technical and practical implications of static AI knowledge
