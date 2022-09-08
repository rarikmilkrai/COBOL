      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:30/08/22
      * Purpose: COMANDO ACCEPT
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ex05.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA                PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


      *      DISPLAY 'DIGITE ALGO: '
      *     ACCEPT WS-MOSTRA
      *      DISPLAY 'WS-MOSTRA: ' WS-MOSTRA ' ' 45 'TEXTO...'

             ACCEPT WS-MOSTRA FROM DATE YYYYMMDD
             DISPLAY WS-MOSTRA

            STOP RUN.
       END PROGRAM ex05.
