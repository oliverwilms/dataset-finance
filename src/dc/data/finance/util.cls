Class dc.data.finance.util
{

ClassMethod loadData() As %Status
{
    Set pInFile = "finance-transactions-08-Jan-2022_08-25.csv"
    Set pPath = "/usr/irissys/lib/data/"
    Set tDataFile = pPath_pInFile
    Set tExists = ##class(%File).Exists(pPath)
    If (0 = tExists) Quit $$$ERROR($$$GeneralError,pPath_" does not exist.")
    Set tExists = ##class(%File).Exists(tDataFile)
    If (0 = tExists) Quit $$$OK
    Set tSC = ##class(dc.data.util).UpdateDateValues(pInFile,pPath)
    Set tLoadFile = pPath_"finance.csv"
    &sql(
        LOAD DATA FROM FILE :tLoadFile 
        INTO dc_data_finance.transact(TranDate,CheckNumber,Merchant,Category,SubCategory,Memo,Credit,Debit,BillPay,DebitCard,Account,Status) VALUES("Date","Check",Merchant,Category,SubCategory,Memo,Credit,Debit,"Bill Pay","Debit Card",Account,Status) 
        USING {"from":{"file":{"header":"1"}}}
    )
    Quit $$$OK
}

}
