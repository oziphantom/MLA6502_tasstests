* = $400
lda #10
ldy #10
.byte $02 ; PAT
.byte $22 ; PYT
!!y
!!$0500 = #0
!!$0501 = #1
!!$0502 = #2
!!$0503 = #3
.byte $32 ; TTA
.byte $52 ; TTY
rts