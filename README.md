# Andb GDB repository

Here is the pre-compiled GDB tool for debugging x86_64 corefile out-of-the-box using.

## support OS

* arm64-Darwin: m1/m2 apple chip.
* x86_64-Dwarwin: apple intel chip.
* x86_64-Linux: update for earlier release Linux, CentOS 7 etc. 
* aarch64-Linux: CentOS 7 docker running on m1/m2 apple chip. 

## How to use?

Setting the Envrionment variable.
```
cd /path/to/andb-gdb
source env.sh
```

Using 'gdb'
```
gdb --version
```

## FAQ

* missing libraries

if gdb couldn't be started, it might show the library the system missing, 
please using "brew"(on mac) or "yum"(on centos) to finish the library installing, 
until the all dependents satisfied.

* windows user

for gdb didn't has a windows porting, 
please install WSL or docker to create a Linux container for corefile debugging.   


