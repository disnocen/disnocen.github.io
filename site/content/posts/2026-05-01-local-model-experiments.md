---
title: "Local Model Experiments"
date: 2026-05-01T00:05:00+02:00
draft: false
tags:
  - local-llm
  - ai-research
  - research-workflows
categories:
  - experiments
summary: "Notes on using local models as research tools, especially for cryptography workflows."
showToc: true
TocOpen: false
---

The second thread of this blog is local AI model experimentation. The emphasis is on models as research infrastructure rather than generic chat: retrieval over a private research vault, terminology normalization, structured decomposition, and tool-backed verification.

For cryptography work, the interesting question is not only whether a local model can answer a prompt. It is whether it can help maintain a loop: read the existing notes, preserve the threat model, generate a checkable artifact, run the tool, and revise based on concrete output.

That makes local model posts a natural companion to the cryptography notes. The model workflow is judged by whether it improves the research process.
