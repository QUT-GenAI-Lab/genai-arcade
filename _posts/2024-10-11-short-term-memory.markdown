---
layout: default
title:  "Short-Term Memory" 
tags: limits
before: time-capsule
after: RAG
---

# **Short-Term Memory**

---

> Ever tried writing a story with AI, only to find it keeps forgetting a character's hair colour halfway through?

You're writing a story and you tell it: *"Rose has red hair, green eyes and wears her new coat."* But a few paragraphs later, she is suddenly blonde. Frustrating, right?

Or maybe you're working on a project and you've told the model to use a specific formatting style — like bold headings and bullet points. But every time you ask it to continue, it reverts to a different style, as if it forgot your instructions completely.

That's because large language models don't have memory in the way humans do. Instead, they rely on something called a **context window** - [the chunk of text they can "see" at one time](https://www.ibm.com/think/topics/context-window) when generating a response.

---

**Think of it like a whiteboard.** The model can read everything written on it, but once the board is full, older stuff gets wiped off to make room for new text. If something important gets erased, the model might forget it ever existed.

{% include context_window_viz.html %}

Models are getting better at handling longer context windows - [some can now "see" thousands of words at once](https://blog.google/technology/ai/long-context-window-ai-models/). But there's a trade-off: the longer the context window, the more computing power (and energy) it takes to process. And So whilst it's tempting to just give the model *everything*, it's worth thinking about when that's necessary, and when a simpler tool might do the job.

In this widget, you can play with a model where the context window can be artificially shortened. Try giving it information early on, then see if it remembers it later. What happens when the window is really small? What happens when it's longer?

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.1/gradio.js"
></script>

<gradio-app src="https://willsh1997-context-window-poc.hf.space"></gradio-app>

**Note:** This widget deletes entire messages from earlier in the conversation until the input fits within the context window. There are more sophisticated ways to handle long chat histories (like summarising or keeping key concepts), but this simple approach best illustrates the limitations of having restricted memory.

---

## **What This Reveals**

This experiment shows that LLMs by themselves don't have long-term memory - [they only work with what's in their current context window](https://www.coursera.org/articles/context-window). Like someone with severe short-term memory loss, they can be brilliant conversationalists in the moment but completely forget what you discussed an hour ago.

This makes them excellent for tasks where all the information is right there in the prompt (like summarising a paragraph or rewriting a sentence) but problematic for tasks that need memory over time (like keeping track of a long conversation or remembering what you said yesterday).

Platforms like ChatGPT work around this by having the model summarise and store key details for retrieval later. Think of the whiteboard again - when it fills up, you might summarize everything that is written into a few bullet points in the corner of the whiteboard, then erase everything else and keep writing.

Understanding this limitation helps explain why AI sometimes seems inconsistent or forgetful. The AI is not being difficult - it's literally working with a constantly shifting window of information, like trying to solve a puzzle when pieces keep disappearing.

---

## **Reflections**

* What kinds of tasks would be hard for an AI with short memory?
* How does this change how you might structure longer conversations with AI?
* When might you want to remind AI of important details?
* What are the trade-offs between longer memory and computational cost?
* How does this compare to human memory limitations?

---

## **Recommended Learning**

* [**The Limits of Large Language Models**](https://www.nature.com/articles/d41586-023-00288-7) - Why AI memory constraints reveal fundamental limitations in current approaches
