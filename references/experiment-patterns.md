# Experiment Patterns

Use this playbook for academic machine learning notebooks focused on high performance and methodological rigor.

## 1. Scope and scientific framing
- Open with a precise title and a short introduction.
- Add an index with links to major sections.
- State the research or prediction question.
- Define success criteria and practical constraints.
- Write explicit hypotheses and what evidence would support or reject each one.

## 2. Reproducible setup
- Fix random seeds and document deterministic settings.
- Record environment details and package versions.
- Centralize constants and configuration values in one setup cell.

## 3. Data understanding before modeling
- Summarize schema, feature types, and target behavior.
- Show dataset preview before cleaning.
- Audit missing data, duplicates, invalid categories, and outliers.
- Screen for leakage risks, including temporal and post outcome information.
- Show dataset preview after cleaning.
- Include concise interpretations after each key diagnostic.

## 4. EDA depth
- Perform univariate analysis for all important variables.
- Perform bivariate and multivariate analysis against the target.
- Include correlation or dependency analysis and interaction clues.
- Use informative, labeled figures and avoid ornamental charts.

## 5. Baseline and model diversity
- Start with a transparent baseline.
- Evaluate a wide model portfolio when the task allows:
  - Linear or generalized linear methods.
  - Tree based methods.
  - Ensemble methods.
  - Kernel and distance based methods.
  - Neural approaches when justified.
- Use consistent preprocessing pipelines for fair comparisons.

## 6. Validation and optimization
- Use cross validation as default model selection protocol.
- Use stratified or grouped folds where required by the data generating process.
- Prefer StratifiedKFold, StratifiedGroupKFold, and GroupShuffleSplit based on data structure.
- Use cross_val_predict for out-of-fold diagnostics.
- Define hyperparameter spaces with methodological justification.
- Use GridSearchCV or HalvingRandomSearchCV when computationally justified.
- Report fold level variation, not only mean scores.

## 6.1 Representation analysis
- Add PCA visualization to inspect separability and structure.
- Add t-SNE visualization for nonlinear structure exploration where feasible.

## 7. Metrics strategy
- Always report multiple metrics per model.
- Classification tasks should include threshold dependent and threshold independent metrics.
- Regression tasks should include absolute, squared, and scale aware errors.
- Explain trade offs and decision relevance for each metric family.

## 8. Interpretability and diagnostics
- Include global importance analysis, preferably with permutation importance.
- Add local explanations for representative observations when feasible.
- Validate whether important variables are plausible and leakage free.
- Perform systematic error analysis and segment level diagnostics.

## 9. Robustness and sensitivity
- Re run core evaluations across multiple random seeds.
- Include threshold sensitivity analysis for classification decisions.
- Run ablations for major feature groups or preprocessing choices.
- Document where conclusions remain stable and where they do not.

## 10. Closing requirements
- Add limitations and threats to validity.
- Add reproducibility notes.
- Save the final selected model as a `.pkl` file under `models/`, creating the directory if needed.
- End with `Conclusion (to be written)` and provide prompts only.
- Do not write the final narrative conclusion.
