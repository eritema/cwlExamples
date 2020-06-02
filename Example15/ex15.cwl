#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

label: An example tool demonstrating workflows.
doc: Note that this is an example and the metadata is not necessarily consistent.


inputs:
  tarball: File
  name_of_file_to_extract: string

outputs:
  compiled_class:
    type: File
    outputSource: compile/classfile

steps:
  untar:
    run: tar-parm.cwl
    in:
      tarfile: tarball
      extractfile: name_of_file_to_extract
    out: [extracted_file]

  compile:
    run: arguments.cwl
    in:
      src: untar/extracted_file
    out: [classfile]

s:author:
     - class: s:Person
       s:identifier: https://orcid.org/0000-0002-6130-1021
       s:email: mailto:dyuen@oicr.on.ca
       s:name: Denis Yuen

s:citation: https://dx.doi.org/
s:codeRepository: https://github.com/eritema/cwlExamples/tree/master/Example15
s:dateCreated: "2020-01-29"
s:license: https://spdx.org/licenses/Apache-2.0 
   
s:keywords: edam:topic_0000 , edam:topic_0001 
s:programmingLanguage: java
   
$namespaces:
    s: https://schema.org/
    edam: http://edamontology.org/
   
$schemas:
    - https://schema.org/version/latest/schema.rdf
    - http://edamontology.org/EDAM_1.18.owl

