---
layout: default
title:  "Context Window"
tags: limits
before: knowledge-cutoff
after: values
---

# Context Window

Ever tried writing a story with AI, only to find it keeps forgetting a character’s hair colour halfway through?

You tell it: *“Sarah has curly red hair and a green jacket.”* But a few paragraphs later, Sarah’s suddenly blonde and wearing a hoodie.  
Frustrating, right?

Or maybe you’re working on a project and you’ve told the model to use a specific formatting style — like bold headings and bullet points. 
But every time you ask it to continue, it reverts to a different style, as if it forgot your instructions completely.

That’s because large language models (LLMs) don’t have memory in the way humans do. 
Instead, they rely on something called a **context window**, the chunk of text they can “see” at one time when generating a response.

You can think of it like a whiteboard. The model can read everything written on it, but once the board is full, older stuff gets wiped off to make room for new text. If something important gets erased, the model might forget it ever existed.

Models are getting better at handling longer context windows, some can now “see” thousands of words at once. 
But there’s a trade-off: the longer the context window, the more computing power (and energy) it takes to process. 
So while it’s tempting to just give the model *everything*, it’s worth thinking about when that’s necessary, and when a simpler tool might do the job.

In this widget, you’ll get to play with a model where the context window can be artificially shortened. 
Try giving it information early on, then see if it remembers it later.  
What happens when the window is really small?  
What happens when it’s longer?

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.1/gradio.js"
></script>

<gradio-app src="https://willsh1997-context-window-poc.hf.space"></gradio-app>

## So what?

This experiment shows that LLMs don’t have long-term memory, they only work with what’s in their current context window.

That makes them great for:
- Tasks where all the info is right there in the prompt (like summarising a paragraph or rewriting a sentence)

But not so great for:
- Tasks that need memory over time (like keeping track of a long conversation or remembering what you said yesterday)

---

## What do you think?

- What kinds of tasks would be hard for an AI with a short memory?
- When should you avoid to rely on this technology? 



