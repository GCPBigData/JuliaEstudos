#=
e1:
- Julia version: 1.4.2
- Author: Joe R F Junior - web2ajax@gmail.com
- Date: 2020-07-01
=#
import Pkg; Pkg.add("DataFrames")
import Pkg; Pkg.add("Requests")

using DataFrames
using Requests
urldata = Requests.get_streaming("s3.amazonaws.com/data-sprints-eng-test/data-vendor_lookup-csv.csv")
dfurl = readtable(urldata)



