* = $400
lda #10
ldx #10
.byte $02 ; PAT
.byte $12 ; PXT
!!x
!!$0500 = #0
!!$0501 = #1
!!$0502 = #2
!!$0503 = #3
.byte $32 ; TTA
.byte $42 ; TTX
rts