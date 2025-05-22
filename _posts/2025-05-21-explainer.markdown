---
layout: default
title:  "Explainer"
tags: genai-arcade
---
## How Does a Large Language Model Create Text?

Imagine you're playing a really smart guessing game.

A large language model (LLM) has read *a huge amount* of text, books, websites, articles, and more. It doesn’t understand the world like humans do, but it’s really good at spotting patterns in language.

So when you ask it a question or give it a prompt, it doesn’t “think” about the answer. Instead, it guesses what word is most likely to come next, based on everything it’s seen before.

Then it guesses the next word.  
And the next one.  
And the next one after that.

It keeps going, one word at a time, until it finishes your answer.

It’s kind of like autocomplete on your phone but way more powerful.

---

## What Does That Mean for Facts?

Because LLMs create text by guessing what words are likely to come next, they don’t actually *know* what’s true or false.  
They’ve seen lots of patterns in language — including how facts are usually written — so they can sound very confident. But they’re still just making predictions based on probability.

That’s also why LLMs aren’t great with numbers.  
They know that **2 + 2 = 4** because they’ve seen that exact phrase many times.  
But if you ask for something like **the square root of 242**, they might guess, and guess incorrectly, because they haven’t seen that specific answer enough to be sure.

So when an LLM gives you a “fact,” it’s really saying:  
> “Based on everything I’ve seen, this is probably what someone would say here.”

Most of the time, that works pretty well. But sometimes, what's being said on the internet is wrong or our facts change over time.  
For example, the answer to “Who is the prime minister?” depends on *when* and *where* you ask.

And sometimes, the model just gets things wrong — or even makes things up. Sometimes we call these **hallucinations**.

But here’s the thing: a hallucination isn’t always *wrong* in the way people think. The model is still following its own internal logic, it’s just that this logic sometimes works in our world, and sometimes it doesn’t.

That’s why it’s so important to understand what kind of task you’re using generative AI for.  
If you’re writing a poem or brainstorming ideas, a bit of creative guessing might be fine or even helpful.  
But if you’re looking for facts, doing research, or making decisions, you need to be more careful.

Knowing how the model works helps you know when to trust it and when to double-check.

---

## What You See Isn’t Always What You Get

Sometimes, AI seems smarter than it really is and that’s because companies quietly add extra tools behind the scenes to help it out.

For example, if you ask an LLM to calculate the square root of 242, it might not know the answer on its own. But some systems will secretly call in a helper, like a little agent that writes and runs a Python programme to do the maths.

Or if you ask it to look up recent research, it might use another agent to search the web or access a database. That’s actually pretty clever! But it also shows that LLMs aren’t perfect for everything, they often need backup.

And here’s the thing: all of that takes a lot of computing power.  
A simple **Casio calculator** can do maths instantly using just a tiny bit of energy — like running on a **tiny solar panel**.  
Meanwhile, an LLM might need a whole **data centre** and a ton of electricity to do the same thing.

So while LLMs are powerful, they’re not always the most efficient tool for the job.
