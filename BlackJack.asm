
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
;card table for randomizing cards
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
    ;values of cards in line with cardTable
cardValues BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
           BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
           BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
           BYTE 11,2,3,4,5,6,7,8,9,10,10,10,10
;used cards so only one of each card can be drawn
usedCards BYTE 52 DUP(0)
dealerMessage BYTE "Dealers Cards:", 0
playerMessage BYTE "Players Cards:", 0
;card the player cant see initialy 
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
    ;seed rng 
    call Randomize
    
    newGame:
    call resetGame
    call Clrscr
    ;shows how many chips the player has
    mov dl, 30
    mov dh, 12 
    call Gotoxy
    mov EDX, OFFSET playerChipMessagePre
    call WriteString
    mov EAX, playerChips
    call WriteDec
    mov EDX, OFFSET playerChipMessageSuf
    call WriteString

    ;asks player how much they want to bet
    mov dl, 30
    mov dh, 14
    call Gotoxy
    mov EDX, OFFSET playerBetMessage
    call WriteString

    call ReadInt
    
     ;Reject invalid input
    jo newGame           

    ;Reject zero or negative bets
    cmp eax, 0
    jle newGame                

    ;Reject bets above available chips
    cmp eax, playerChips
    ja newGame
    mov playerBet, eax                

           

    call Clrscr
   ;Prints dealers first card and message
    mov EDX, OFFSET dealerMessage
    call WriteString

    mov dl, 25
    mov dh, 0
    call Gotoxy
    mov EDX, OFFSET cardValueMessage
    call WriteString
    call DrawCard

    ;adds card to score
    mov esi, cardTable[EAX*4]
    mov bl, cardValues[EAX] 
    add dealerScore, bl
    ;counts how many aces dealer has for later
    .IF bl == 11
        inc dealerAce
    .endif

    ;multiplies dealer card count by 12 to print card properly
    movzx eax, dealerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 1
    call PrintCardAt
    inc dealerCardCount

    ;prints dealer score on screen
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec

    ;delaers second card
    call DrawCard
    mov dealerHiddenCard, eax
    mov esi, OFFSET hiddenCard
    mov bl, cardValues[EAX]
    add dealerScore, bl

    ;ace inc
   .IF bl == 11
        inc dealerAce
    .endif

    ;mul for printing card in right spot
    movzx eax, dealerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 1
    call PrintCardAt
    inc dealerCardCount

    ;logic for if dealer has over 21 with an ace (can't get higher than 21 without an ace)
    .IF dealerScore > 21
        dec dealerAce
        sub dealerScore, 10
    .endIF

    ;player message print
    mov dl, 0
    mov dh, 14
    call Gotoxy
    mov EDX, OFFSET playerMessage
    call WriteString

    ;card value message print
    mov dl, 31
    mov dh, 14
    call Gotoxy
    mov EDX, OFFSET cardValueMessage
    call WriteString

    ;card draw logic
    call DrawCard
    mov esi, cardTable[eax*4]
    mov bl, cardValues[EAX]
    add playerScore, bl
    ;keeps track of how many aces the user has
    .IF bl == 11
        inc playerAce
    .endif

    ;card printing
    movzx eax, playerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 15
    call PrintCardAt
    inc playerCardCount

    ;players second card
    call DrawCard
    mov esi, cardTable[eax*4]
    mov bl, cardValues[EAX]
    add playerScore, bl

    ;ace counter
    .IF bl == 11
        inc playerAce
    .endif
    movzx eax, playerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 15
    call PrintCardAt
    inc playerCardCount

   ;same with dealer player cant get over 21 without and ace starting so do ace logic
    .IF playerScore > 21
        dec playerAce
        sub playerScore, 10
    .ENDIF

    ;player live score
    mov dl, 42
    mov dh, 14
    call Gotoxy
    movzx EAX, playerScore
    call WriteDec

    ;both player and dealer get 21 in starting hand. Jump tie reveal dealer hidden card
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

    ;if dealer has 21 starting hand player loses automatically jump dealerWin. Unhide dealer card update live score
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

    ;player has starts with 21 and automatically wins (unless draw) normally 1.5x money but im nice so 2x
    ;unhide dealerhidden card and update live score
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

    ;start of players turn
    playerTurn:
    ;If player has over 21 they lose unless they have an ace
    .IF (playerScore > 21)
        ;if a player has 1 or more aces and over 21 dec acecount and score. Restart player turn
        .IF(playerAce >= 1)
            dec playerAce
            sub playerScore, 10
            jmp playerTurn
        .endIF
        ;updating live scores and dealer hidden card
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

        ;player loss by bust jump dealer win
        jmp dealerWin
    .endIF
    ;update live score 
    mov dl, 42
    mov dh, 14
    call Gotoxy
    movzx EAX, playerScore
    call WriteDec

    ;if player has 21 jump to stand. Idiot proof the game so player doesn't hit on 21
    .IF playerScore == 21
        jmp playerStand
    .endIF
    ;asks player what they want to do (hit or stand)
    mov dl, 0
    mov dh, 25
    call Gotoxy
    mov EDX, OFFSET playerMoveMessage
    call WriteString

    call ReadChar
           
    ;player hit
    cmp al, '1'
    je playerHit

    ;player stand
    cmp al, '2'
    je playerStand

    ;invalid input
    jmp playerTurn


    ;player hit logic
    playerHit:
    ;card draw 
    movzx eax, playerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 15
    call Gotoxy
    call DrawCard
    
    ;adding to player score
    mov esi, cardTable[eax*4]
    mov bl, cardValues[EAX]
    add playerScore, bl
    
    ;ace inc if player drew ace
    .IF bl == 11
        inc playerAce
    .endif
    ;card print
    call PrintCardAt
    inc playerCardCount

    ;jump back to player turn
    jmp playerTurn

    ;player stand
    playerStand:
    ;prints dealer hidden card
    mov dl, 12
    mov dh, 1
    mov EAX, dealerHiddenCard
    mov ESI, cardTable[EAX*4]
    call PrintCardAt

    ;update live score
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec
    
    ;dealer turn logic
    dealerTurn:
    ;checks if dealer score is over 21.If dealer has no aces player wins
    .IF dealerScore > 21
        ;dealer has an ace dec ace count and sub dealerScore
        .IF dealerAce >= 1
            dec dealerAce
            sub dealerScore, 10
            jmp dealerTurn
        .endIF

        ;update dealer live score
        mov dl, 36
        mov dh, 0
        call Gotoxy
        movzx EAX, dealerScore
        call WriteDec

        ;player win jump
        jmp playerWin
    .endIF
    ;update dealer live score
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec

    ;dealer cant hit on greater than 16 so jump determine winner
    .IF dealerScore > 16
        jmp determineWinner
    .endIF
   

   
   ;dealer hit logic
    dealerHit:
    ;delay to look better
    mov eax, 1000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/

    ;draw card
    call DrawCard
    mov esi, cardTable[EAX*4]
    mov bl, cardValues[EAX] 
    add dealerScore, bl

    ;dealer ace logic
    .IF bl == 11
        inc dealerAce
    .endif

    ;print card
    movzx eax, dealerCardCount  
    imul eax, eax, 12          
    mov dl, al
    mov dh, 1
    call PrintCardAt
    inc dealerCardCount
    
    ;keep running dealer turn till break
    jmp dealerTurn
    
    ;check who has the higher score jmp to that winner. If tie jump tie
    determineWinner:
    mov al, playerScore
    cmp al, dealerScore
    ja playerWin
    jb dealerWin
    jmp tie

    ;player Win logic
    playerWin:
    ;update dealer live score
    mov dl, 36
    mov dh, 0
    call Gotoxy
    movzx EAX, dealerScore
    call WriteDec

    ;delay so player can see dealer cards
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr

    ;player win message print
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET playerWinMessage
    call WriteString

    call printScoresEnd
    
    ;since player won add it to chips so they have 2x the winnings
    mov eax, playerBet
    add playerChips, eax

    jmp endProg

    ;dealer win logic
    dealerWin:
    ;delay to see dealer cards
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr

    ;dealer win message
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET dealerWinMessage
    call WriteString

    call printScoresEnd

    ;subtract player bet from player chips as they lost
    mov eax, playerBet
    sub playerChips, eax
    jmp endProg

    ;tie logic
    tie:
    ;delay so player can see dealer cards
    mov eax, 2000          
    call Delay  ;https://http.johnnyconsole.com/~console/irvine32-documentation/
    call Clrscr

    ;print tie message
    mov dl, 40
    mov dh, 12
    call Gotoxy
    mov EDX, OFFSET tieMessage
    call WriteString


    call printScoresEnd
    jmp endProg

    ;player can choose to walk away or play again 
    endProg:
    ;delay so player can see who won
    mov eax, 2000
    call Delay
    call Clrscr

    
    mov dl, 35
    mov dh, 12
    call Gotoxy
    
    ;if player has 0 chips they lost so jump to game over
    .IF playerChips == 0
        mov edx, OFFSET playerOutChips
        call WriteString
        call Crlf
        call WaitMsg
        jmp gameOver
    .ENDIF

    ;print asking player if they want to play again. Also tells them how many chips they have
    mov EDX, OFFSET playAgainMessage
    call WriteString

    mov EAX, playerChips
    call WriteDec

    mov EDX, OFFSET playerChipMessageSuf
    call WriteString

    ;loop for player answer to playing again
    readReplay:
    call ReadChar

    ;user wants to play again jump new game
    cmp al, '1'
    je newGame

    ;user wants to walk away jump game over
    cmp al, '2'
    je gameOver

    ;invalid input try again
    jmp readReplay
          

    

    

   
    gameOver:
	exit
main endp
;function to print cards without overlapping. Uses pushes and pops stack for all registers i use
PrintCardAt PROC USES eax ebx edx esi
    ;moves to proper row and stores the starting column to go back to
    movzx ebx, dx          
    call Gotoxy

;prints the current character
nextCharacter:
    mov al, [esi]
    inc esi

    ;checks to see if the end of the card has been reached
    cmp al, 0              
    je finished

    ;makes sure cariage return is ignored
    cmp al, 13           
    je nextCharacter

    ;new line is here. jump to next row
    cmp al, 10             
    je nextRow

    ;print the character 
    call WriteChar         
    jmp nextCharacter

    ;moves the row down and jumps back to the starting column
nextRow:
    inc bh                 
    mov dx, bx             
    call Gotoxy
    jmp nextCharacter

;card is done being printed
finished:
    ret
PrintCardAt ENDP

;gets the random number and makes sure that card hasn't been drawn yet. Also when a card is used it sets that flag in usedCards
DrawCard PROC
tryAgain:
    mov eax, 52
    call RandomRange

    cmp usedCards[eax], 0
    jne tryAgain

    mov usedCards[eax], 1
    ret
DrawCard ENDP
;prints the scores at the end of the game
printScoresEnd PROC USES eax edx

    mov dl, 30
    mov dh, 14
    call Gotoxy

    ;prints player score and message
    mov edx, OFFSET playerScoreMessage
    call WriteString
    movzx eax, playerScore
    call WriteDec

    mov dl, 48
    mov dh, 14
    call Gotoxy

    ;prints dealer score and message
    mov edx, OFFSET dealerScoreMessage
    call WriteString
    movzx eax, dealerScore
    call WriteDec

    ret
printScoresEnd ENDP
;resets all the variables that need to be
resetGame PROC USES eax ecx edi
    mov dealerScore, 0
    mov playerScore, 0

    mov dealerAce, 0
    mov playerAce, 0

    mov dealerCardCount, 0
    mov playerCardCount, 0

    mov dealerHiddenCard, 0
    mov playerBet, 0

    ;resets used cards 
    cld
    mov edi, OFFSET usedCards
    mov ecx, LENGTHOF usedCards
    xor eax, eax
    ;memory filler (fills usedCards with 0s)
    rep stosb

   
    ret
resetGame ENDP

END main
