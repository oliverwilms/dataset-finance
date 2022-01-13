Class dc.data.finance.util
{

ClassMethod loadData() As %Status
{
#;    Quit $$$OK  // Load the global instead in module.xml
    Set pInFile = "finance-transactions-08-Jan-2022_08-25.csv"
    Set pPath = "/usr/irissys/lib/data/"
    Set tDataFile = pPath_pInFile
    Set tExists = ##class(%File).Exists(pPath)
    If (0 = tExists) Quit $$$ERROR($$$GeneralError,pPath_" does not exist.")
    Set tExists = ##class(%File).Exists(tDataFile)
    If (0 = tExists) Quit $$$ERROR($$$GeneralError,tDataFile_" does not exist.")
    Set tSC = ##class(dc.data.util).UpdateDateValues(pInFile,pPath)
    Set tLoadFile = pPath_"finance.csv"
    // Dynamic SQL
    Set q = """"
    SET myquery = 3
    SET myquery(1) = "LOAD DATA FROM FILE '"_tLoadFile_"'"
    SET x = "INTO dc_data_finance.transact(TranDate,CheckNumber,Merchant,Category,SubCategory,Memo,Credit,Debit,BillPay,DebitCard,Account,Status) VALUES(?Date?,?Check?,Merchant,Category,SubCategory,Memo,Credit,Debit,?Bill Pay?,?Debit Card?,Account,Status)"
    SET myquery(2)= $Translate(x,"?",q)
    SET x = "USING {?from?:{?file?:{?header?:?1?}}}"
    SET myquery(3)= $Translate(x,"?",q)
    SET tStatement = ##class(%SQL.Statement).%New()
    SET qStatus = tStatement.%Prepare(.myquery)
    IF qStatus'=1 {WRITE "%Prepare failed:" DO $System.Status.DisplayError(qStatus) QUIT qStatus}
    SET rset = tStatement.%Execute()
    write !,rset.%RoWCOUNT," records added SQLCODE: ",rset.SQLCODE,!
    /*
    &sql(
        LOAD DATA FROM FILE :tLoadFile 
        INTO dc_data_finance.transact(TranDate,CheckNumber,Merchant,Category,SubCategory,Memo,Credit,Debit,BillPay,DebitCard,Account,Status) VALUES("Date","Check",Merchant,Category,SubCategory,Memo,Credit,Debit,"Bill Pay","Debit Card",Account,Status) 
        USING {"from":{"file":{"header":"1"}}}
    )
    */
    Quit $$$OK
}

}
