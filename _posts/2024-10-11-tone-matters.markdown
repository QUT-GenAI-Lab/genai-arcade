---
layout: default
title:  "Tone Matters"
tags: training
before: average-internet
after: multilingual
---

# **Tone Matters**

---

> Ever wondered why you get different answers if you ask AI something using a formal vs casual style? That's because the way you ask makes the LLM recall different language patterns in the training data, and those patterns come with different facts, tones, and assumptions built in.

When you talk to an AI, the way you phrase your prompt can change the kind of answer you get, even if you're asking the same thing. If your prompt sounds very *formal*, the model will look for patterns that match formal writing, such as those found in academic papers or official documents. On the other hand, if your prompt is casual, it might pull from patterns found in message boards, social media, or everyday conversation. The same can be said about sounding *rude* or *polite* styles*.* 

And here's the twist: different styles of writing often come with different *facts*, *assumptions*, or *tones*. The same question might lead to very different answers depending on how you ask it.

In this widget, you can type a prompt and see how the model responds when your input is rude versus polite.

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://willsh1997-politeness-demo.hf.space"></gradio-app>

---

Ask the same question but watch how the tone of your prompt changes the response you get.

Compare the results. What changes? What stays the same? Are you able to find a question that gives a similar response in both cases?

---

## Why Does This Happen?

LLMs learn from patterns in human writing. Rude requests often appeared alongside dismissive or curt responses in their training data, and polite requests were more likely to be paired with helpful, detailed answers. The model isn't is just following the conversational patterns it learned. 

This means the model responds not just to *what* you ask, but *how* you ask it.

---

## So What?

This experiment shows that LLMs don't just respond to what you say - they also respond to how you say it. That makes them powerful tools for adapting tone and style. But it also means they can reflect biases or assumptions hidden in different types of language, and that [the way we phrase questions can subtly influence the answers](https://ai-analytics.wharton.upenn.edu/generative-ai-labs/research-and-technical-reports/tech-report-prompt-engineering-is-complicated-and-contingent) we receive. This comes with its own set of implications: what is often labelled as "formal" language tends to align with the norms of more privileged social groups, while expressions that might be flagged by the model as "rude" or "improper" could, in many communities, be perfectly friendly, warm, or culturally appropriate.

This raises important questions about how language models might reinforce existing social hierarchies. If the model's training data overrepresents certain linguistic norms, it risks marginalising others, subtly shaping interactions in ways that favour dominant cultural expressions and penalise those that fall outside them

---

## Reflections

* Did the tone of the prompt change the kind of answer you got?
* Were the facts or examples different in the rude vs. polite versions?
* Which version felt more trustworthy and why?
* What does this tell you about how LLMs "understand" language?
* When might it be helpful to use a more formal prompt? When might informality be better?
* What does this mean for how we ask questions or how we judge the answers?

---

## Recommended Learning

* [**AI Generates Covertly Racist Decisions Based on Dialect**](https://www.nature.com/articles/s41586-024-07856-5) - How AI shows dialect prejudice against African American English speakers
* [**Cultural Bias and AI: When Politeness Becomes Political**](https://academic.oup.com/pnasnexus/article/3/9/pgae346/7756548) - How AI models reflect Western cultural values in their responses
* [**When AI Learns Our Worst Linguistic Habits**](https://news.uchicago.edu/story/ai-biased-against-speakers-african-american-english-study-finds) - AI's reproduction of linguistic prejudice
* [**Politeness as Social Control in Human-AI Interaction**](https://link.springer.com/article/10.1007/s10462-023-10540-1) - How politeness norms shape AI behavior
