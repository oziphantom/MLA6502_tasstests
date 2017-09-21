Feature: Test the branches

    This will check that the branches takes the right branch

Scenario Outline:test if == #10
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_equal_immed.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_equal_immed.mla -o if_equal_immed.prg
    And I load prg "if_equal_immed.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 10    | 0  |
    | 0     | 1  |
    | 11    | 1  |
    | 128   | 1  |
    | 127   | 1  |
    | 255   | 1  |

Scenario Outline:test if != #10
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_not_equal_immed.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_not_equal_immed.mla -o if_not_equal_immed.prg
    And I load prg "if_not_equal_immed.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 10    | 1  |
    | 0     | 0  |
    | 11    | 0  |
    | 128   | 0  |
    | 127   | 0  |
    | 255   | 0  |

Scenario Outline:test if > #10
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_greater_immed.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_greater_immed.mla -o if_greater_immed.prg
    And I load prg "if_greater_immed.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 10    | 0  |
    | 0     | 0  |
    | 11    | 1  |
    | 128   | 1  |
    | 127   | 1  |
    | 255   | 1  | 

Scenario Outline:test if >= #10
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_greater_equal_immed.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_greater_equal_immed.mla -o if_greater_equal_immed.prg
    And I load prg "if_greater_equal_immed.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 10    | 1  |
    | 0     | 0  |
    | 11    | 1  |
    | 128   | 1  |
    | 127   | 1  |
    | 255   | 1  | 
       
Scenario Outline:test if < #10
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_less_immed.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_less_immed.mla -o if_less_immed.prg
    And I load prg "if_less_immed.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 10    | 0  |
    | 0     | 1  |
    | 11    | 0  |
    | 128   | 0  |
    | 127   | 0  |
    | 255   | 0  | 

Scenario Outline:test if <= #10
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_less_equal_immed.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_less_equal_immed.mla -o if_less_equal_immed.prg
    And I load prg "if_less_equal_immed.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 10    | 1  |
    | 0     | 1  |
    | 11    | 0  |
    | 128   | 0  |
    | 127   | 0  |
    | 255   | 0  | 

Scenario Outline:test if =0 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_equal0.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_equal0.mla -o if_equal0.prg
    And I load prg "if_equal0.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 0     | 0  |
    | 1     | 1  |
    | 11    | 1  |
    | 128   | 1  |
    | 127   | 1  |
    | 255   | 1  |     

Scenario Outline:test if !0 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_not_equal0.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_not_equal0.mla -o if_not_equal0.prg
    And I load prg "if_not_equal0.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 0     | 1  |
    | 1     | 0  |
    | 11    | 0  |
    | 128   | 0  |
    | 127   | 0  |
    | 255   | 0  | 

Scenario Outline:test if negative 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_negative.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_negative.mla -o if_negative.prg
    And I load prg "if_negative.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x  |
    | 0     | 1  |
    | 1     | 1  |
    | 11    | 1  |
    | 128   | 0  |
    | 127   | 1  |
    | 255   | 0  | 

Scenario Outline:test if positive 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_positive.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_positive.mla -o if_positive.prg
    And I load prg "if_positive.prg"
    Then I write memory at $0500 with <value>
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect register X equal <x>

 Examples:
    | value | x |
    | 0     | 0 |
    | 1     | 0 |
    | 11    | 0 |
    | 128   | 1 |
    | 127   | 0 |
    | 255   | 1 | 

Scenario: test if all the forms assemble ,x ,y src and dest etc 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py if_forms_assemble_test.asm
    And I run the command line: D:/pathstuff/64tass.exe -a if_forms_assemble_test.mla -o if_forms_assemble_test.prg
