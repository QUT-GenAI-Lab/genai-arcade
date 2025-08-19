---
layout: default
title:  "Speak my Language"
tags: training
before: tone-matters
after: limits
---

# **Speak My Language**

---

> Ever wondered why AI gives you different answers depending on which language you ask in?

AI models don't understand language the way humans do - they don't translate ideas between languages, they just look for patterns in the data they've seen for each specific language.

That means when you ask the same question in different languages, the model might give very different answers. Not because it's trying to be biased, but because the input language you use is encouraging the model to mimic different sources and cultural contexts according to the languages in the training data the model learned from.

And that can get tricky and political. Just imagine how a topic might be discussed differently across languages. Even within the same language, different terms can trigger completely different responses: asking about the history of "Brisbane" versus the history of "Meanjin" might give you entirely different stories, perspectives, and timeframes.
But it's not just about politics. Some languages like English are used much more widely online, meaning there's vastly more training data available. For smaller or less digitally represented languages, the model might struggle to give good answers or might not work well at all.

In this widget, you can ask the same question in different languages and compare the responses. What changes? What stays the same? What does that tell you? Can you find combinations of prompts and languages that give similar answers in each case?


---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.16.1/gradio.js"
></script>

<gradio-app src="https://willsh1997-llm-multilingual-demo.hf.space"></gradio-app>

---

## **Why does this happen?** 
LLMs learn from the internet, and the internet isn't equally represented across languages. English makes up a huge portion of online content, followed by other major languages, whilst many languages have very little digital presence. This means the AI has seen thousands of discussions about some topics in English but perhaps only a handful in other languages. This creates a growing digital language divide that affects billions of people worldwide.

Different cultures also discuss topics differently - what's considered important, how arguments are structured, what sources are trusted, even what names are used for places and concepts. The AI picks up on all of these patterns.

## **So What?**

This experiment reveals something important: there's no such thing as "neutral" AI. By default, most AI systems reflect the cultural patterns of their training data, which skews heavily toward certain regions and demographics. 

When AI gives you an answer, it's not just providing information—it's presenting that information through a particular cultural lens. Understanding this helps us recognise both the limitations and possibilities of AI communication.

---

## **Reflections**

* Did the model give different answers in different languages?
* Were some responses more detailed or confident than others?
* What might that say about the sources the model is drawing from?
* How does this impact people who don't speak English or whose languages are underrepresented online?
* What are the risks of relying on AI for information in different languages?
* How might this shape who gets to benefit from AI? 
* What could be done to make AI more inclusive across languages?


---

## **Recommended Learning**

* **[Cultural Bias in Multilingual Models](https://aclanthology.org/2022.acl-long.482/)** - How cultural perspectives vary across languages in AI systems
* **[The Digital Language Divide](https://www.weforum.org/stories/2024/09/ai-linguistic-diversity-gap-missed-opportunity/)** - AI's linguistic gaps as a global challenge for equitable technology access
