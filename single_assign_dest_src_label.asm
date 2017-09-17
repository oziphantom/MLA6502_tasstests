kSrc = 16

* = $400
lda #$FF
sta $0500
!!Dest = #kSrc
rts

* = $500
Dest .byte ?