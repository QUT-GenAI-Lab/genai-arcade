---
layout: default
title:  "Neutral Input"
tags: widgets
---

## How Are LLMs and Stable Diffusion Related?

Even though large language models (LLMs) like ChatGPT generate text, and models like Stable Diffusion generate images, they’re built on some of the same ideas especially the **transformer architecture**.

Put simply:

> **Transformers are pattern-spotters.**  
> They learn from huge amounts of data and get very good at guessing what comes next, whether that’s a word in a sentence or a shape in an image.

- In LLMs, the model learns to guess the next word based on the words that came before.
- In Stable Diffusion, the model learns to guess what an image should look like, based on patterns in its training data.

Stable Diffusion also uses a process called **diffusion**, where it starts with random noise and gradually turns it into a clear image, guided by what it has learnt.

But underneath it all, both systems use **transformers** to understand and generate patterns. That’s what connects them.

---

## Training Data Explorer

What happens when you ask an image model to generate a picture but give it no prompt at all?

In this widget, we’ve stripped down a Stable Diffusion model so that it always uses an **empty prompt**. That means it’s not being told what to generate. It’s just drawing from the centre of its training data.

This “neutral point” is like the average of everything the model has seen. When you generate an image from here, you’re seeing what the model thinks is most *typical* or *common*.

You can:
- Generate your own image from the neutral point
- Describe what you see
- Save it to our shared gallery
- Browse what others have created and described

<iframe
	src="https://willsh1997-neutral-sd-dev.hf.space"
	frameborder="0"
	width="850"
	height="450"
></iframe>

---

## Reflections:
- What kinds of images come up most often?
- Are there certain styles, subjects, or colours that repeat?
- What does this say about the training data the model was fed?

---

## So What?

This widget helps us explore the **biases and patterns** baked into image models.

It shows that:
- Even with no prompt, the model still makes choices — based on what it has seen most often.
- These “default” images reflect the **dominant patterns** in the training data.

That might mean:
- Certain types of people, places, or aesthetics show up more than others.
- Other perspectives or styles might be missing entirely.

---

## What do you think?
- What themes or patterns do you notice in the images?
- What might be missing — and why?
- How could this affect the kinds of 


