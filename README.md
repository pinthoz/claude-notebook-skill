# Academic Notebook Skill

The agent harness for rigorous academic Jupyter notebook generation. Data science + machine learning. From problem framing to reproducible model artifacts.

by pinthoz

License: Apache-2.0 license  Python 3.8+  Shell  Markdown  Claude Code Skill

## What This Skill Does

This repository packages a complete Claude Code skill focused on high-rigor ML notebooks.

- Enforces formal academic writing style (clean markdown, no emoji, no decorative separators).
- Uses a full notebook lifecycle: framing, EDA, quality audit, modeling, interpretability, robustness, limitations, reproducibility.
- Requires model diversity, strong baselines, cross-validation, and multi-metric analysis.
- Preserves deployment readiness by saving the selected model to `models/*.pkl`.

## Included Components

| Component | Purpose |
|---|---|
| `SKILL.md` | Core behavior, constraints, and required notebook structure |
| `agents/openai.yaml` | Skill display metadata and default prompt |
| `assets/experiment-template.ipynb` | Reusable notebook template |
| `references/notebook-structure.md` | Detailed section-by-section notebook blueprint |
| `references/quality-checklist.md` | Validation checklist for quality and rigor |
| `references/experiment-patterns.md` | Experimental strategy and methodology playbook |
| `scripts/new_notebook.py` | Notebook scaffolding helper from template |
| `install.sh` | Installer for Linux/macOS |
| `install.ps1` | Installer for Windows PowerShell |

## Mandatory Output Expectations

The skill is designed to produce notebooks that include:

- Title, introduction, and near-top clickable index.
- Dataset snapshots before and after cleaning.
- EDA with concise interpretation.
- Data quality checks: missing values, outliers, duplicates, leakage risk, imbalance when relevant.
- Baseline model plus diverse candidate model families.
- Cross-validation-first model selection and holdout evaluation when feasible.
- Interpretability analysis (permutation importance and advanced methods when possible).
- Error analysis, sensitivity checks, and explicit threats to validity.
- Final section named `Conclusion (to be written)` with prompts only.

## Install

### Linux/macOS

```bash
chmod +x install.sh
./install.sh
```

### Windows (PowerShell)

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

Installed path:

```text
~/.claude/skills/academic-notebook
```

## Quick Start

### 1. Clone and install the skill

```bash
git clone https://github.com/pinthoz/notebook-skill.git
cd notebook-skill
chmod +x install.sh && ./install.sh
```

Windows (PowerShell):

```powershell
git clone https://github.com/<your-user>/notebook-skill.git
cd notebook-skill
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### 2. Start with Claude Code

```bash
claude
# Create a complete academic notebook for churn prediction.
# Include baseline + diverse models, cross-validation, interpretability,
# error analysis, robustness checks, and 'Conclusion (to be written)'.
```

### 3. Or run tools directly

```bash
python scripts/new_notebook.py --title "Customer Churn Classification"
python scripts/new_notebook.py --title "House Price Regression" --force
python scripts/new_notebook.py --title "Fraud Detection" --out output/jupyter-notebook/fraud-detection-v2.ipynb
```

## Tutorial: Claude Code

1. Install this skill using `install.sh` or `install.ps1`.
2. Open your project folder and run `claude`.
3. Paste a task with dataset context, target variable, and objective.
4. Ask for all mandatory sections (EDA, data quality audit, modeling, interpretability, robustness, limitations).
5. Confirm the notebook ends with `Conclusion (to be written)` and includes model export to `models/*.pkl`.

Recommended prompt template:

```text
Create a rigorous academic Jupyter notebook in English for [TASK].
Dataset: [SOURCE/SHAPE]. Target: [TARGET].
Include full EDA, data quality checks, leakage-safe preprocessing,
baseline + diverse model families, cross-validation model selection,
multi-metric comparison, interpretability, error analysis,
robustness/sensitivity checks, limitations, reproducibility notes,
and final section 'Conclusion (to be written)' with prompts only.
```

## Tutorial: Claude API

Use the same instructions from `SKILL.md` as your API system prompt.

1. Create `ANTHROPIC_API_KEY` in your environment.
2. Send a request to the Messages API with:
   - `system`: adapted constraints from `SKILL.md`
   - `user`: your notebook task
3. Save the generated notebook content to `.ipynb` (or generate code cells/markdown cells in your pipeline).

Example (cURL):

```bash
curl https://api.anthropic.com/v1/messages \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "content-type: application/json" \
  -d '{
    "model": "claude-sonnet-4-5",
    "max_tokens": 4000,
    "system": "You are an academic notebook generator. Enforce rigorous ML methodology, English-only writing, no emojis, and end with Conclusion (to be written).",
    "messages": [
      {
        "role": "user",
        "content": "Create a notebook plan and initial cells for a churn prediction project."
      }
    ]
  }'
```

## Writing and Quality Rules

- Keep notebook content in English.
- Do not use emojis.
- Do not use decorative heading separators.
- Do not use the em dash character.
- Keep reasoning formal, explicit, and evidence-based.

## License

MIT. See `LICENSE`.
