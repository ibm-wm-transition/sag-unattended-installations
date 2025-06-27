# Software AG Unattended Installation Assets - DISCONTINUED

Due to IBM's acquisition of webMethods and the fact this repo is built for the webMethods product, this repository is hereby frozen and will not receive any further increment.
Expect this repository to be deleted from Software AG organization.


- [Software AG Unattended Installation Assets - DISCONTINUED](#software-ag-unattended-installation-assets---discontinued)
  - [Folders](#folders)
    - [01.scripts](#01scripts)
    - [02.templates](#02templates)
      - [02.templates.01.setup](#02templates01setup)
      - [02.templates.02.post-setup](#02templates02post-setup)
    - [03.test](#03test)
    - [04.support](#04support)
    - [05.docker-image-builders](#05docker-image-builders)
    - [06.docker-image-builders-test](#06docker-image-builders-test)
    - [10.Labs](#10labs)
  - [Important notes](#important-notes)
  - [Acknowledgements](#acknowledgements)

Collection of scripts to be "curled" during unattended cloud installations for Software AG products

## Folders

### 01.scripts

Contain the scripting assets for this repository. This is the core of the overall project.

### 02.templates

Contains templates for installations which leverage the core functions in the scripting assets. These are further divided in

#### 02.templates.01.setup

#### 02.templates.02.post-setup

### 03.test

Contain test harnesses for the scripts and templates

### 04.support

Utilities supporting the considered use cases, e.g. a kernel properties setter for Elasticsearch.

### 05.docker-image-builders

Examples of ready to use container building assets

### 06.docker-image-builders-test

Test harnesses for the container builders

### 10.Labs

Compound examples of environments

## Important notes

- All files must have unix style end lines even when using docker desktop for Windows. Clone accordingly!
- On February 2023 a breaking correction has been introduced, variable `SUIF_PATCH_SUM_BOOSTSTRAP_BIN` has been refactored to `SUIF_PATCH_SUM_BOOTSTRAP_BIN`.

## Acknowledgements

This repository is using some other libraries under the hood. These are not copied directly, but may be downloaded on demand at runtime.

These libraries include:

- [shunit2](https://github.com/kward/shunit2) - Apache 2 license [here](https://github.com/kward/shunit2/blob/master/LICENSE)

------------------------------

These tools are provided as-is and without warranty or support. They do not constitute part of the webMethods product suite. Users are free to use, fork and modify them, subject to the license agreement. While we welcome contributions, we cannot guarantee to include every contribution in the master project.

