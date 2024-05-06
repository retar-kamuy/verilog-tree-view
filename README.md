# Verilog Tree View

```
ctags --languages=SystemVerilog --langmap=SystemVerilog:+.v --langmap=SystemVerilog:+.vh -R -f tags --kinds-systemverilog=m --output-format=json --fields=+n

ctags --languages=SystemVerilog --langmap=SystemVerilog:+.v --langmap=SystemVerilog:+.vh -R --kinds-systemverilog=CIm --output-format=json --fields=+n -o -
```

[https://docs.ctags.io/en/latest/man/ctags-lang-verilog.7.html](https://docs.ctags.io/en/latest/man/ctags-lang-verilog.7.html)

```
ctags --languages=SystemVerilog --langmap=SystemVerilog:+.v --langmap=SystemVerilog:+.vh --langmap=SystemVerilog:+.svh --langmap=SystemVerilog:+sva -R --kinds-systemverilog=CIm --output-format=json --fields=+n -o -
```
