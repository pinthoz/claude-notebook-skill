# Academic Notebook Skill

Purpose
- Create rigorous, complete, academic-style Jupyter notebooks for data science and machine learning tasks.
- Produce writing that feels human and technical, not generic AI boilerplate.
- Keep all notebook content in English.

Mandatory writing style
- Never use emojis.
- Never use decorative heading separators made only of repeated hash symbols.
- Never use the em dash punctuation mark. Use commas, colons, or parentheses instead.
- Use precise, formal language and explicit technical reasoning.
- Keep markdown clean and readable, with meaningful section titles and short, coherent paragraphs.

Mandatory notebook structure
- Index section near the beginning with clickable links to major sections.
- Title.
- Introduction.
- Problem framing and objective.
- Data overview.
- EDA (Exploratory Data Analysis) with high-value visuals and concise interpretation.
- Data quality checks (missing values, outliers, duplicates, leakage risks, target imbalance where relevant).
- Preprocessing and feature engineering.
- Modeling strategy and validation design.
- Cross-validation results.
- Model comparison with a wide model set.
- Feature importance and interpretability.
- Error analysis and failure cases.
- Robustness and sensitivity checks.
- Limitations and threats to validity.
- Reproducibility notes.
- Conclusion section placeholder only (do not write the conclusion text itself).

Modeling requirements
- Always include a strong baseline first.
- Always evaluate a diverse family of models when the task permits, for example:
  - Linear and generalized linear models.
  - Tree-based methods.
  - Ensemble methods (bagging and boosting).
  - Kernel-based methods.
  - Distance-based methods where appropriate.
  - Neural approaches when justified by data size and objective.
- Use cross-validation as the default for model selection.
- Use stratified cross-validation for classification when class imbalance exists.
- Keep a holdout test set for final reporting whenever feasible.

Metrics requirements
- Report multiple complementary metrics, not a single score.
- Classification examples: accuracy, balanced accuracy, precision, recall, F1, ROC-AUC, PR-AUC, log loss, calibration metrics, confusion matrix.
- Regression examples: MAE, MSE, RMSE, R2, adjusted R2 (when relevant), MAPE or sMAPE when appropriate, residual diagnostics.
- Ranking or probabilistic tasks: include task-specific metrics and calibration quality.
- Discuss metric trade-offs and practical implications.

Interpretability requirements
- Always include feature importance analysis when models allow it.
- Prefer both global and local interpretability views when feasible.
- Use permutation importance as a robust model-agnostic baseline.
- Include SHAP or equivalent methods when computationally feasible.
- Validate that top features are plausible and check for leakage signals.

Advanced analysis requirements
- Hyperparameter optimization with a justified search strategy.
- Prefer advanced search tools when suitable, including GridSearchCV and HalvingRandomSearchCV.
- Bias-variance discussion grounded in observed results.
- Learning curves where useful.
- Threshold analysis for classification if decisions depend on operating points.
- Ablation studies for key feature groups or preprocessing choices.
- Stability analysis across random seeds or folds.

Library and API coverage expectations
- Use a broad scikit-learn stack when compatible with the task:
  - sklearn.preprocessing
  - sklearn.feature_selection
  - sklearn.decomposition
  - sklearn.manifold
  - sklearn.pipeline
  - sklearn.ensemble
  - sklearn.linear_model
  - sklearn.svm
  - sklearn.calibration
  - sklearn.neural_network
  - sklearn.metrics
  - sklearn.model_selection
  - sklearn.experimental
- Include xgboost models when the package is available.
- Include gradient boosting models in the model portfolio.
- Favor these validation and search utilities where appropriate:
  - enable_halving_search_cv
  - StratifiedKFold
  - StratifiedGroupKFold
  - GroupShuffleSplit
  - cross_val_predict
  - train_test_split
  - GridSearchCV
  - HalvingRandomSearchCV
  - cross_validate
- Include dimensionality reduction visual diagnostics, at minimum PCA and t-SNE when computationally feasible.

Quality bar
- Each section must answer a clear question and end with a short interpretation.
- Plots must include titles, labeled axes, and units when relevant.
- By default, show plots inline and do not save image files to disk.
- Tables must be readable and sorted to support decisions.
- Code must be reproducible, with explicit seeds and deterministic options when available.
- Keep notebook flow logical, from problem framing to evidence-based model choice.

Deliverable constraints
- Always include both a title and an introduction near the start.
- Always show dataset snapshots before cleaning and after cleaning.
- Always serialize the final selected model as a `.pkl` file in a `models/` directory, creating that directory if needed.
- Always include a final section named `Conclusion (to be written)` with placeholder prompts only.
- Do not auto-generate a final narrative conclusion in that section.
