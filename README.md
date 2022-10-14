# R-in-Urban-Analytics
R in Urban Analytics

- R-ArcGIS Bridge

GitHub website: https://github.com/R-ArcGIS/r-bridge

(1) Install latest version: install.packages("arcgisbinding", repos="https://r.esri.com", type="win.binary")

(2) Downloading the release can be manually installed into R (Website: https://r.esri.com/bin/) in ArcGIS Pro> Option > Geoprecessing > R-arcgis bridge

(3) Download for R 4.2 (x64) for ArcGIS Pro 3.0.X (arcgisbinding_1.0.1.300.zip)

**Strongly suggest to install R in D drive** the reason is related to the following problems

- Problem of using R-ArcGIS Bridge

Problem 1: 

lib = "C:/Program Files/R/R-4.2.1/library"' is not writable

Error in askYesNo : Unrecognized response "tryCatch(withRestarts(withCallingHandlers(eval(parse(text=.arc_cmd2)),error=function(e)invokeRestart('big.bada.boom', e, sys.call(sys.parent()-2L)),warning=function(w){.Call('arc_warning', conditionMessage(w), PACKAGE='rarcproxy_pro'); invokeRestart('muffleWarning')}),big.bada.boom=function(e, calls){trace.back <- lapply(calls, deparse)"
Failed to execute (LogisticRegression).

Problem 2: 

Can not find the packages when execute the R-based tool

- Viable  Solution

(1)Install R to D:\ProgramData\R-4.2.1, the path not in C drive can make the default library (D:\ProgramData\R-4.2.1\librar) be writable.

User can use .libPaths() to check the library path.

(2)Window 11 > setting > System Properties > Environment Variables > 

for User Variables , add  

    Variable name: R_LIBS_USER 

   Variable value: D:\ProgramData\R-4.2.1\library

 for System Variables , in Path > New > add
    D:\ProgramData\R-4.2.1\bin\x64
 
 (3) In R > install package with downloaded files
 
 install.packages("C:/Users/Downloads/arcgisbinding_1.0.1.300.zip")
 
 # as the two ways of installing arcgisbinding failed : (1) ArcGIS Pro> Option > Geoprecessing > R-arcgis bridge ; (2) Using the R-tool in r-bridge-install-master\install R bindings
