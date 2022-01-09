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

}
