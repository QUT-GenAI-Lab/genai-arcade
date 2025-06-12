---
layout: default
title:  "AI Explainer"
tags: genai-arcade
before: /
after: knowing
---
## What Is a Large Language Model and How Does It Work?

Imagine you are playing a really smart guessing game. A **large language model**, or **LLM**, has read a huge amount of text from books, websites, articles and more. It does not understand the world like humans do, but it is very good at spotting patterns in language.

So when you ask it a question or give a generative AI model a prompt, it does not think about the answer. Instead, it *guesses what word is most likely to come next*, based on everything it has seen before.

Then it guesses the next word. And the next one. And the next one after that.

It keeps going, one word at a time, until it finishes your answer.

It is a bit like **autocomplete** on your phone, but much more powerful.

## Prompts and Answers

When a prompt comes in, the model breaks it into *tokens*. A token might be a word, part of a word, or even punctuation. The model then analyses all of the tokens together and predicts what token is most likely to come next, based on the ones that came before. **This is how you get an answer from a Chatbot.**

But it does not always choose the most likely one. Instead, it *samples* from a list of possibilities. This makes the output more varied and more human-like.

Here is a simplified example of what that might look like for the following sentence:

< At the animal shelter, the child chose to adopt a [..] 

| Token Option | Probability | Explanation |
|--------------|-------------|-------------|
| cat          | 40%         | Most likely next word based on training data |
| dog          | 30%         | Also common, but slightly less likely |
| lizard          | 20%         | Less likely, but still possible |
| cactus       | 10%         | Very unusual, but not impossible |

The model might choose *cat*, but it could also pick *dog* or even *cactus*, depending on how it is set up. Then it does the same thing again for the next token. And again. And again.

This is how it builds up a sentence, one token at a time, until it decides to stop.

---

## How a Language Model Reasons

LLMs do not reason like humans. They do not have beliefs, goals, or understanding. They do not know what a fact is in the way people do.

Instead, they *recognise patterns* in how facts are usually written. So when they produce a fact, they are not recalling it from memory. They are *predicting what a fact should look like* based on the language they have seen.

Their reasoning is not logical or deliberate. It is *statistical*, a matter of what is most likely to come next.

Because LLMs create text by guessing what words are likely to come next, they do *not actually know* what is true or false. They have seen lots of patterns in language — including how facts are usually written — so they can sound very confident. But they are still just making predictions based on probability.

That is also why LLMs are *not great with numbers*. They know that *2 plus 2 equals 4* because they have seen that exact phrase many times. But if you ask for something like the square root of 250, they might guess, and guess incorrectly, because they have not seen that specific answer enough to be sure.

So when an LLM gives you a *fact*, it is really saying:

> “Based on everything I have seen, this is probably what someone would say here.”

Most of the time, that works pretty well. But sometimes, what is being said on the internet is wrong or our facts change over time. For example, the answer to *Who is the prime minister?* depends on *when* and *where* you ask.

And sometimes, the model just gets things wrong, or even *makes things up*. We tend to call these *hallucinations*.

But here is the thing: a hallucination is not always wrong in the way people think. The model is still following its own internal logic, it is just that this logic sometimes works in our world, and sometimes it does not.

That is why it is so important to understand what kind of task you are using generative AI for. If you are writing a poem or brainstorming ideas, a bit of creative guessing might be fine or even helpful. But if you are looking for facts, doing research, or making decisions, you need to be careful.

**Knowing how the model works helps you know when to trust it and when to double-check.**

---

## What You See Isn’t Always What You Get

Sometimes, AI seems more capable than it really is. That is because companies often add *extra tools behind the scenes* to help it out.

Let us go back to the calculator example. If you ask an LLM to calculate the square root of 250, it might not know the answer on its own. But some systems will quietly call in a helper, ike a small agent that writes and runs a Python program to do the maths.

Or if you ask it to look up recent events, it might use another agent to search the web or access a database. That is actually quite clever. But it also shows that LLMs are not perfect for everything. They often need backup.

And here’s the thing: all of that takes a lot of computing power. A simple *Casio calculator* can do maths instantly using just a tiny bit of energy, like running on a tiny solar panel. Meanwhile, an LLM might need a ton of electricity to do the same thing.

So while LLMs are powerful, they are not always the most efficient tool for the job. That is why it is important to use them thoughtfully and know where their strengths and weaknesses lie. 
