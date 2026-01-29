# Punjabi Text Simplification Evaluation using Paired t-Test

##  Overview
This project evaluates whether Large Language Models (ChatGPT and Gemini)
statistically simplify Punjabi news text.
The Punjabi Dataset ( Normal VS ChatGPT Vs GEMINI) was prepared by-hand , using 29 lines from a Punjabi corpus of 16M+ tokens. This data was mainly scraped from websites such as news and wikipedia.

Sentence simplification is measured using **sentence length (word count)**
as a readability proxy.

## Methodology
- Dataset: 29 Punjabi news sentences
- Models: ChatGPT, Gemini
- Metric: Word count per sentence
- Test: Paired one-tailed t-test

##  Statistical Tests
- Original vs ChatGPT
- Original vs Gemini
- ChatGPT vs Gemini

##  Results
- Both ChatGPT and Gemini significantly reduce sentence length (p < 0.001)
- Gemini shows slightly higher reduction on average
- Difference between ChatGPT and Gemini is not statistically significant

##  Files
- `data/punjabi_simplification_models.csv` – Dataset
- `analysis.R` – Statistical analysis code

##  Tools
- R (base R, no RStudio required)

## Conclusion
Both models significantly improve readability of Punjabi text,
demonstrating measurable simplification effects.


