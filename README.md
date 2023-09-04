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
  author = "Ramamonjison and others",
  booktitle = "Proceedings of the 2022 Conference on Empirical Methods in Natural Language Processing: Industry Track",
  month = dec,
  year = "2022",
  address = "Abu Dhabi, UAE",
  publisher = "Association for Computational Linguistics",
  url = "https://aclanthology.org/2022.emnlp-industry.4",
  pages = "29--62",
}

@misc{ramamonjison2023nl4opt,
  title={NL4Opt Competition: Formulating Optimization Problems Based on Their Natural Language Descriptions},
  author={Ramamonjison and others},
  year={2023},
  eprint={2303.08233},
  archivePrefix={arXiv},
  primaryClass={cs.CL},
  url={https://arxiv.org/abs/2303.08233}
}
```
