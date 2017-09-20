* = $400
lda #10
ldy #10
.byte $12 ; PXT
.byte $22 ; PYT
!!xy
!!$0500 = #0
!!$0501 = #1
!!$0502 = #2
!!$0503 = #3
.byte $42 ; TTX
.byte $52 ; TTY
rts