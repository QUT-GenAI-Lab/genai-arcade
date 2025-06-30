---
layout: default
title:  "Environment"
tags: limits
before: limits
after: time-capsule
---


# **Environmental Boundaries**

---

> Ever wondered how much carbon your last ChatGPT conversation actually produced?

Most of us have no idea. Tech companies prefer it that way.

Every time you send a prompt to an AI model, real computers somewhere in the world fire up to process your request. They consume electricity, generate heat, and add carbon dioxide to the atmosphere. But this environmental cost is invisible - hidden behind the clean interface of your browser.

In this widget, we calculate the real carbon footprint of your AI prompts. Type in a question, see the grams of CO2 it produces. Watch the numbers add up with each interaction. Try asking the same thing in different ways - what is the largest or smallest CO2 output you can get while still getting the same essential answer.

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://willsh1997-carbon-footprint.hf.space"></gradio-app>


---

To give you a sense of scale - here's a quick table of common activities and their associated greenhouse gas emissions, compiled from [here](https://clevercarbon.io/carbon-footprint-of-common-items) and [here](https://www.qld.gov.au/environment/climate/climate-change/climate-science,-analytics-and-reporting/emissions-data):

|**Activity** | 	**Greenhouse Gas Emissions in CO2 equivalents (CO2e)**|
| -------- | ------- |
|Mobile Phone use (1hr) |	0.172kg|
|10 min drive in personal car |	0.560kg|
|Average meal | 	1.5kg|
|Purchasing flowers locally|	2.5kg|
|London to Paris by air (per passenger)|	40kg|
|Net Daily Greenhouse Gas Emissions of Queensland, Australia|	340kg|
|New York to Tokyo by air (per passenger)|	1800 kg|

## **What's the real carbon cost of your chat?**

Here's what we need to address: by showing you these numbers, we're encouraging you to create more emissions. Every time you test our calculator, you're adding to the problem we're trying to highlight.

But we think this contradiction is worth it. At the QUT GenAI lab, we believe that [companies deliberately hide the environmental costs of AI](https://www.piie.com/blogs/realtime-economics/2024/ais-carbon-footprint-appears-likely-be-alarming) to keep us using their products without thinking. The real emissions are buried in vague sustainability reports whilst the experience feels frictionless and clean.

We've found that when people can see the actual environmental cost of their actions, they become more thoughtful about how they use AI. Not to stop using it entirely, but to use it more considerately - asking better questions, being more intentional, thinking twice before generating that seventh version of an email.

---

## **Beyond Carbon**

CO2 is just one piece of the puzzle. These systems also require [rare earth minerals mined from environmentally sensitive areas](https://hir.harvard.edu/not-so-green-technology-the-complicated-legacy-of-rare-earth-mining/), often by communities that will never benefit from the AI being built. The cooling systems in data centres [consume massive amounts of water](https://www.unep.org/news-and-stories/story/ai-has-environmental-problem-heres-what-world-can-do-about). The heat generated literally contributes to warming the planet.

Every prompt represents a chain of environmental impacts stretching from mining sites to power grids to cooling systems. The true cost isn't just carbon - it's the entire material footprint of keeping these systems running.

---

## **Rendering the Invisible Visible**

We're not trying to guilt you into never using AI again. We're trying to make visible what tech companies work hard to keep hidden. When you can see the real cost of each interaction, you can make informed choices about when AI is worth it and when it isn't.

Here's something uncomfortable for us: by building our GenAI Arcade, we're contributing to the very problem we're highlighting. Every interaction with our tools adds to global AI emissions. We're part of the environmental cost we're asking you to consider.

But we think it's worth it. We'd rather you engage with these tools, see the real environmental cost, and develop a more conscious relationship with AI than continue to rely on what big tech companies tell you. We believe that hands-on experience with these games leads to more thoughtful long-term usage. It's about using technology more wisely, demand more transparency, and ensure that as these systems scale, we're honest about what they cost our planet.

---

## **Reflections**

* How does seeing the CO2 numbers change how you think about using AI?
* What other environmental costs might be hidden from view?
* Should tech companies be required to show these impacts upfront?
* How might you use AI differently if the environmental cost was always visible?

---

## **Recommended Learning**

* [**AI's Carbon Footprint is Bigger Than You Think**](https://www.technologyreview.com/2023/12/05/1084417/ais-carbon-footprint-is-bigger-than-you-think/) - MIT Technology Review investigation revealing the hidden emissions from AI usage
* [**The Hidden Environmental Cost of AI**](https://news.mit.edu/2025/explained-generative-ai-environmental-impact-0117) - MIT News breakdown of why generative AI is so resource-intensive
* [**The environmental impact of LLMs: Here's how OpenAI, DeepSeek, and Anthropic stack up**](https://www.fastcompany.com/91336991/openai-anthropic-deepseek-ai-models-environmental-impact) - A Fast Company article on the big platform's estimated environmental impacts
* [**Rare Earth Mining's Environmental Legacy**](https://www.sciencenews.org/article/rare-earth-mining-renewable-energy-future) - Science News exploration of the mining costs behind AI hardware
* [**AI's Growing Water Crisis**](https://www.npr.org/2024/07/12/g-s1-9545/ai-brings-soaring-emissions-for-google-and-microsoft-a-major-contributor-to-climate-change) - NPR report on how AI expansion is driving massive increases in tech company emissions
