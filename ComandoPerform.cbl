      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:12/09/2022
      * Purpose:COMANDO PERFORM
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDOPERFORM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       PERFORM P3-INICIO     THRU  P3-FIM.
       PERFORM P4-INICIO     THRU  P4-FIM.
       PERFORM P1-INICIO     THRU  P1-FIM.
       PERFORM P2-INICIO     THRU  P2-FIM.

       P1-INICIO.
           DISPLAY 'PARAGRAFO 1'.
       P1-FIM.

       P2-INICIO.
           DISPLAY 'PARAGRAFO 2'.
       P2-FIM.


       P3-INICIO.
           DISPLAY 'PARAGRAFO 3'.
       P3-FIM.

       P4-INICIO.
            STOP RUN.
       P4-FIM.


       END PROGRAM COMANDOPERFORM.
