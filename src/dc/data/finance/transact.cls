Class dc.data.finance.transact Extends %Library.Persistent
{

Property TranDate As %Library.Date [ SqlColumnNumber = 2 ];

Property CheckNumber As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 3 ];

Property Merchant As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 4 ];

Property Category As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 5 ];

Property SubCategory As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 6 ];

Property Memo As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 7 ];

Property Credit As %Library.Currency [ SqlColumnNumber = 8 ];

Property Debit As %Library.Currency [ SqlColumnNumber = 9 ];

Property BillPay As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 10 ];

Property DebitCard As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 11 ];

Property Account As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 12 ];

Property Status As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 13 ];
Storage Default
{
<Data name="transactDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TranDate</Value>
</Value>
<Value name="3">
<Value>CheckNumber</Value>
</Value>
<Value name="4">
<Value>Merchant</Value>
</Value>
<Value name="5">
<Value>Category</Value>
</Value>
<Value name="6">
<Value>SubCategory</Value>
</Value>
<Value name="7">
<Value>Memo</Value>
</Value>
<Value name="8">
<Value>Credit</Value>
</Value>
<Value name="9">
<Value>Debit</Value>
</Value>
<Value name="10">
<Value>BillPay</Value>
</Value>
<Value name="11">
<Value>DebitCard</Value>
</Value>
<Value name="12">
<Value>Account</Value>
</Value>
<Value name="13">
<Value>Status</Value>
</Value>
</Data>
<DataLocation>^dc.data.finance.transactD</DataLocation>
<DefaultData>transactDefaultData</DefaultData>
<ExtentSize>76</ExtentSize>
<IdLocation>^dc.data.finance.transactD</IdLocation>
<IndexLocation>^dc.data.finance.transactI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3.64</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Account">
<AverageFieldSize>10.34</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," ARRIVAL"," CASH"," CASH"," CHASE FREEDOM"," COSTCOVISA"," COSTCOVISA"," DISCOVERNAZZ"," DISCOVERNAZZ"," DISCOVERNAZZ"," DSCVRROSE"," GIFTCARD"," OLDNAVY"," REDCARD"," REDCARD"," WFACTIVECASH"),$lb(1,1,6,2,2,12,1,14,14,2,1,1,1,9,1),$lb(536870912,0,1095914057,1095914057,1128354632,0,0,1095976960,1212240709,1212240709,1330861123,0,0,1129272148,1145656131,0,0,0,0,1230193487,1396921938,1146307414,1195984468,1195984468,1330398286,1330398286,1380271171,0,0,1380271171,1464222019,542590529))</Histogram>
<Selectivity>5.2632%</Selectivity>
</Property>
<Property name="BillPay">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Category">
<AverageFieldSize>2.83</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," MAHAL"," YARD"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1296123969,1296123969,1497453124,542720338))</Histogram>
<OutlierSelectivity>.881579:</OutlierSelectivity>
<Selectivity>1.4803%</Selectivity>
</Property>
<Property name="CheckNumber">
<AverageFieldSize>2.05</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,15,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000",368),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,0),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320,859191296,859191296))</Histogram>
<OutlierSelectivity>.973684:</OutlierSelectivity>
<Selectivity>1.3158%</Selectivity>
</Property>
<Property name="Credit">
<AverageFieldSize>2.16</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,15,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000",600),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,0),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320,909127680,909127680))</Histogram>
<OutlierSelectivity>.934211:</OutlierSelectivity>
<Selectivity>1.6447%</Selectivity>
</Property>
<Property name="Debit">
<AverageFieldSize>2.3</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,13,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000",4.49,69.99,2000),$lb(21,21,21,21,21,21,21,21,21,21,21,21,0,0,0),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320,875443257,875443257,909717049,909717049,842018864,842018864))</Histogram>
<OutlierSelectivity>.842105:</OutlierSelectivity>
<Selectivity>1.4354%</Selectivity>
</Property>
<Property name="DebitCard">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Memo">
<AverageFieldSize>4.12</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," FEES"," TAP - PAY - GO $5 (5) UNTIL 12/31/2021"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1178944851,1178944851,1413566496,542392656))</Histogram>
<OutlierSelectivity>.868421:</OutlierSelectivity>
<Selectivity>1.4620%</Selectivity>
</Property>
<Property name="Merchant">
<AverageFieldSize>3.83</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," HSBC"," SHAW ACADEMY"," T-MOBILE"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,1,1,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1213416003,1213416003,1397244247,1397244247,1412255055,542387533))</Histogram>
<OutlierSelectivity>.828947:</OutlierSelectivity>
<Selectivity>1.7105%</Selectivity>
</Property>
<Property name="Status">
<AverageFieldSize>5.59</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," -3.97903932025656E-13"," 0"," 0"," 0"," 1147.53"," 1323.18"," 241.39"," 289.51"," 36.1399999999995"," 478.57"," 603.04"," 95"),$lb(2,2,2,1,1,3,3,1,2,1,2,1,1,1,1),$lb(536870912,0,0,0,0,0,0,0,758328889,758328889,805306368,0,0,0,0,805306368,825308215,825505582,858927918,825438771,842281262,875638323,943271477,842545454,859188785,859188785,876034094,876034094,909128494,909128494,959774720,540620032))</Histogram>
<OutlierSelectivity>.25:</OutlierSelectivity>
<Selectivity>1.8293%</Selectivity>
</Property>
<Property name="SubCategory">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="TranDate">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<Selectivity>100.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^dc.data.finance.transactS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
