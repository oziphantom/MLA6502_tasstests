Feature: Test the 8 bit maths

    This will make sure that the + adds, the - subtracts etc

Scenario: test +=
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py 8bit_add.asm
    And I run the command line: D:/pathstuff/64tass.exe -a 8bit_add.mla -o 8bit_add.prg
    And I load prg "8bit_add.prg"
    Then I write memory at $0500 with 6
    Then I write memory at $0501 with $10
    Then I write memory at $0502 with $20
    Then I write memory at $0503 with 128
    When I execute the procedure at $400 for no more than 13 instructions
    Then I expect to see $0500 equal 20
    Then I expect to see $0501 equal $30
    Then I expect to see $0502 equal $20
    Then I expect to see $0503 equal 204

Scenario: test -=
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py 8bit_sub.asm
    And I run the command line: D:/pathstuff/64tass.exe -a 8bit_sub.mla -o 8bit_sub.prg
    And I load prg "8bit_sub.prg"
    Then I write memory at $0500 with 28
    Then I write memory at $0501 with $20
    Then I write memory at $0502 with $10
    Then I write memory at $0503 with 128
    When I execute the procedure at $400 for no more than 13 instructions
    Then I expect to see $0500 equal 14
    Then I expect to see $0501 equal $10
    Then I expect to see $0502 equal $10
    Then I expect to see $0503 equal 52

Scenario: test |=
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py 8bit_or.asm
    And I run the command line: D:/pathstuff/64tass.exe -a 8bit_or.mla -o 8bit_or.prg
    And I load prg "8bit_or.prg"
    Then I write memory at $0500 with 4
    Then I write memory at $0501 with $20
    Then I write memory at $0502 with $10
    Then I write memory at $0503 with 128
    When I execute the procedure at $400 for no more than 10 instructions
    Then I expect to see $0500 equal 20
    Then I expect to see $0501 equal $30
    Then I expect to see $0502 equal $10
    Then I expect to see $0503 equal $8f

Scenario: test &=
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py 8bit_and.asm
    And I run the command line: D:/pathstuff/64tass.exe -a 8bit_and.mla -o 8bit_and.prg
    And I load prg "8bit_and.prg"
    Then I write memory at $0500 with 4
    Then I write memory at $0501 with $30
    Then I write memory at $0502 with $10
    Then I write memory at $0503 with 128
    When I execute the procedure at $400 for no more than 10 instructions
    Then I expect to see $0500 equal 0
    Then I expect to see $0501 equal $10
    Then I expect to see $0502 equal $10
    Then I expect to see $0503 equal $0

Scenario: test &|=
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py 8bit_and_or.asm
    And I run the command line: D:/pathstuff/64tass.exe -a 8bit_and_or.mla -o 8bit_and_or.prg
    And I load prg "8bit_and_or.prg"
    Then I write memory at $0500 with 4
    Then I write memory at $0501 with $30
    Then I write memory at $0502 with $20
    Then I write memory at $0503 with 128
    Then I write memory at $0504 with 1
    When I execute the procedure at $400 for no more than 13 instructions
    Then I expect to see $0500 equal 8
    Then I expect to see $0501 equal $a0
    Then I expect to see $0502 equal $20
    Then I expect to see $0503 equal 128
    Then I expect to see $0504 equal 15
    
