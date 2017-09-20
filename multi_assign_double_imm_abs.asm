kTest = 16
kVector = 16

* = $0400
lda #$ff
sta $0500
sta kVector
!!$0500 = #kTest
!!$0501 = kVector
rts