      ******************************************************************
      * Author:Msalpdogan
      * Date:03:12:2019
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-NAME  PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-NAME
            DISPLAY "Hello " WS-NAME
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
