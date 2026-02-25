# sqljsonadaptor

This class extends the <a href="https://docs.intersystems.com/irisforhealthlatest/csp/documatic/%25CSP.Documatic.cls?LIBRARY=%25SYS&CLASSNAME=%25JSON.Adaptor">%JSON.Adaptor</a> class. It adds two SqlProc methods that allow return the same results as the original adaptor's %JSONExportToStream and %JSONExportToString methods view SQL.

Classes that extend this class will be able to run an SQL query as follows:

select mytable_jsonstring(id,mapname) from mytable

where mytable is the table's name, id is the row's ID, and mapname is the name of a map defined for the %JSON.Adaptor (optional) and that will return a column containing the same contents you would expect from the %JSONExportToString method. The same is true for mytable_jsonstream if a stream is preferred.

### Installation

This class is available via IPM. 

`install sqljsonadaptor`
