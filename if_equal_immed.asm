.include "../C64Libs/CodeMacros.asm"

*= $0400
!!if $0500 == #10 then _equal
ldx #1
rts
_equal
ldx #0
rts
