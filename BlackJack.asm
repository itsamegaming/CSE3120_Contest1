
INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096

.data
; Ace
clubsAce BYTE " _________",13,10,"|A        |",13,10,"|+   *    |",13,10,"|    !    |",13,10,"|  *-+-*  |",13,10,"|    |    |",13,10,"|   ~~~  +|",13,10,"|        V|",13,10," ~~~~~~~~~ ",13,10,0
diamondsAce BYTE " _________",13,10,"|A        |",13,10,"|O  /~\   |",13,10,"|  / ^ \  |",13,10,"| ( <O> ) |",13,10,"|  \ v /  |",13,10,"|   \_/  O|",13,10,"|        V|",13,10," ~~~~~~~~~ ",13,10,0
heartsAce BYTE " _________",13,10,"|A        |",13,10,"|# _   _  |",13,10,"| / ~V~ \ |",13,10,"| \ Bej / |",13,10,"|  \ # /  |",13,10,"|   `.'  #|",13,10,"|        V|",13,10," ~~~~~~~~~ ",13,10,0
spadesAce BYTE " _________",13,10,"|A        |",13,10,"|@   *    |",13,10,"|   / \   |",13,10,"|  /_@_\  |",13,10,"|    !    |",13,10,"|   ~ ~  @|",13,10,"|        V|",13,10," ~~~~~~~~~ ",13,10,0

; King
clubsKing BYTE " _________",13,10,"|K |/|\|  |",13,10,"|+ /o,o\  |",13,10,"|  \_-_/  |",13,10,"| ~-_-~-_ |",13,10,"|  /~-~\  |",13,10,"|  \o`o/ +|",13,10,"|  |\|/| X|",13,10," ~~~~~~~~~ ",13,10,0
diamondsKing BYTE " _________",13,10,"|K |/|\|  |",13,10,"|O |o.o|  |",13,10,"|   \v/   |",13,10,"|  XXXXX  |",13,10,"|   /^\   |",13,10,"|  |o'o| O|",13,10,"|  |\|/| X|",13,10," ~~~~~~~~~ ",13,10,0
heartsKing BYTE " _________",13,10,"|K |/|\|  |",13,10,"|# %*,*%  |",13,10,"|  \_o_/  |",13,10,"| #>-=-<# |",13,10,"|  /~o~\  |",13,10,"|  %*'*% #|",13,10,"|  |\|/| X|",13,10," ~~~~~~~~~ ",13,10,0
spadesKing BYTE " _________",13,10,"|K |/|\|  |",13,10,"|@ \- -/  |",13,10,"| ! |-|   |",13,10,"|  % I %  |",13,10,"|   |-| ! |",13,10,"|  /- -\ @|",13,10,"|  |\|/| X|",13,10," ~~~~~~~~~ ",13,10,0

; Queen
clubsQueen BYTE " _________",13,10,"|Q |~~~|  |",13,10,"|+ /o,o\  |",13,10,"|  \_-_/  |",13,10,"| _-~+_-~ |",13,10,"|  /~-~\  |",13,10,"|  \o`o/ +|",13,10,"|  |___| Q|",13,10," ~~~~~~~~~ ",13,10,0
diamondsQueen BYTE " _________",13,10,"|Q |~~~|  |",13,10,"|O |o.o|  |",13,10,"|   \v/   |",13,10,"|  XXOXX  |",13,10,"|   /^\   |",13,10,"|  |o'o| O|",13,10,"|  |___| Q|",13,10," ~~~~~~~~~ ",13,10,0
heartsQueen BYTE " _________",13,10,"|Q |~~~|  |",13,10,"|# %*,*%  |",13,10,"|  \_o_/  |",13,10,"| -=<*>=- |",13,10,"|  /~o~\  |",13,10,"|  %*'*% #|",13,10,"|  |___| Q|",13,10," ~~~~~~~~~ ",13,10,0
spadesQueen BYTE " _________",13,10,"|Q |~~~|  |",13,10,"|@ \- -/  |",13,10,"| o |-|   |",13,10,"|  I % I  |",13,10,"|   |-| o |",13,10,"|  /- -\ @|",13,10,"|  |___| Q|",13,10," ~~~~~~~~~ ",13,10,0

; Jack
clubsJack BYTE " _________",13,10,"|J /~~|_  |",13,10,"|+ | o`,  |",13,10,"|  | -|   |",13,10,"| =~)+(_= |",13,10,"|   |- |  |",13,10,"|  `.o | +|",13,10,"|  ~|__/ P|",13,10," ~~~~~~~~~ ",13,10,0
diamondsJack BYTE " _________",13,10,"|J /~~|_  |",13,10,"|O ( o\   |",13,10,"|  ! \l   |",13,10,"| ^^^Xvvv |",13,10,"|   l\ I  |",13,10,"|   \o ) O|",13,10,"|  ~|__/ P|",13,10," ~~~~~~~~~ ",13,10,0
heartsJack BYTE " _________",13,10,"|J /~~|_  |",13,10,"|# % *`.  |",13,10,"|  % <~   |",13,10,"| %% / %% |",13,10,"|   _> %  |",13,10,"|  `,* % #|",13,10,"|  ~|__/ P|",13,10," ~~~~~~~~~ ",13,10,0
spadesJack BYTE " _________",13,10,"|J /~~|_  |",13,10,"|@ ! -\   |",13,10,"|  \ -!   |",13,10,"|  ',\',  |",13,10,"|   I- \  |",13,10,"|   \- I @|",13,10,"|  ~|__/ P|",13,10," ~~~~~~~~~ ",13,10,0

; Ten
clubsTen BYTE " _________",13,10,"|10+   +  |",13,10,"|+   +    |",13,10,"|  +   +  |",13,10,"|         |",13,10,"|  +   +  |",13,10,"|    +   +|",13,10,"|  +   +0l|",13,10," ~~~~~~~~~ ",13,10,0
diamondsTen BYTE " _________",13,10,"|10O   O  |",13,10,"|O   O    |",13,10,"|  O   O  |",13,10,"|         |",13,10,"|  O   O  |",13,10,"|    O   O|",13,10,"|  O   O0l|",13,10," ~~~~~~~~~ ",13,10,0
heartsTen BYTE " _________",13,10,"|10#   #  |",13,10,"|#   #    |",13,10,"|  #   #  |",13,10,"|         |",13,10,"|  #   #  |",13,10,"|    #   #|",13,10,"|  #   #0l|",13,10," ~~~~~~~~~ ",13,10,0
spadesTen BYTE " _________",13,10,"|10@   @  |",13,10,"|@   @    |",13,10,"|  @   @  |",13,10,"|         |",13,10,"|  @   @  |",13,10,"|    @   @|",13,10,"|  @   @0l|",13,10," ~~~~~~~~~ ",13,10,0

; Nine
clubsNine BYTE " _________",13,10,"|9 +   +  |",13,10,"|+        |",13,10,"|  +   +  |",13,10,"|    +    |",13,10,"|  +   +  |",13,10,"|        +|",13,10,"|  +   + 6|",13,10," ~~~~~~~~~ ",13,10,0
diamondsNine BYTE " _________",13,10,"|9 O   O  |",13,10,"|O        |",13,10,"|  O   O  |",13,10,"|    O    |",13,10,"|  O   O  |",13,10,"|        O|",13,10,"|  O   O 6|",13,10," ~~~~~~~~~ ",13,10,0
heartsNine BYTE " _________",13,10,"|9 #   #  |",13,10,"|#        |",13,10,"|  #   #  |",13,10,"|    #    |",13,10,"|  #   #  |",13,10,"|        #|",13,10,"|  #   # 6|",13,10," ~~~~~~~~~ ",13,10,0
spadesNine BYTE " _________",13,10,"|9 @   @  |",13,10,"|@        |",13,10,"|  @   @  |",13,10,"|    @    |",13,10,"|  @   @  |",13,10,"|        @|",13,10,"|  @   @ 6|",13,10," ~~~~~~~~~ ",13,10,0

; Eight
clubsEight BYTE " _________",13,10,"|8 +   +  |",13,10,"|+        |",13,10,"|  +   +  |",13,10,"|         |",13,10,"|  +   +  |",13,10,"|        +|",13,10,"|  +   + 8|",13,10," ~~~~~~~~~ ",13,10,0
diamondsEight BYTE " _________",13,10,"|8 O   O  |",13,10,"|O        |",13,10,"|  O   O  |",13,10,"|         |",13,10,"|  O   O  |",13,10,"|        O|",13,10,"|  O   O 8|",13,10," ~~~~~~~~~ ",13,10,0
heartsEight BYTE " _________",13,10,"|8 #   #  |",13,10,"|#        |",13,10,"|  #   #  |",13,10,"|         |",13,10,"|  #   #  |",13,10,"|        #|",13,10,"|  #   # 8|",13,10," ~~~~~~~~~ ",13,10,0
spadesEight BYTE " _________",13,10,"|8 @   @  |",13,10,"|@        |",13,10,"|  @   @  |",13,10,"|         |",13,10,"|  @   @  |",13,10,"|        @|",13,10,"|  @   @ 8|",13,10," ~~~~~~~~~ ",13,10,0

; Seven
clubsSeven BYTE " _________",13,10,"|7        |",13,10,"|+ +   +  |",13,10,"|    +    |",13,10,"|  +   +  |",13,10,"|         |",13,10,"|  +   + +|",13,10,"|        L|",13,10," ~~~~~~~~~ ",13,10,0
diamondsSeven BYTE " _________",13,10,"|7        |",13,10,"|O O   O  |",13,10,"|    O    |",13,10,"|  O   O  |",13,10,"|         |",13,10,"|  O   O O|",13,10,"|        L|",13,10," ~~~~~~~~~ ",13,10,0
heartsSeven BYTE " _________",13,10,"|7        |",13,10,"|# #   #  |",13,10,"|    #    |",13,10,"|  #   #  |",13,10,"|         |",13,10,"|  #   # #|",13,10,"|        L|",13,10," ~~~~~~~~~ ",13,10,0
spadesSeven BYTE " _________",13,10,"|7        |",13,10,"|@ @   @  |",13,10,"|    @    |",13,10,"|  @   @  |",13,10,"|         |",13,10,"|  @   @ @|",13,10,"|        L|",13,10," ~~~~~~~~~ ",13,10,0

; Six
clubsSix BYTE " _________",13,10,"|6        |",13,10,"|+ +   +  |",13,10,"|         |",13,10,"|  +   +  |",13,10,"|         |",13,10,"|  +   + +|",13,10,"|        9|",13,10," ~~~~~~~~~ ",13,10,0
diamondsSix BYTE " _________",13,10,"|6        |",13,10,"|O O   O  |",13,10,"|         |",13,10,"|  O   O  |",13,10,"|         |",13,10,"|  O   O O|",13,10,"|        9|",13,10," ~~~~~~~~~ ",13,10,0
heartsSix BYTE " _________",13,10,"|6        |",13,10,"|# #   #  |",13,10,"|         |",13,10,"|  #   #  |",13,10,"|         |",13,10,"|  #   # #|",13,10,"|        9|",13,10," ~~~~~~~~~ ",13,10,0
spadesSix BYTE " _________",13,10,"|6        |",13,10,"|@ @   @  |",13,10,"|         |",13,10,"|  @   @  |",13,10,"|         |",13,10,"|  @   @ @|",13,10,"|        9|",13,10," ~~~~~~~~~ ",13,10,0

; Five
clubsFive BYTE " _________",13,10,"|5        |",13,10,"|+        |",13,10,"|  +   +  |",13,10,"|    +    |",13,10,"|  +   +  |",13,10,"|        +|",13,10,"|        S|",13,10," ~~~~~~~~~ ",13,10,0
diamondsFive BYTE " _________",13,10,"|5        |",13,10,"|O        |",13,10,"|  O   O  |",13,10,"|    O    |",13,10,"|  O   O  |",13,10,"|        O|",13,10,"|        S|",13,10," ~~~~~~~~~ ",13,10,0
heartsFive BYTE " _________",13,10,"|5        |",13,10,"|#        |",13,10,"|  #   #  |",13,10,"|    #    |",13,10,"|  #   #  |",13,10,"|        #|",13,10,"|        S|",13,10," ~~~~~~~~~ ",13,10,0
spadesFive BYTE " _________",13,10,"|5        |",13,10,"|@        |",13,10,"|  @   @  |",13,10,"|    @    |",13,10,"|  @   @  |",13,10,"|        @|",13,10,"|        S|",13,10," ~~~~~~~~~ ",13,10,0

; Four
clubsFour BYTE " _________",13,10,"|4        |",13,10,"|+        |",13,10,"|  +   +  |",13,10,"|         |",13,10,"|  +   +  |",13,10,"|        +|",13,10,"|        b|",13,10," ~~~~~~~~~ ",13,10,0
diamondsFour BYTE " _________",13,10,"|4        |",13,10,"|O        |",13,10,"|  O   O  |",13,10,"|         |",13,10,"|  O   O  |",13,10,"|        O|",13,10,"|        b|",13,10," ~~~~~~~~~ ",13,10,0
heartsFour BYTE " _________",13,10,"|4        |",13,10,"|#        |",13,10,"|  #   #  |",13,10,"|         |",13,10,"|  #   #  |",13,10,"|        #|",13,10,"|        b|",13,10," ~~~~~~~~~ ",13,10,0
spadesFour BYTE " _________",13,10,"|4        |",13,10,"|@        |",13,10,"|  @   @  |",13,10,"|         |",13,10,"|  @   @  |",13,10,"|        @|",13,10,"|        b|",13,10," ~~~~~~~~~ ",13,10,0

; Three
clubsThree BYTE " _________",13,10,"|3        |",13,10,"|+   +    |",13,10,"|         |",13,10,"|    +    |",13,10,"|         |",13,10,"|    +   +|",13,10,"|        E|",13,10," ~~~~~~~~~ ",13,10,0
diamondsThree BYTE " _________",13,10,"|3        |",13,10,"|O   O    |",13,10,"|         |",13,10,"|    O    |",13,10,"|         |",13,10,"|    O   O|",13,10,"|        E|",13,10," ~~~~~~~~~ ",13,10,0
heartsThree BYTE " _________",13,10,"|3        |",13,10,"|#   #    |",13,10,"|         |",13,10,"|    #    |",13,10,"|         |",13,10,"|    #   #|",13,10,"|        E|",13,10," ~~~~~~~~~ ",13,10,0
spadesThree BYTE " _________",13,10,"|3        |",13,10,"|@   @    |",13,10,"|         |",13,10,"|    @    |",13,10,"|         |",13,10,"|    @   @|",13,10,"|        E|",13,10," ~~~~~~~~~ ",13,10,0

; Two
clubsTwo BYTE " _________",13,10,"|2        |",13,10,"|+        |",13,10,"|    +    |",13,10,"|         |",13,10,"|    +    |",13,10,"|        +|",13,10,"|        Z|",13,10," ~~~~~~~~~ ",13,10,0
diamondsTwo BYTE " _________",13,10,"|2        |",13,10,"|O        |",13,10,"|    O    |",13,10,"|         |",13,10,"|    O    |",13,10,"|        O|",13,10,"|        Z|",13,10," ~~~~~~~~~ ",13,10,0
heartsTwo BYTE " _________",13,10,"|2        |",13,10,"|#        |",13,10,"|    #    |",13,10,"|         |",13,10,"|    #    |",13,10,"|        #|",13,10,"|        Z|",13,10," ~~~~~~~~~ ",13,10,0
spadesTwo BYTE " _________",13,10,"|2        |",13,10,"|@        |",13,10,"|    @    |",13,10,"|         |",13,10,"|    @    |",13,10,"|        @|",13,10,"|        Z|",13,10," ~~~~~~~~~ ",13,10,0

;Hidden Card 
hiddenCard BYTE " _________",13,10,"|         |",13,10,"|         |",13,10,"|         |",13,10,"|         |",13,10,"|         |",13,10,"|         |",13,10,"|         |",13,10," ~~~~~~~~~ ",13,10,0
cardTable DWORD OFFSET clubsAce, OFFSET clubsTwo,
    OFFSET clubsThree, OFFSET clubsFour, OFFSET clubsFive,
    OFFSET clubsSix, OFFSET clubsSeven, OFFSET clubsEight,
    OFFSET clubsNine, OFFSET clubsTen, OFFSET clubsJack,
    OFFSET clubsQueen, OFFSET clubsKing

    DWORD OFFSET diamondsAce, OFFSET diamondsTwo,
    OFFSET diamondsThree, OFFSET diamondsFour, OFFSET diamondsFive,
    OFFSET diamondsSix, OFFSET diamondsSeven, OFFSET diamondsEight,
    OFFSET diamondsNine, OFFSET diamondsTen, OFFSET diamondsJack,
    OFFSET diamondsQueen, OFFSET diamondsKing

    DWORD OFFSET heartsAce, OFFSET heartsTwo,
    OFFSET heartsThree, OFFSET heartsFour, OFFSET heartsFive,
    OFFSET heartsSix, OFFSET heartsSeven, OFFSET heartsEight,
    OFFSET heartsNine, OFFSET heartsTen, OFFSET heartsJack,
    OFFSET heartsQueen, OFFSET heartsKing

    DWORD OFFSET spadesAce, OFFSET spadesTwo,
    OFFSET spadesThree, OFFSET spadesFour, OFFSET spadesFive,
    OFFSET spadesSix, OFFSET spadesSeven, OFFSET spadesEight,
    OFFSET spadesNine, OFFSET spadesTen, OFFSET spadesJack,
    OFFSET spadesQueen, OFFSET spadesKing
cardValues BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
           BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
           BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
           BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
usedCards BYTE 52 DUP(0)
dealerMessage BYTE "Dealers Cards:", 0
playerMessage BYTE "Players Cards:", 0
dealerHiddenCard DWORD ?
dealerScore BYTE 0
playerScore BYTE 0

dealerAce BYTE 0
playerAce BYTE 0

dealerWinMessage BYTE "Dealer has Won",0
playerWinMessage BYTE "Player has Won",0
tieMessage BYTE "It is a tie!",0
playerMoveMessage BYTE "Hit(1) or Stand(2)",0
playerScoreMessage BYTE "Player Score: ",0
dealerScoreMessage BYTE "Dealer Score: ",0
playerCardCount BYTE 0
dealerCardCount BYTE 0
.code
main proc
    call Randomize
    mov EDX, OFFSET dealerMessage
    call WriteString
     
    call DrawCard
    
    mov esi, cardTable[EAX*4]
    mov bl, cardValues[EAX] 
    add dealerScore, bl
    .IF bl == 11
        inc dealerAce
    .endif
    movzx eax, dealerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 1
    call PrintCardAt
    inc dealerCardCount

    call DrawCard
    mov dealerHiddenCard, eax
    mov esi, OFFSET hiddenCard
    mov bl, cardValues[EAX]
    add dealerScore, bl
   .IF bl == 11
        inc dealerAce
    .endif
    movzx eax, dealerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 1
    call PrintCardAt
    inc dealerCardCount

    
    .IF dealerScore > 21
        dec dealerAce
        sub dealerScore, 10
    .endIF


    mov dl, 0
    mov dh, 14
    call Gotoxy
    mov EDX, OFFSET playerMessage
    call WriteString

    call DrawCard
    mov esi, cardTable[eax*4]
    mov bl, cardValues[EAX]
    add playerScore, bl
    .IF bl == 11
        inc playerAce
    .endif
    movzx eax, playerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 15
    call PrintCardAt
    inc playerCardCount

    call DrawCard
    mov esi, cardTable[eax*4]
    mov bl, cardValues[EAX]
    add playerScore, bl
    .IF bl == 11
        inc playerAce
    .endif
    movzx eax, playerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 15
    call PrintCardAt
    inc playerCardCount
    .IF playerScore > 21
        dec playerAce
        sub playerScore, 10
    .ENDIF
    .IF dealerScore == 21 && playerScore == 21
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        jmp tie
    .endIF
    .IF dealerScore == 21 
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        jmp dealerWin
    .endif
    .IF playerScore == 21
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        jmp playerWin
    .endIF

    playerTurn:
    .IF (playerScore > 21)
        .IF(playerAce >= 1)
            dec playerAce
            sub playerScore, 10
            jmp playerTurn
        .endIF
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        jmp dealerWin
    .endIF
    .IF playerScore == 21
        jmp playerStand
    .endIF
    mov dl, 0
    mov dh, 25
    call Gotoxy
    mov EDX, OFFSET playerMoveMessage
    call WriteString

    Call ReadInt
    cmp EAX, 1
    je playerHit
    jmp playerStand



    playerHit:
    movzx eax, playerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 15
    call Gotoxy

    call DrawCard
    mov esi, cardTable[eax*4]
    mov bl, cardValues[EAX]
    add playerScore, bl
    .IF bl == 11
        inc playerAce
    .endif
    call PrintCardAt
    inc playerCardCount
    jmp playerTurn

    playerStand:
    mov dl, 12
    mov dh, 1
    mov EAX, dealerHiddenCard
    mov ESI, cardTable[EAX*4]
    call PrintCardAt
   
    

    dealerTurn:
    .IF dealerScore > 21
        .IF dealerAce >= 1
            dec dealerAce
            sub dealerScore, 10
            jmp dealerTurn
        .endIF
        jmp playerWin
    .endIF

    .IF dealerScore > 16
        jmp determineWinner
    .endIF


   

    dealerHit:


    call DrawCard
    
    mov esi, cardTable[EAX*4]
    mov bl, cardValues[EAX] 
    add dealerScore, bl
    .IF bl == 11
        inc dealerAce
    .endif
    movzx eax, dealerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 1
    call PrintCardAt
    inc dealerCardCount
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    jmp dealerTurn
    

    determineWinner:
    mov al, playerScore
    cmp al, dealerScore
    ja playerWin
    jb dealerWin
    jmp tie


    playerWin:
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET playerWinMessage
    call WriteString
    call printScoresEnd 
    jmp endProg

    dealerWin:
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET dealerWinMessage
    call WriteString
    call printScoresEnd
    jmp endProg
    tie:
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET tieMessage
    call WriteString
    call printScoresEnd
    jmp endProg
    endProg:

	exit
main endp

PrintCardAt PROC USES eax ebx edx esi
    movzx ebx, dx          ; BL = starting column, BH = row
    call Gotoxy

nextCharacter:
    mov al, [esi]
    inc esi

    cmp al, 0              ; End of string?
    je finished

    cmp al, 13             ; Ignore carriage return
    je nextCharacter

    cmp al, 10             ; Handle newline ourselves
    je nextRow

    call WriteChar         ; Print character in AL
    jmp nextCharacter

nextRow:
    inc bh                 ; Move down one row
    mov dx, bx             ; Restore starting column and new row
    call Gotoxy
    jmp nextCharacter

finished:
    ret
PrintCardAt ENDP

DrawCard PROC
tryAgain:
    mov eax, 52
    call RandomRange

    cmp usedCards[eax], 0
    jne tryAgain

    mov usedCards[eax], 1
    ret
DrawCard ENDP
printScoresEnd PROC USES eax edx
    mov dl, 30
    mov dh, 14
    call Gotoxy

    mov edx, OFFSET playerScoreMessage
    call WriteString
    movzx eax, playerScore
    call WriteDec

    mov dl, 48
    mov dh, 14
    call Gotoxy

    mov edx, OFFSET dealerScoreMessage
    call WriteString
    movzx eax, dealerScore
    call WriteDec

    ret
printScoresEnd ENDP
END main