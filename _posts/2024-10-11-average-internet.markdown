---
layout: default
title:  "Average Internet"
tags: training
before: training
after: tone-matters
---

# **The Average Internet**

---

> Ever wondered what AI thinks the "most normal" image in the world looks like?

That's exactly what this widget reveals - by stripping away all prompt instructions and showing you what emerges from the statistical centre of an AI image model's training data.

This isn't an LLM but instead a text-to-image model. But they're related: Even though large language models like GPT generate text, and models like Stable Diffusion generate images, they're built on some of the same ideas, especially the *transformer architecture*.

Put simply, transformers are pattern-spotters. They learn from huge amounts of data and get very good at guessing what comes next, whether that's a word in a sentence or a shape in an image. In LLMs, the model learns to guess the next word based on the words that came before. In Stable Diffusion, the model learns to guess what an image should look like, based on patterns in its training data.

But underneath it all, both systems use transformers to understand and generate patterns. That's what connects them.

## **What Happens with No Guidance?**

---

In this widget, we've stripped down a diffusion model that generates images so that it always uses an **empty prompt**. That means it's not being told what picture to generate, it's just drawing (pun intended) an image that mimics the middle of the training data it saw, showing you what it considers the most statistically "average" image.

This "neutral point" is like taking every image the model has ever seen and finding their mathematical average. When you generate an image from here, you're seeing what aesthetics or vibes the model thinks are most *typical* or *common* across the entire internet.

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://willsh1997-neutral-sd-dev.hf.space"></gradio-app>

---

**You can:**

* Generate your own image from the neutral point
* Describe what you see
* Save it to our shared gallery
* Browse what others have created and described

---

## **What Usually Emerges**

Most people notice the same patterns: images that look like clothing catalogues, stock photography, or estate agent listings. Clean, professional, often featuring young attractive people in well-lit spaces with neutral expressions. It's the visual equivalent of "generic commercial internet."

This reveals something fascinating about our digital visual culture - the internet is dominated by commercial imagery designed to sell things, and AI models have learned that this polished, sanitised aesthetic represents "normal."

---

## **So What?**

This widget helps us explore the biases and assumptions baked into image models. It shows that even with no prompt, the model still makes choices - based on what visual styles dominate online. These "default" images reflect the patterns that appear most frequently in training data.

That might mean certain types of people, places, aesthetics, and cultural perspectives show up more than others, whilst other styles, communities, or ways of seeing the world might be missing entirely. The dominance of commercial visual culture shapes what AI considers "normal."

---

## **Reflections**

* What kinds of patterns in the images come up most often?
* Are there certain styles, subjects, or colours that repeat?
* What does this say about the training data the model was fed?
* What themes or patterns do you notice in the images?
* What might be missing - and why?
* If this is the "average internet," what does that say about what we upload and share?

---

## **Recommended Learning**
* [**Washington Post: AI Image Bias Analysis**](https://www.washingtonpost.com/technology/interactive/2023/ai-generated-images-bias-racism-sexism-stereotypes/) - Interactive investigation showing how AI image generators perpetuate Western stereotypes and reflect commercial internet aesthetics
* [**University of Washington Bias Study**](https://www.washington.edu/news/2023/11/29/ai-image-generator-stable-diffusion-perpetuates-racial-and-gendered-stereotypes-bias/) - Academic research on how Stable Diffusion over-represents light-skinned men and sexualizes women of color when prompted for "a person"
* [**MIT Technology Review: Interactive Bias Tools**](https://www.technologyreview.com/2023/03/22/1070167/these-news-tool-let-you-see-for-yourself-how-biased-ai-image-models-are/) - Tools that let you explore bias in DALL-E 2 and Stable Diffusion through 96,000 generated images across different demographics
* [**Comprehensive Bias Survey**](https://arxiv.org/html/2404.01030v2) - Academic survey of bias in text-to-image generation covering definition, evaluation, and mitigation approaches across multiple AI models
* [**Intersectional AI Analysis**](https://link.springer.com/article/10.1007/s00146-025-02207-y) - Critical analysis of how Stable Diffusion perpetuates multiple intersecting power systems through visual aesthetics and cultural representation
* [**Unconditional Generation Bias Study**](https://arxiv.org/abs/2506.09106) - Research specifically examining bias in unconditional image generation (no prompts) and how training data shapes default outputs

