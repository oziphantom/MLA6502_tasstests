.include "../C64Libs/CodeMacros.asm"

*= $0400
!!if $0500 < #10 then _less
ldx #0
rts
_less
ldx #1
rts