---
layout: default
title:  "Knowledge Cutoff"
tags: knowing
before: milkless
after: context-window
---

## Knowledge Cutoff

Large language models are expensive to train, they take huge amounts of data, time, and computing power.  
And once they’re trained, they’re **static**. That means they don’t automatically learn new things or update themselves over time.

So if something happened *after* the model was trained, like a new scientific discovery, a political event, or even a celebrity breakup, the model simply won’t know about it.

Sometimes, companies get around this by adding tools that let the model search the internet or access live data. But the model itself can only ever “know” what existed at the time it was created.

That’s what this widget is all about.

You’ll ask a question, and the widget will send it to **three different models** — LLaMA (Feb 2023), LLaMA 2 (July 2023), and LLaMA 3 (April 2024) — each trained at a different point in time.

<iframe
	src="https://willsh1997-knowledge-cutoff-gradio.hf.space"
	frameborder="0"
	width="850"
	height="450"
></iframe>

Compare the answers.  
What do they know? What do they miss? What changes?

---

## Questions to Think About:
- Did the older models miss anything important?
- How did the answers change between versions?
- Were any of the responses outdated or incorrect?
- What kinds of questions are most affected by a knowledge cutoff?

---

## So What?

This experiment shows that LLMs don’t “stay up to date”, they’re frozen in time.

That makes them great for:
- General knowledge, writing help, or anything that doesn’t change quickly

But not so great for:
- Breaking news, current events, or anything that depends on recent information

---

## What do you think?
- When does it matter that an AI might be out of date?
- Should models be retrained more often, or should they always have access to live data?
- What are the risks of using outdated information without realising it?
