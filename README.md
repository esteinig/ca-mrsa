# Phylodynamic modelling of community-associated MRSA 

<a href='https://github.com/esteinig'><img src='docs/logo.png' align="right" height="180" /></a>

![](https://img.shields.io/badge/lang-nextflow-black.svg)
![](https://img.shields.io/badge/version-0.1.0-purple.svg)
![](https://img.shields.io/badge/biorxiv-v1-blue.svg)

This repository is meant to hold the data and preprint materials for our paper `Phylodynamic signals in the emergence of community-associated MRSA`. We welcome all comments or reviews on the preprint, and would encourage interested parties to create an issue in the repository for an open-source discussion. We will publish all data and workflows / model configurations on submission to Biorxiv.

## Overview 

I will upload a pre-preprint for the *Staphylococcus aureus* community following the presentation at the ECR seminar. Please note it is not complete yet and sections or figures may still change, but it is a decent summary of the modelling and the data from Papua New Guinea and Far North Queensland.

* Pre-preprint `v0.4.1`: [Phylodynamic signals in the emergence of community-associated MRSA]() *not yet uploaded*

## Reproducibility

* `Nextflow` pipeline for paper

## Nanopore phylodynamic modelling of bacterial outbreaks

* Multiplex nuclease flush protocol for 24-36 isolates / flowcell
* SNP polishers and hybrid lineage reconstruction with nanopore + Illumina background
* Bayesian phylodynamic modelling for outbreak epidemiology (Phybeast + Beastling API + `Nextflow` + GPU)
