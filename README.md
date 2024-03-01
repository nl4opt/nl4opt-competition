# nl4opt-dataset

This repo contains the annotated dataset for NL4Opt Competition

# News

- (July 22) Following the discussions with Karthik ([#8](../../discussions/8)) and Sam ([#15](../../discussions/15)), we have decided to remove all lines containing in-sentence "white space tokens" from the NER dataset. The test set has also been revised to the same format, where it will be used evaluate your submissions for Subtask-1.

# Subtasks

Baselines for each subtask are located in the following respositories

- [Subtask 1 - NER](https://github.com/nl4opt/nl4opt-subtask1-baseline)
- [Subtask 2 - generation](https://github.com/nl4opt/nl4opt-subtask2-baseline)

# Dataset

Datasets for the respective tasks are contained in this repo.


# Citation
Please cite our papers below if our dataset or competition aids you in your research.

```
@inproceedings{ramamonjison-etal-2022-augmenting,
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


@InProceedings{pmlr-v220-ramamonjison23a,
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
  pdf = 	 {https://proceedings.mlr.press/v220/ramamonjison23a/ramamonjison23a.pdf},
  url = 	 {https://proceedings.mlr.press/v220/ramamonjison23a.html},
  abstract = 	 {The Natural Language for Optimization (NL4Opt) Competition was created to investigate methods of extracting the meaning and formulation of an optimization problem based on its text description. Specifically, the goal of the competition is to increase the accessibility and usability of optimization solvers by allowing non-experts to interface with them using natural language. We separate this challenging goal into two sub-tasks: (1) recognize and label the semantic entities that correspond to the components of the optimization problem; (2) generate a meaning representation (i.e. a logical form) of the problem from its detected problem entities. The first task aims to reduce ambiguity by detecting and tagging the entities of the optimization problems. The second task creates an intermediate representation of the linear programming (LP) problem that is converted into a format that can be used by commercial solvers. In this report, we present the LP word problem dataset and shared tasks for the NeurIPS 2022 competition. Furthermore, we present the winning solutions. Through this competition, we hope to bring interest towards the development of novel machine learning applications and datasets for optimization modeling.}
}
```

Please also see some of our lab's relevant works"
```
@inproceedings{ramamonjison-etal-2023-latex2solver,
    title = "{L}a{T}e{X}2{S}olver: a Hierarchical Semantic Parsing of {L}a{T}e{X} Document into Code for an Assistive Optimization Modeling Application",
    author = "Ramamonjison, Rindra  and
      Yu, Timothy  and
      Xing, Linzi  and
      Mostajabdaveh, Mahdi  and
      Li, Xiaorui  and
      Fu, Xiaojin  and
      Han, Xiongwei  and
      Chen, Yuanzhe  and
      Li, Ren  and
      Mao, Kun  and
      Zhang, Yong",
    editor = "Bollegala, Danushka  and
      Huang, Ruihong  and
      Ritter, Alan",
    booktitle = "Proceedings of the 61st Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations)",
    month = jul,
    year = "2023",
    address = "Toronto, Canada",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2023.acl-demo.45",
    doi = "10.18653/v1/2023.acl-demo.45",
    pages = "471--478",
    abstract = "We demonstrate an interactive system to help operations research (OR) practitioners convert the mathematical formulation of optimization problems from TeX document format into the solver modeling language. In practice, a manual translation is cumbersome and time-consuming. Moreover, it requires an in-depth understanding of the problem description and a technical expertise to produce the modeling code. Thus, our proposed system TeX2Solver helps partially automate this conversion and help the users build optimization models more efficiently. In this paper, we describe its interface and the components of the hierarchical parsing system. A video demo walk-through is available online at \url{http://bit.ly/3kuOm3x}",
}
```
