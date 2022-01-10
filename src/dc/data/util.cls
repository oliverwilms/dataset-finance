Class dc.data.util
{

/// Update Date Column from 'MM/DD/YYYY' to 'YYYY-MM-DD'
ClassMethod UpdateDateValues(pInFile As %String = "finance-transactions-08-Jan-2022_08-25.csv", pPath As %String = "/opt/irisbuild/data/") As %Status
{
    Write "Begin UpdateDateValues",!
    Set tEOF = 0
    Set tExtension = $Piece(pInFile,".",2,*)
    Set tRoot = $Piece(pInFile,".",1)
    Set tOutFile = tRoot_"_updateDateValues."_tExtension
    Set tOutFile = pPath_"finance.csv"
    Set tSC = $$$OK
    Set input = pPath_pInFile
    Set output = pPath_tOutFile
    Set timeout = 1
    Open input:("R"):timeout  // read
    Set test1 = $test
    If (0 = test1) { Set tSC = $$$ERROR($$$GeneralError,"Cannot open "_input) }
    Open output:("NRW"):timeout  // new,read,write
    Set test2 = $test
    If (0 = test2) { Set tSC = $$$ERROR($$$GeneralError,"Cannot open "_output) }
    If (0 = tSC) {
        Write $System.Status.GetOneErrorText(tSC),!
        Quit tSC
    }
    For {
        Use input
        Try {
            Read line
        } Catch {
            Set tEOF = 1
        }
        If tEOF Quit
        Use 0
        Write "."
        Set tValue1 = $Piece(line,",",1)
        Set tValue2 = $Piece(line,",",2,*)
        Set tE1 = $Extract(tValue1,1)
        If (tE1 = """") { 
            Set tE2 = $Extract(tValue1,*)
        } Else { Set (tE1,tE2) = "" }
        Set tDate = $Extract(tValue1,1+$Length(tE1),*-$Length(tE2))
        Set tDelim = "/"
        If (tDate [ tDelim) {
            Set tD1 = $Piece(tDate,tDelim,1)
            Set tD2 = $Piece(tDate,tDelim,2)
            Set tD3 = $Piece(tDate,tDelim,3)
            Set tDate = tD3_"-"_tD1_"-"_tD2
        }
        Set tValue1 = tE1_tDate_tE2
        Use output
        Write tValue1_","_tValue2,!
    }
    Close input
    Close output
    Use 0
    Write "UpdateDateValues Done",!
    Quit tSC
}

}
