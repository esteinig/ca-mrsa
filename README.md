# Phylodynamic modelling of community-associated MRSA 

<a href='https://github.com/esteinig'><img src='docs/logo.png' align="right" height="180" /></a>

![](https://img.shields.io/badge/lang-nextflow-black.svg)
![](https://img.shields.io/badge/version-0.1.0-purple.svg)
![](https://img.shields.io/badge/biorxiv-v1-blue.svg)

This repository is meant to hold the data and preprint materials for our project `Phylodynamic modelling of community-associated MRSA`. We welcome all comments or reviews on the preprints, and would encourage interested parties to use public reviews on [PubPeer](https://pubpeer.com/search?q=https%3A%2F%2Fdoi.org%2F10.1101%2F2021.04.30.442212+).

## Preprints 

Please note that preprints for this project may not be complete, figures may still change, and manuscripts will be submitted for peer review.

* Preprint `v0.4.2`: [Phylodynamic signatures in the emergence of community-associated MRSA](https://www.biorxiv.org/content/10.1101/2021.04.30.442212v1.abstract)
* Preprint `v0.3.3`: [Phylodynamic modelling of bacterial outbreaks using nanopore sequencing](https://www.biorxiv.org/content/10.1101/2021.04.30.442218v1)

## Sequence Data

All sequence data including meta-data can be found at NCBI BioProject [PRJNA657380](https://www.ncbi.nlm.nih.gov/bioproject?term=PRJNA657380). Supplementary data files in the manuscripts section of this repository contains additional analyses and data tables.

** data is being uploaded **

## Reproducibility

### Bioinformatics

* [`Nextflow` pipeline](https://github.com/np-core/np-phybeast) for the basic phylogenetics workflow; includes instructions for the protoype of `Beastling` which now can be found under development as [`Critter`](https://github.com/esteinig/critter/) on branch `v0.1.0`. Old `Beastling` version used in the preprint is part of [`NanoPath`](https://github.com/np-core/nanopath)
* `Beastling` configurations and `BEAST` model files to replicate runs can be found [in the data folder](manuscripts/data)
* Scripts to run the plotting functions on `BEAST` output log files can be found [in the scripts folder](manuscripts/scripts)
* SNP polishers and hybrid outbreak reconstruction with ONT and Illumina lineage background are implemented in [`NanoPath`](https://github.com/np-core/nanopath) (detailed instructions for running pipelines in preprint)

### Protocols

* Multiplex nuclease flush protocol for 24-36 isolates per flowcell for MinION (detailed protocol in preprint)
