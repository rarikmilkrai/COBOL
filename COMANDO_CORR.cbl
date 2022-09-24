      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:24/09/22
      * Purpose:COMANDO CORRESPONDING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDO_CORR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-LAYOUT-1.
           03 WS-NOME                  PIC X(30).
           03 WS-ENDERECO              PIC X(60).
           03 WS-TELEFONE              PIC X(20).
           03 WS-E-MAIL                PIC X(50).
           03 WS-CIDADE                PIC X(30).
           03 WS-ESTADO                PIC X(30).

       01 WS-LAYOUT-2.
           03 WS-NOME                  PIC X(30).
           03 WS-ENDERECO              PIC X(60).
           03 WS-TELEFONE              PIC X(20).
           03 WS-E-MAIL                PIC X(50).
           03 WS-UF                    PIC X(02).
           03 WS-CIDADE                PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE 'RARIKMILKRAI SOUZA' TO  WS-NOME OF WS-LAYOUT-1
           MOVE 'RUA UM'             TO  WS-ENDERECO OF WS-LAYOUT-1
           MOVE '33333-3333'         TO  WS-TELEFONE OF WS-LAYOUT-1
           MOVE 'EXERCICIO@EXERCICIO'TO  WS-E-MAIL OF WS-LAYOUT-1
           MOVE 'PAULISTA'           TO WS-CIDADE  OF WS-LAYOUT-1
           MOVE 'RECIFE'             TO WS-ESTADO  OF WS-LAYOUT-1

            MOVE WS-LAYOUT-1 TO WS-LAYOUT-2

            DISPLAY 'WS-LAYOUT-1: ' WS-LAYOUT-1
            DISPLAY 'WS-LAYOUT-2: ' WS-LAYOUT-2
            DISPLAY 'WS-LAYOUT-1: ' LENGTH OF WS-LAYOUT-1
            DISPLAY 'WS-LAYOUT-2: ' LENGTH OF WS-LAYOUT-2

            STOP RUN.
       END PROGRAM COMANDO_CORR.
