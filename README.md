## dataset-finance
I created this dataset for InterSystems Datasets Contest to present this repository containing code (a Class) and data (a CSV file) of finance transactions to be loaded into a Global with new SQL LOAD DATA command.

## Dataset Source and license
The dataset was created by me by running a macro in Excel to export transaction data into a comma separated values (CSV) text file.
I had to write and run a classmethod in dc.data.util class to convert data values from 'MM/DD/YYYY' format to 'YYYY-MM-DD' format. 
This dataset can be used under MIT License.

## analyze-dataset-finance
You can analyze the dataset with my app analyze-dataset-finance:
Install [analyze-dataset-finance](https://github.com/oliverwilms/analyze-daset-finance.git)

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

zpm "install dataset-finance"

## Development

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/oliverwilms/dataset-finance.git
```

Open the terminal in this directory and run:

```
$ docker-compose up -d
```

## How to Test it

In IRIS terminal:

```
$ docker-compose exec iris iris session iris

Node: 01c3974cc7dc, Instance: IRIS

USER>s x = ##class(dc.data.util).UpdateDateValues()
Begin UpdateDateValues
............................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................UpdateDateValues Done

USER>do $System.SQL.Shell()
SQL Command Line Shell
----------------------------------------------------

The command prefix is currently set to: <<nothing>>.
Enter <command>, 'q' to quit, '?' for help.
[SQL]USER>>LOAD DATA FROM FILE '/opt/irisbuild/data/finance.csv' INTO dc_data_finance.transact(TranDate,CheckNumber,Merchant,Category,SubCategory,Memo,Credit,Debit,BillPay,DebitCard,Account,Status) VALUES("Date","Check",Merchant,Category,SubCategory,Memo,Credit,Debit,"Bill Pay","Debit Card",Account,Status) USING {"from":{"file":{"header":"1"}}}
1.      LOAD DATA FROM FILE '/opt/irisbuild/data/finance.csv' INTO dc_data_finance.transact(TranDate,CheckNumber,Merchant,Category,SubCategory,Memo,Credit,Debit,BillPay,DebitCard,Account,Status) VALUES("Date","Check",Merchant,Category,SubCategory,Memo,Credit,Debit,"Bill Pay","Debit Card",Account,Status) USING {"from":{"file":{"header":"1"}}}

2007 Rows Affected
statement prepare time(s)/globals/cmds/disk: 0.0255s/2,431/27,070/1ms
          execute time(s)/globals/cmds/disk: 2.7615s/107,078/950,441/18ms
                          cached query class: %sqlcq.USER.cls6
---------------------------------------------------------------------------
[SQL]USER>>
```

## In InterSystems SQL Tools in VSCode
Open repo in VSCode (see develoment above)
Install [InterSystems SQLTools](https://marketplace.visualstudio.com/items?itemName=intersystems-community.sqltools-intersystems-driver)

Use the connection "iris-dataset-titanic"

Open dc.data.Titanic table and see the records:
<img width="968" alt="Screenshot 2021-01-21 at 13 33 53" src="https://user-images.githubusercontent.com/2781759/105340135-8e23ff80-5bee-11eb-9e5e-ff87dfdab047.png">


## How to start coding
This repository is ready to code in VSCode with ObjectScript plugin.
Install [VSCode](https://code.visualstudio.com/), [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) and [ObjectScript](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript) plugin and open the folder in VSCode.
Open /src/cls/PackageSample/ObjectScript.cls class and try to make changes - it will be compiled in running IRIS docker container.
![docker_compose](https://user-images.githubusercontent.com/2781759/76656929-0f2e5700-6547-11ea-9cc9-486a5641c51d.gif)

Feel free to delete PackageSample folder and place your ObjectScript classes in a form
/src/Package/Classname.cls
[Read more about folder setup for InterSystems ObjectScript](https://community.intersystems.com/post/simplified-objectscript-source-folder-structure-package-manager)
