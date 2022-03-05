subworkflow sub:
    workdir: "./sub"

rule print:
    input: sub("in.txt")
    output: "out.txt"
    shell: "echo Hello \"$(< {input})\"! > {output}"
