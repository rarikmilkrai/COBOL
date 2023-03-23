      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:22/03
      * Purpose: TRABALHANDO COM STRINGS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRINGS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM-1                  PIC 99.
       77 WS-TM-2                  PIC 99.
       COPY 'LAYOUT001'
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 'RARIK'           TO WS-PRIMEIRO-NOME
            MOVE 'SOUZA'           TO WS-ULTIMO-NOME
            MOVE '55555555555'     TO WS-TELEFONE
            MOVE 'KJJKJKJK'        TO WS-RUA
            MOVE 'KLKLKK'          TO WS-BAIRRO
            MOVE 'PE'              TO WS-CIDADE
            MOVE 'PE'              TO WS-UF
            MOVE '01010101'        TO WS-CEP
            MOVE 'BRASILEIRA'      TO WS-NACIONALIDADE
            MOVE 'DEVELOPER'       TO WS-PROFISSAO

            MOVE ZEROS             TO WS-TM1
            INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
                    TALLYING WS-TM-1 FOR LEADING ' '

            DISPLAY '1 - NOME COMPLETO' WS-PRIMEIRO-NOME
              (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM-1)) ' '
                                        WS-ULTIMO-NOME

            DISPLAY '2 - TELEFONE ....:' '+'WS-PAIS ' '
                                           '('WS-DDD')'
                                           ''
                                           WS-PREFIXO
                                           '-'
                                           WS-SUFIXO
            DISPLAY '3 - ENDERECO......:'WS-ENDERECO
            DISPLAY '4 - NACIONALIDADE.:'WS-NACIONALIDADE
            DISPLAY '5 - PROFISSAO.....:'WS-PROFISSAO

            STOP RUN.
       END PROGRAM STRINGS.
