.include "../C64Libs/CodeMacros.asm"

*= $0400
!!if $0500 > #10 then _greater
ldx #0
rts
_greater
ldx #1
rts