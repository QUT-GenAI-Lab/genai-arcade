---
layout: default
title:  "Sort of Calculator"
tags: knowing
before: probable-facts
after: linkedin-generator
---

## Calculator (sort of)

What happens when you ask a large language model (LLM) to do maths but don’t let it cheat?

In this widget, we’ve forced the model to behave like a simple calculator. It can only use what it has learnt from its training data, with no external tools, no Python code, and no built-in calculator.

Often, when you ask an AI to solve a maths problem, it quietly uses extra tools behind the scenes, like a code interpreter or a plug-in, to get the right answer. That makes it *look* smarter than it really is. But here, we’ve taken all of that away.

It’s also worth thinking about efficiency. A basic calculator, the kind with a tiny solar panel, is incredibly energy-efficient. In contrast, using a large language model to do simple arithmetic is like using a jet engine to toast a slice of bread. It works, but it’s not exactly the best tool for the job.


You can try basic operations like:
- Addition (+)
- Subtraction (−)
- Multiplication (×)
- Division (÷)

But don’t be surprised if it gets things wrong, especially with bigger or more unusual numbers. You might be surprised about how good (or bad) this type of AI is actually with numbers. 

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://willsh1997-llm-calculator.hf.space"></gradio-app>

## Why?

Because LLMs don’t actually *know* how to do maths. They generate text by guessing what words (or numbers) are likely to come next, based on patterns they’ve seen before.

They’ve seen “2 + 2 = 4” so many times that they’ve learnt to repeat it. But if you ask for something like “17 × 43” or “the square root of 242”, they might just guess — and guess incorrectly.

They’re not calculating. They’re predicting.

---

## Reflections
- When did the model get the answer right?
- When did it get it wrong?
- What kinds of problems was it better at?

---

## So What?

This widget shows that LLMs are not reliable calculators — at least not on their own.

They’re good at:
- Repeating common facts or phrases
- Recognising patterns in how maths is usually written

But not so good at:
- Actually *doing* maths
- Solving problems they haven’t seen before

---

## What do you think?
- When might it be risky to trust an AI with numbers?
- Why do you think it sounds so confident, even when it’s wrong?
- What other kinds of tasks might work the same way, where it sounds right, but isn’t?
