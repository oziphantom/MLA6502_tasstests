.include "../C64Libs/CodeMacros.asm"

*= $0400
!!if $0500 != #10 then _notequal
ldx #1
rts
_notequal
ldx #0
rts