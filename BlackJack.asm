
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
playerChips DWORD 200
playerChipMessagePre BYTE "You have ",0
playerChipMessageSuf BYTE " chips",0
playerBetMessage BYTE "How much would you like to bet?: ",0
playerBet DWORD 0 
playAgainMessage BYTE "Would you like to play again(1) or walk away(2) with ", 0
playerOutChips BYTE "Game Over, you ran out of chips",0 
cardValueMessage BYTE "Card Value:",0

.code
main proc
    call Randomize
    newGame:
    call resetGame
    call Clrscr
    mov dl, 30
    mov dh, 12 
    call Gotoxy
    mov EDX, OFFSET playerChipMessagePre
    call WriteString
    mov EAX, playerChips
    call WriteDec
    mov EDX, OFFSET playerChipMessageSuf
    call WriteString

    mov dl, 30
    mov dh, 14
    call Gotoxy
    mov EDX, OFFSET playerBetMessage
    call WriteString

    call ReadInt
    
    jo newGame            ; Reject invalid input

    cmp eax, 0
    jle newGame                ; Reject zero or negative bets

    cmp eax, playerChips
    ja newGame
    mov playerBet, eax                ; Reject bets above available chips

           

    call Clrscr
   
    mov EDX, OFFSET dealerMessage
    call WriteString
    mov dl, 25
    mov dh, 0
    call Gotoxy
    mov EDX, OFFSET cardValueMessage
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
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec
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
    mov dl, 31
    mov dh, 14
    call Gotoxy
    mov EDX, OFFSET cardValueMessage
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
    mov dl, 42
    mov dh, 14
    call Gotoxy
    movzx EAX, playerScore
    call WriteDec
    .IF dealerScore == 21 && playerScore == 21
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        mov dl, 36
        mov dh, 0
        call Gotoxy
        movzx EAX, dealerScore
        call WriteDec
        jmp tie
    .endIF
    .IF dealerScore == 21 
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        mov dl, 36
        mov dh, 0
        call Gotoxy
        movzx EAX, dealerScore
        call WriteDec
        jmp dealerWin
    .endif
    .IF playerScore == 21
        mov dl, 12
        mov dh, 1
        mov EAX, dealerHiddenCard
        mov ESI, cardTable[EAX*4]
        call PrintCardAt
        mov dl, 36
        mov dh, 0
        call Gotoxy
        movzx EAX, dealerScore
        call WriteDec
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
        mov dl, 36
        mov dh, 0
        call Gotoxy
        movzx EAX, dealerScore
        call WriteDec
        mov dl, 42
        mov dh, 14
        call Gotoxy
        movzx EAX, playerScore
        call WriteDec
        jmp dealerWin
    .endIF
    mov dl, 42
    mov dh, 14
    call Gotoxy
    movzx EAX, playerScore
    call WriteDec
    .IF playerScore == 21
        jmp playerStand
    .endIF
    mov dl, 0
    mov dh, 25
    call Gotoxy
    mov EDX, OFFSET playerMoveMessage
    call WriteString

    call ReadChar
           

    cmp al, '1'
    je playerHit

    cmp al, '2'
    je playerStand

    jmp playerTurn



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
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec
    

    dealerTurn:
    .IF dealerScore > 21
        .IF dealerAce >= 1
            dec dealerAce
            sub dealerScore, 10
            jmp dealerTurn
        .endIF
        mov dl, 36
        mov dh, 0
        call Gotoxy
        movzx EAX, dealerScore
        call WriteDec
        jmp playerWin
    .endIF
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec
    .IF dealerScore > 16
        jmp determineWinner
    .endIF
   

   

    dealerHit:
    mov eax, 1000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/

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
    
    jmp dealerTurn
    

    determineWinner:
    mov al, playerScore
    cmp al, dealerScore
    ja playerWin
    jb dealerWin
    jmp tie


    playerWin:
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET playerWinMessage
    call WriteString
    call printScoresEnd 
    mov eax, playerBet
    add playerChips, eax
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
    mov eax, playerBet
    sub playerChips, eax
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
    mov eax, 2000
    call Delay
    call Clrscr
    mov dl, 35
    mov dh, 12
    call Gotoxy
    .IF playerChips == 0
        mov edx, OFFSET playerOutChips
        call WriteString
        call Crlf
        call WaitMsg
        jmp gameOver
    .ENDIF

    mov EDX, OFFSET playAgainMessage
    call WriteString

    mov EAX, playerChips
    call WriteDec
    mov EDX, OFFSET playerChipMessageSuf
    call WriteString

    readReplay:
    call ReadChar
    cmp al, '1'
    je newGame
    cmp al, '2'
    je gameOver
    jmp readReplay
          

    

    

   
    gameOver:
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
resetGame PROC USES eax ecx edi
    mov dealerScore, 0
    mov playerScore, 0

    mov dealerAce, 0
    mov playerAce, 0

    mov dealerCardCount, 0
    mov playerCardCount, 0

    mov dealerHiddenCard, 0
    mov playerBet, 0

    
    cld
    mov edi, OFFSET usedCards
    mov ecx, LENGTHOF usedCards
    xor eax, eax
    rep stosb

   
    ret
resetGame ENDP

END main
