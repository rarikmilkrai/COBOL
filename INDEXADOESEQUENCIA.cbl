      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:25/03/23
      * Purpose: MOSTRAR LEITURA EM LISTA - INDEXADO E SEQUENCIAL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDEXADORESEQUENCIA.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
            SPECIAL-NAMES.
            DECIMAL-POINT IS COMMA.

            INPUT-OUTPUT SECTION.
            FILE-CONTROL.
            SELECT ESTUDANTE ASSIGN TO
            'C:CURSOCOBOL\COBOL\01 - BASICO\BIN\STUDENT.DAT'
               ORGANIZATION IS INDEXED
    ******  MODO DE ACESSO RANDOMICO É PARA PESQUISA PONTUAL.
    ******  MODO DE ACDESSO SEQUENCIA É PARA LEITURA RECURSIVA
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY IS CD-STUDENT
               FILE STATUS IS WS-FS.

       DATA DIVISION.
       FILE SECTION.
       FD ESTUDANTE.
          COPY FD_ESTUDANTE.

       WORKING-STORAGE SECTION.
       01 WS-REGISTRO              PIC X(25) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO.
          03 WS-CD-STUDENT         PIC 9(05).
          03WS-NM-STUDENT          PIC X(20).
       77 WS-EOF                   PIC 9.
          88 EOF-OK                VALUE 0 FALSE 1.
       77 WS-FS                    PIC 99.
          88 FS-OK                 VALUE 0.
       77 WS-CONT-REG              PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            SET EOF-OK             TO FALSE
            SET FS-OK              TO TRUE
            SET WS-CONT-REG        TO 0.

            DISPLAY '*** LISTAGEM DOS ESTUDANTES ***'

            OPEN INPUT ESTUDANTE
            PERFORM UNTIL EOF-OK
               IF FS-OK THEN
      *      **** PARTE COMENTADA É PARA BUSCA ESPECIFICA EM MODO RANDOM
      *           MOVE 6 TO CD-STUDENT --> USAR FORA DO LOOP!!!

                  READ ESTUDANTE INTO WS-REGISTRO
      *               KEY IS WS-CD-STUDENT
      *                INVALID KEY
      *                    DISPLAY 'ESTUDANTE NAO EXISTE.'
      *                NOT INVALID KEY
      *                    DISPLAY WS-CD-STUDENT ' - ' WS-NM-STUDENT

                       AT END
                           SET EOF-OK          TO TRUE
                           DISPLAY 'FIM DA LEITURA.'
                               ADD EXP10       TO WS-CONT-REG
                               DISPLAY
                                   'REGISTRO '
                                   WS-CONT-REG



            STOP RUN.
       END PROGRAM INDEXADORESEQUENCIA.
