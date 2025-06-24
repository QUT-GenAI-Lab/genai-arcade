---
layout: default
title:  "Word by Word"
tags: understanding
before: understanding
after: calculator
---

# Word by Word

---

> Ever wondered why AI sometimes makes up facts that sound completely believable, even if they aren't true?

It's because underneath all that apparent intelligence is something surprisingly simple: a guessing game.

The most popular AI-based chatbots are based on a technology called Large Language Models (LLMs). These LLMs have been trained on a huge amount of text from books, websites, articles and more. So while they don't understand the world like we do, they have learned from this material, and have become very good at spotting and repeating patterns in language.

So when you type something into a generative AI chatbot (called a 'prompt'), it doesn't really think about the answer. Instead, it guesses what word is most likely to come next, based on everything it has seen before. Then it guesses the next word. And the next one. And the next one after that. It keeps going, one word at a time, until it finishes your answer. It's a bit like autocomplete on your phone, but much more powerful.

Popular AI systems like ChatGPT, Claude, and Gemini all run on large language models (LLMs) that work exactly this way. Specifically, these LLMs are all built using a particular approach called the [transformer neural network architecture](https://poloclub.github.io/transformer-explainer/). It's called a transformer because it takes inputs, and transforms them into outputs (by following the guessing game approach described above). And the transformer learns these next-word guess associations through a process called training - which is when the developers show the LLM the text from all those books, websites, etc. and adjust it to mimic the patterns in that text.

---

## How it Works

When you give an LLM a prompt, it breaks your text into tokens: words, parts of words, and even punctuation marks. The model then analyses all the tokens together and predicts what token is most likely to come next.

But the LLM doesn't always choose the most likely token option. Instead, it chooses from a list of possibilities, which adds variation and makes the output seem less robotic.

Here's an example: "**At the animal shelter, the child chose to adopt a [..]**"

| Token  | Probability | Explanation                        |
|--------|-------------|-----------------------------------|
| cat    | 40%         | Most likely based on training data |
| dog    | 30%         | Also common, but slightly less likely |
| lizard | 20%         | Less likely, but still possible    |
| cactus | 10%         | Very unusual, but not impossible   |

<br>

Most of the time, the model will choose "cat," but it also pick "dog" or even "cactus," depending on how it's configured. Then it repeats this process for the next token. And again. And again. This is how it builds up a response, [one token at a time](https://bbycroft.net/llm). And this whole process is random - if you type the same prompt a second or third time, you could get different outputs each time.

**Try it yourself:** Type a few words in the box below and press enter. Watch how the AI predicts what comes next, you can watch the probability for each token at each step.

---

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.23.3/gradio.js"
></script>

<gradio-app src="https://willsh1997-next-token-predictor.hf.space"></gradio-app>


---

## How Word-Guessing Creates Smart Responses

It might seem impossible that this simple word-guessing process can [produce the sophisticated responses](https://www.understandingai.org/p/large-language-models-explained-with) you get from ChatGPT. The key is in the training: these models learned from billions of conversations, questions, and answers. When you ask a question, the entire context—your question plus the beginning of the response—feeds into predicting each next word. The model has seen so many examples of how to answer questions that it can predict remarkably human-like responses, one word at a time.

---

## So What?

Because LLMs create text by guessing what words are likely to come next, they don't actually know what is true or false. They work with probabilities. If something is written down often enough, it becomes more likely, or probable, to be repeated, even if it's not accurate. These AI models have seen lots of patterns in language, including lots of examples of confident sounding answers to questions, so they can sound very confident. But they're still just making predictions based on probability.

This explains why AI sometimes [hallucinates](https://casmi.northwestern.edu/news/articles/2024/the-hallucination-problem-a-feature-not-a-bug.html), or confidently generates information that sounds plausible but is completely made up. The model isn't lying or malfunctioning; it's following its core logic, or rule set, of predicting what words should come next, even when those words describe something that never happened.

This reveals something important about how LLMs establish what is right. When an LLM gives you information, it's really saying:

> "Based on everything I've seen, this is probably what someone would say here."

Most of the time, that works pretty well. But understanding how LLMs work in this fundamental way helps explain both what AI is remarkably good at and where it can go surprisingly wrong.

---

## Reflections

- How does knowing about word-by-word prediction change how you think about AI responses?
- If AI is really just sophisticated pattern-matching, what does that mean for how we should use these tools?
- Where might this prediction approach be helpful? Where might it be problematic?

---

## Recommended Learning

Want to dive deeper into how LLMs work? Explore these interactive visualizations and resources:

- [Unboxing GenAI](https://research.qut.edu.au/genailab/projects/unboxing-genai/) - A gentle introduction to generative AI
- [Transformer Explainer](https://poloclub.github.io/transformer-explainer/) - Interactive visualization tool that runs a live GPT-2 model in your browser, letting you experiment with text and see how internal components predict the next tokens
- [LLM Visualization](https://bbycroft.net/llm) - 3D animated walkthrough of LLM algorithms with step-by-step guidance through token inference
- [Visual GenAI Explainer](https://ig.ft.com/generative-ai/) - Technical exploration of how large language models work
- [Understanding AI's LLM Explainer](https://www.understandingai.org/p/large-language-models-explained-with) - Gentle primer explaining LLM inner workings without technical jargon
- [Hallucinations](https://www.anthropic.com/news/claude-character) - Why they are a feature and not a bug