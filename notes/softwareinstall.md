# Software installation notes

Organized by software package.

## Phyparts (local)

0. Make sure your Java version is a JDK, not JRE (see if anything comes up if you do `javac -version`). Download [here](https://www.oracle.com/java/technologies/downloads/#jdk22-mac) if not.
1. In `bin` folder: `git clone https://bitbucket.org/blackrim/phyparts.git`
2. Download Apache Maven [here](https://maven.apache.org/download.cgi), unzip/untar
3. Add Apache Maven location to bash profile as $PATH
4. cd to `bin/phyparts/`, run `./mvn_cmdline.sh`

`java -jar bin/phyparts/target/phyparts-0.0.1-SNAPSHOT-jar-with-dependencies.jar -a 1 -v -d data/newgts/all_singlecopy_orthologs_gene_trees.tre -m data/newgts/species_tree_newick.tre -o output/out`

## Phypartspiecharts (locally)

Running this locally to avoid dealing with downloading Python dependencies / ete3 on Franklin.
I already had `matplotlib` but this can be downloaded by: `python -m pip install -U matplotlib`. 
I also already had `ete3` but this can be downloaded/setup by: 
```{bash}
conda create -n ete3 python=3
conda activate ete3
conda install -c etetoolkit ete3 ete_toolchain
ete3 build check
conda activate ete3
```

The phypartspiecharts code was written for Python 2.7, but I've modified one potential problem line and
will be seeing if this can run with 3.X.