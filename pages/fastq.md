## FASTQ format data

### Summary 
* WGS data from SMOC is produced currently with Novaseq6000.
* h2030gc fastq file names:
    * `<SAMPLE_ID>_<NGS_ID>_<POOL_ID>_<S#>_<LANE>_<R1|R2>.fastq.gz`
* Illumina fastq header:
    * `@<instrument>:<run number>:<flowcell ID>:<lane>:<tile>:<x-pos>:<y-pos> <read>:<is`

Analysis pipelines must account for the run directory name since it is possible that >1 file has the same filename and thus output may be overwritten.

### Details
WGS data from SMOC is produced currently with Novaseq6000.
Files are returned in one directory based on the order and several run directories containing the fastq files.

```
|--- order
   |--- run1
      |- s1_ABC_123_S1_L001_R1.fastq.gz
      |- s1_ABC_123_S1_L001_R2.fastq.gz
   |--- run2
   |--- run3
```

File names are structured as follows:

`<SAMPLE_ID>_<NGS_ID>_<POOL_ID>_<S#>_<LANE>_<R1|R2>.fastq.gz`

where

* `<SAMPLE_ID>`: is the sample ID given in the original sample sheet.
* `<NGS_ID>`: the identifier of the library preparation. Usually does not change unless a new sequencing library needs to be prepared.
* `<POOL_ID>`: the identifier of the pool. Your samples have NA here, as they are not pooled.
* `* <S#>`: 'S' followed by a number given by the sequencer.
* `<LANE>`: flow cell lane
* `*<R1|R2>`: reads R1 and R2 (for paired-end sequencing).

In this way, a library sequenced several times to achieve coverage can have the same name if S# is the same (decided by the sequencer).

The FASTQ files are in directories representing individual runs, for example 221031_A00485_0334_AHNFF5DSX3 is run 334, performed on 31/10/2022 on the Novaseq6000 (A00485) and flow cell AHNFF5DSX3.


## Links
* <https://en.wikipedia.org/wiki/FASTQ_format>
* <https://knowledge.illumina.com/software/general/software-general-reference_material-list/000002211>
* <https://help.basespace.illumina.com/files-used-by-basespace/fastq-files>

