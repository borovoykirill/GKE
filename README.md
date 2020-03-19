# GKE
Cluster orchestration with GKE


### Kirill Baravoy

#### Home task: 05

## Application for Traversing Directories

<dl>
  <dt>Requirements:</dt>
  <dd>install python environment : 3.0.0 +</dd>
</dl>
<br>
<dl>
  <dt>Script which lists files of the specified directory. Add the following options:</dt>
  <dd> - output files only from the parent directory </dd>
  <dd> - list files recursively </dd>
  <dd> - filter by file extension </dd>
  <dd> - order output by filename </dd>
  <dd> - order output by date of creation </dd>
</dl>
<br>

$ ./task1.py -h <br>                    
usage: task1.py [-h] [-version] -path PATH [-rec] [-ext [EXT]] [-date]<br>

Optional arguments:<br>
  -h, --help  Show this help message and exit<br>
  -version    Application version<br>
  -path PATH  Output files only from the parent directory<br>
  -rec        List files recursively<br>
  -ext [EXT]  Filter by file extension<br>
  -date       Order output by date<br>
