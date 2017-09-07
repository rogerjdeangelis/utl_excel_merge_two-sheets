Merge two excel sheets and create one SAS dataset

see
https://goo.gl/exStSe
https://communities.sas.com/t5/General-SAS-Programming/Add-column-to-existing-dataset/m-p/378395


  WORKING CODE

      data want;
        merge
           tst1.'sheet1$'n
           tst2.'sheet1$'n;





HAVE  Two excel workbooks
=========================

    test1.xlsx
    test2.xlsx

   download from post

Up to 40 obs from xel1.'sheet1$'n total obs=4

     Obs    VOLS    VOLB

       1     12      58
       2     45      59
       3     56      22
       4     78      30

Up to 40 obs from tst2.'sheet1$'n total obs=4

     Obs    PROBS

       1     0.50
       2     0.80
       3     0.25
       4     0.35


WANT


Up to 40 obs WORK.WANT total obs=4

Obs    VOLS    VOLB    PROBS

 1      12      58      0.50
 2      45      59      0.80
 3      56      22      0.25
 4      78      30      0.35

*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

;

download from post or create your own

libname tst1 "d:/xls/test1.xlsx";
libname tst2 "d:/xls/test2.xlsx";

%utlfkil(d:/xls/want.xlsx);

data want;
  merge
     tst1.'sheet1$'n
     tst2.'sheet1$'n;
run;quit;

