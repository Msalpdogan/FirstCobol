      ******************************************************************
      * Author:Msalpdogan
      * Date:03:12:2019
      * DETAIL: Hersey deneme yan�lma yontemiyle ��z�l�yor anlad�g�m kadar acikliyorum ciddiye alma ilerde yanl�slar duzelir.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PI.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC S9(3)V9(2) VALUE 175.13.
       01 WS-NUM1-Negative PIC S9(3)V9(2) VALUE -175.25.
       01 WS-NUM1_Answer PIC s9(36)v9(2).
      *parantez i�i karakter say�s� veriyo S olunca + - farketmiyo **--
       01 WS-NUM2 PIC 999 VALUE 122 .
      *3karakterli bir say� 'asd' yaz�nca hata veriyo demekki sadece say� **--
       01 WS-NUM3 PIC S9(3)V9(3) VALUE -325.567.
      * V .'dan sonra ki karakter say�s� veriyo  S oldu�undan + - farketmiyo **--
       01 WS-NAME PIC A(12) VALUE 'MSALPDOGAN'.
      * A string tan�ml�yo ka� karakter alaca��n� veriyon yine ama fazla verirsen sadece max karakter kadar veriyo. **--
       01 WS-ID PIC X(7) VALUE 'AT2705$'.
      * B�t�n ornekler $ i�aretli san�r�m kulland��� DB de kolayl�k sa�l�yo unique id gibi olabiler **--


       PROCEDURE DIVISION.
       ADD WS-NUM1 WS-NUM1-Negative GIVING WS-NUM1_Answer.
      *add a b GIVING answer   **--
       DISPLAY "WS-NUM1 : "WS-NUM1.
       DISPLAY "WS-NUM1-Negative : "WS-NUM1-Negative.
       DISPLAY "WS-NUM1_Answer : "WS-NUM1_Answer.
       DISPLAY "WS-NUM2 : "WS-NUM2.
       DISPLAY "WS-NUM3 : "WS-NUM3.
       DISPLAY "WS-NAME : "WS-NAME.
       DISPLAY "WS-ID : "WS-ID.

       PERFORM A-PARA WS-NUM2 TIMES.
      *A-PARA fonksiyonunu WS-NUM2 kere �al��t�r demek bir nebze for gibi
      *WS-NUM2 de�i�keni max 38 bit oluyor. Buna dikkat edece�iz! , den sonras�n�da 38 bite say�yo

       STOP RUN.

       A-PARA.
           DISPLAY "*********************".
           ADD WS-NUM1_Answer WS-NUM1_Answer GIVING WS-NUM1_Answer.
           DISPLAY "WS-NUM1_Answer : "WS-NUM1_Answer.
