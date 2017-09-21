.include "../C64Libs/CodeMacros.asm"

*= $0400
!!if $500 == #1 then _test
!!if $500 == $1 then _test
!!if $500,x == #1 then _test
!!if $500,x == $1 then _test
!!if $500,y == #1 then _test
!!if $500,y == $1 then _test
!!if $500 == $1,x then _test
!!if $500 == $1,y then _test
!!if $500,x == $1,x then _test
!!if $500,y == $1,x then _test
!!if $500,x == $1,y then _test
!!if $500,y == $1,y then _test
_test
!!if $500 != #1 then _test2
!!if $500 != $1 then _test2
!!if $500,x != #1 then _test2
!!if $500,x != $1 then _test2
!!if $500,y != #1 then _test2
!!if $500,y != $1 then _test2
!!if $500 != $1,x then _test2
!!if $500 != $1,y then _test2
!!if $500,x != $1,x then _test2
!!if $500,y != $1,x then _test2
!!if $500,x != $1,y then _test2
!!if $500,y != $1,y then _test2
_test2
!!if $500 > #1 then _test3
!!if $500 > $1 then _test3
!!if $500,x > #1 then _test3
!!if $500,x > $1 then _test3
!!if $500,y > #1 then _test3
!!if $500,y > $1 then _test3
!!if $500 > $1,x then _test3
!!if $500 > $1,y then _test3
!!if $500,x > $1,x then _test3
!!if $500,y > $1,x then _test3
!!if $500,x > $1,y then _test3
!!if $500,y > $1,y then _test3
_test3
!!if $500 >= #1 then _test4
!!if $500 >= $1 then _test4
!!if $500,x >= #1 then _test4
!!if $500,x >= $1 then _test4
!!if $500,y >= #1 then _test4
!!if $500,y >= $1 then _test4
!!if $500 >= $1,x then _test4
!!if $500 >= $1,y then _test4
!!if $500,x >= $1,x then _test4
!!if $500,y >= $1,x then _test4
!!if $500,x >= $1,y then _test4
!!if $500,y >= $1,y then _test4
_test4
!!if $500 < #1 then _test5
!!if $500 < $1 then _test5
!!if $500,x < #1 then _test5
!!if $500,x < $1 then _test5
!!if $500,y < #1 then _test5
!!if $500,y < $1 then _test5
!!if $500 < $1,x then _test5
!!if $500 < $1,y then _test5
!!if $500,x < $1,x then _test5
!!if $500,y < $1,x then _test5
!!if $500,x < $1,y then _test5
!!if $500,y < $1,y then _test5
_test5
!!if $500 <= #1 then _test6
!!if $500 <= $1 then _test6
!!if $500,x <= #1 then _test6
!!if $500,x <= $1 then _test6
!!if $500,y <= #1 then _test6
!!if $500,y <= $1 then _test6
!!if $500 <= $1,x then _test6
!!if $500 <= $1,y then _test6
!!if $500,x <= $1,x then _test6
!!if $500,y <= $1,x then _test6
!!if $500,x <= $1,y then _test6
!!if $500,y <= $1,y then _test6
_test6
!!if $500 =0 then _test7
!!if $500,x =0 then _test7
!!if $500,y =0 then _test7
!!if $500 !0 then _test7
!!if $500,x !0 then _test7
!!if $500,y !0 then _test7
!!if $500 =- then _test7
!!if $500,x =- then _test7
!!if $500,y =- then _test7
!!if $500 =+ then _test7
!!if $500,x =+ then _test7
!!if $500,y =+ then _test7
_test7