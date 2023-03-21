      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date: 20/03/23
      * Purpose:MOSTRAR O COMANDO EVALUATE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATEAULA39.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-MES                       PIC 99.
           03 WS-STATUS                    PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INITIALISE WS-VARIAVEIS

            DISPLAY 'INFORME UM NUMERO DE MES: '
            ACCEPT WS-MES

            DISPLAY 'INFORME UM NUMERO DE STATUS: '
            ACCEPT WS-STATUS

            EVALUATE WS-MES
               WHEN 01
                   DISPLAY 'JANEIRO'
               WHEN 02
                   DISPLAY 'FEVEREIRO'
               WHEN 03
                   DISPLAY 'MARCO'
               WHEN OTHER
                   DISPLAY 'MES INVALIDO!'

            END-EVALUATE


            STOP RUN.
       END PROGRAM EVALUATEAULA39.
