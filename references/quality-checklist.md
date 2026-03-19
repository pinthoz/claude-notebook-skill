# Quality Checklist for Academic Notebooks

Writing quality
- Content is entirely in English.
- No emojis are used.
- No decorative separators made only of repeated hash symbols are used.
- No em dash punctuation mark is used.
- Tone is formal, precise, and technically rigorous.
- Markdown is coherent, concise, and free of generic filler language.

Required sections
- Title is present.
- Introduction is present.
- Index section is present near the beginning.
- Dataset snapshot before cleaning is present.
- Dataset snapshot after cleaning is present.
- EDA section is present and interpreted.
- Modeling and validation sections are present.
- Feature importance or interpretability section is present.
- Final section `Conclusion (to be written)` is present with prompts only.
- Limitations and reproducibility sections are present.

Data and methodology
- Data source and schema are documented.
- Data quality checks include missing values, outliers, duplicates, and leakage risks.
- Preprocessing is leakage-safe and reproducible.
- Feature selection method is documented when used.
- PCA and t-SNE visual diagnostics are included when feasible.
- Baseline model is included before advanced models.
- Cross-validation is used for model selection.
- Holdout test usage is explicit and not reused during tuning.

Model diversity
- Notebook includes multiple model families when task type allows.
- At least one linear model is evaluated.
- At least one tree-based model is evaluated.
- At least one ensemble model is evaluated.
- Additional models are included when appropriate to data scale and objective.
- Model inclusion rationale is explicit.

Metrics completeness
- More than one metric is reported per model.
- Classification tasks include threshold-dependent and threshold-independent metrics.
- Regression tasks include both scale-dependent and relative error metrics when appropriate.
- Cross-validation and holdout metrics are both reported where feasible.
- Metric trade-offs are interpreted in business or research terms.
- Variability across folds is reported, not only mean values.

Interpretability and diagnostics
- Feature importance is analyzed with at least one robust method.
- Local or case-level explanations are included when feasible.
- Error analysis identifies failure patterns.
- Calibration or residual diagnostics are included when relevant.
- Importance results are screened for plausibility and leakage signs.

Advanced rigor
- Hyperparameter tuning strategy is justified.
- GridSearchCV or HalvingRandomSearchCV is used when suitable.
- Validation strategy includes StratifiedKFold or grouped alternatives when required.
- cross_val_predict is used for out-of-fold diagnostics where relevant.
- Stability is checked across folds or random seeds.
- Ablation or sensitivity analysis is included for key choices.
- Limitations and threats to validity are explicitly stated.
- Any high variance results include a mitigation or follow-up plan.

Presentation quality
- Plots have titles, axis labels, and units where relevant.
- Plots are shown inline and are not saved to image files by default.
- Tables are readable and sorted to support comparisons.
- Every major section ends with a short interpretation paragraph.
- Notebook narrative supports a clear evidence-based final recommendation.
- Figures and tables are referenced in the surrounding text.

Deployment readiness
- Final selected model is saved as a `.pkl` artifact.
- Artifact is written to a `models/` directory created by the notebook when needed.
