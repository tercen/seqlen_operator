# Seqlen operator

##### Description
`Seqlen` operator creates a sequence annotation for a data series

##### Usage

Input projection|.
---|---
`y-axis`        | numeric, input data, per cell 
`x-axis`        | numeric, input data, ordering of the data series

Output relations|.
---|---
`seq`         | numeric, sequence of the input data

##### Details
The operator takes all the values of a cell ordered by the 'x-axis'and gives a sequence number to each data point in the cell.

#### References


##### See Also

[topn_operator](https://github.com/tercen/topn_operator)

#### Examples
