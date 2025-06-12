---
layout: default
title:  "Probable Facts"
tag: knowing
before: knowing
after: llm-calculator
---

## Probable Facts

How do large language models (LLMs) decide what counts as a fact?

LLMs do not know what is true in the way people do. They work with probabilities. If something is written down often enough, it becomes more likely to be repeated, even if it is not accurate. This is one way of establishing a “fact”, but it is not the only one.

There are many different knowledge systems that define facts in different ways. This is part of a field called epistemology, the study of how we know what we know. For example:
- Banks rely on ledgers, rules, and audits  
- Religions may rely on scripture, tradition, beliefs, or spiritual authority  
- Science uses observation, experimentation, and peer review
- LLMs use statistical patterns in language data  

Each system has its own logic, and each can produce different kinds of *truth*. 

## Comparison of Knowledge Systems

|  | **LLM** | **Science** | **Law** | **Journalism** | **Philosophy** |
|--------|---------------------------|-------------|---------|----------------|----------------|
| **Basis** | Statistical patterns in text | Empirical observation & experimentation | Legal procedures & evidence | Investigation & source verification | Logical reasoning & conceptual analysis |
| **Verification** | None (relies on training data consistency) | Reproducibility, peer review | Cross-examination, burden of proof | Multiple sources, editorial standards | Internal coherence, argument strength |
| **Truth Standard** | Most probable answer based on data | Falsifiability, predictive power | Legal standards (e.g., "beyond reasonable doubt") | Credibility, corroboration | Logical validity, philosophical rigor |
| **Error Handling** | May repeat common misconceptions | Actively seeks to disprove hypotheses | Appeals, retrials | Retractions, corrections | Revisions through debate and critique |
| **Authority** | Prevalence in data | Peer consensus | Courts, judges, legal precedent | Reputable media, eyewitnesses | Philosophical tradition, argument quality |
| **Goal** | Generate plausible responses | Discover new knowledge | Resolve disputes fairly | Inform the public | Understand fundamental concepts |


## How to Use This Widget

In the left column, write something you believe is a probable fact, something that feels true because it is commonly said or widely repeated. 

In the right column, try to reframe that statement using a different way of establishing a fact. This is not about proving something right or wrong, it is about seeing how facts can be shaped by the systems that produce them.

<script
	type="module"
	src="https://gradio.s3-us-west-2.amazonaws.com/5.12.0/gradio.js"
></script>

<gradio-app src="https://willsh1997-probable-fact-examples.hf.space"></gradio-app>


