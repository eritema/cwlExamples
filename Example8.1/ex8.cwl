cwlVersion: v1.0
class: CommandLineTool
label: Example trivial wrapper for Java 9 compiler
hints:
  DockerRequirement:
    dockerPull: node:slim
baseCommand: echo
arguments: ["outDir:", $(runtime.outdir), "cores:", $(runtime.cores)]
inputs:
  message:
    type: string
    inputBinding:
      position: 1
outputs:
  example_out:
    type: stdout
stdout: output.txt
