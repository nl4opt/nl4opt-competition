# NL4OPT- Code and Dataset

This repo contains updates on NL4Opt Competition at Neurips 2022 and Its dataset. 

# News
- (Dec, 2024) Our new [benchmark dataset ORQA](https://github.com/nl4opt/ORQA) is now published for public access. The paper was accepted at AAAI 2025: Evaluating LLM Reasoning in the Operations Research Domain with ORQA. [Link](https://arxiv.org/abs/2412.17874)
- (Jun, 2024) New paper is published at INFOR: Optimization modeling and verification from problem specifications using a multi-agent multi-stage LLM framework. [Link](https://www.tandfonline.com/doi/full/10.1080/03155986.2024.2381306)
- (May, 2024) New paper is published at COLLING: Towards Human-aligned Evaluation for Linear Programming Word Problems. [Link](https://aclanthology.org/2024.lrec-main.1438/)
- (July, 2023) New paper is published at ACL: LaTeX2Solver: a Hierarchical Semantic Parsing of LaTeX Document into Code for an Assistive Optimization Modeling Application. [Link](https://aclanthology.org/2023.acl-demo.45/)
- (Dec, 2022) Competition report has been published: NL4Opt Competition: Formulating Optimization Problems Based on Their Natural Language Descriptions. [Link](https://proceedings.mlr.press/v220/ramamonjison23a.html)
- (July, 2022) Following the discussions with Karthik ([#8](../../discussions/8)) and Sam ([#15](../../discussions/15)), we have decided to remove all lines containing in-sentence "white space tokens" from the NER dataset. The test set has also been revised to the same format, where it will be used evaluate your submissions for Subtask-1.

# Subtasks

Baselines for each subtask are located in the following respositories

- [Subtask 1 - NER](https://github.com/nl4opt/nl4opt-subtask1-baseline)
- [Subtask 2 - generation](https://github.com/nl4opt/nl4opt-subtask2-baseline)

# Dataset

Datasets for the respective tasks are contained in this repo.


# Citation
Please cite our papers below if our dataset or competition aids you in your research.

```
@InProceedings{NL4OPT,
  title = 	 {NL4Opt Competition: Formulating Optimization Problems Based on Their Natural Language Descriptions},
  author =       {Ramamonjison, Rindranirina and Yu, Timothy and Li, Raymond and Li, Haley and Carenini, Giuseppe and Ghaddar, Bissan and He, Shiqi and Mostajabdaveh, Mahdi and Banitalebi-Dehkordi, Amin and Zhou, Zirui and Zhang, Yong},
  booktitle = 	 {Proceedings of the NeurIPS 2022 Competitions Track},
  pages = 	 {189--203},
  year = 	 {2022},
  editor = 	 {Ciccone, Marco and Stolovitzky, Gustavo and Albrecht, Jacob},
  volume = 	 {220},
  series = 	 {Proceedings of Machine Learning Research},
  month = 	 {28 Nov--09 Dec},
  publisher =    {PMLR},
  url = 	 {https://proceedings.mlr.press/v220/ramamonjison23a.html},
}

@inproceedings{augmentingORModeling,
  title = "Augmenting Operations Research with Auto-Formulation of Optimization Models From Problem Descriptions",
  author = "Ramamonjison et al,.",
  booktitle = "Proceedings of the 2022 Conference on Empirical Methods in Natural Language Processing: Industry Track",
  month = dec,
  year = "2022",
  address = "Abu Dhabi, UAE",
  publisher = "Association for Computational Linguistics",
  url = "https://aclanthology.org/2022.emnlp-industry.4",
  pages = "29--62",
}
```

