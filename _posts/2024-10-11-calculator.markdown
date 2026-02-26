---
layout: default
title:  "Sort of Calculator"
tags: understanding
before: word-by-word
after: linkedin-generator
---

# Sort of Calculator

> Ever asked AI to do simple maths and watched it confidently get the wrong answer?

That's because LLMs aren't actually very good calculators - they're just really good at pretending to be.
Usually, when an AI gets maths right, it's because it's secretly using external tools like code interpreters. But what happens when you don't let it cheat?

In this widget, we've forced the model to behave like a simple calculator using only what it has learnt from its training data - no external tools, no writing and running  code, and no built-in calculator.

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://qut-genailab-llm-calculator.hf.space"></gradio-app>

You can try basic operations like: addition (+), subtraction (−), multiplication (×), and division (÷). Don't be surprised if it gets things wrong, especially with bigger or more unusual numbers. You might be surprised about how good (or bad) this type of AI actually is with numbers.

---

## Why Does This Happen?

Because LLMs don't actually do maths. They generate text by guessing what words (or numbers) are likely to come next, based on patterns they've seen before.

They've seen "2 + 2 = 4" so many times that they've learnt to repeat it. But if you ask for something like "17 × 43" or "the square root of 242", they might just guess — and guess incorrectly.

They're not calculating. They're predicting.

---

## But I've Seen AI Get Maths Right Before...

If you've used ChatGPT or other AI systems and seen them solve maths problems correctly, that's because they're getting help behind the scenes. These systems quietly use [external tools like code interpreters](https://openai.com/index/chatgpt-can-now-run-code/) to actually do the calculations.

![What it looks like when you ask ChatGPT a complex maths question](/assets/img/squareroot.png){: width="100%"}
*What it looks like when you ask ChatGPT a complex maths question*

It's a bit like a magician with a hidden assistant - the performance looks impressive, but there's more going on than meets the eye.

And here's something else to consider: efficiency. A simple Casio calculator can do maths instantly using just a tiny bit of energy, like running on a tiny solar panel. Meanwhile, an LLM uses [enormous amounts of electricit](https://arxiv.org/abs/2311.16863) to do the same thing - poorly.

![What ChatGPT does behind the scenes: it writes a program](/assets/img/square_root_2.png){: width="100%"}
*What ChatGPT does behind the scenes: it writes a program*

---

## So What?

This widget shows that LLMs are not reliable calculators on their own. Understanding this helps explain why AI can seem inconsistent: it excels at pattern recognition and language tasks but struggles with precise logical operations that require step-by-step reasoning rather than pattern matching.

---

## Reflections
- When did the model get the answer right? When did it get it wrong?
- What kinds of problems was it better at?
- Why do you think it sounds so confident, even when it's wrong?
- When might it be risky to trust an AI with numbers?
- What other kinds of tasks might work the same way, where it sounds right, but isn't?

---

## Recommended Learning
* [**AI Is Usually Bad At Math. Here’s Why It Matters**](https://www.forbes.com/sites/johnwerner/2024/10/07/ai-is-usually-bad-at-math-heres-what-will-happen-if-it-gets-better/) - Forbes on the implications of being bad at maths.
* [**The Future of LLMs and maths**](https://arxiv.org/html/2404.00344v1) - Can LLMs Master Math?
* [**Accuracy Problems & LLMs**]([https://arxiv.org/html/2404.00344v1](https://digitalcommons.dartmouth.edu/cgi/viewcontent.cgi?article=1038&context=cs_senior_theses)) - The Problem with Mathematical Accuracy in Large Language ModelsAccuracy in Large Language Models




