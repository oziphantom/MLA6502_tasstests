Feature: Test to make sure the single assigns work

  This check to make sure a single assing assembles, and that it can handle
  immediate, immediate hex, immediate binary, address decimal, address hex

Scenario: Single Assign Immediate Decimal
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign.mla -o single_assign.prg
    And I load prg "single_assign.prg"
    When I execute the procedure at $400 for no more than 5 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign Immediate hex
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_imm_hex.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_imm_hex.mla -o single_assign_imm_hex.prg
    And I load prg "single_assign_imm_hex.prg"
    When I execute the procedure at $400 for no more than 5 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign Immediate bin
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_imm_bin.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_imm_bin.mla -o single_assign_imm_bin.prg
    And I load prg "single_assign_imm_bin.prg"
    When I execute the procedure at $400 for no more than 5 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign 8 bit address 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_8bit.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_8bit.mla -o single_assign_8bit.prg
    And I load prg "single_assign_8bit.prg"
    When I execute the procedure at $400 for no more than 7 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign 16 bit Immediate 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_imm_word.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_imm_word.mla -o single_assign_imm_word.prg
    And I load prg "single_assign_imm_word.prg"
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect to see $0500 equal $12
    Then I expect to see $0501 equal $34

Scenario: Single Assign 16 bit 
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_word.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_word.mla -o single_assign_word.prg
    And I load prg "single_assign_word.prg"
    When I execute the procedure at $400 for no more than 12 instructions
    Then I expect to see $0500 equal $12
    Then I expect to see $0501 equal $34

Scenario: Single Assign dest is label
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_dest_label.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_dest_label.mla -o single_assign_dest_label.prg
    And I load prg "single_assign_dest_label.prg"
    When I execute the procedure at $400 for no more than 7 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign src is label
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_src_label.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_src_label.mla -o single_assign_src_label.prg
    And I load prg "single_assign_src_label.prg"
    When I execute the procedure at $400 for no more than 7 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign src and dest is label
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_dest_src_label.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_dest_src_label.mla -o single_assign_dest_src_label.prg
    And I load prg "single_assign_dest_src_label.prg"
    When I execute the procedure at $400 for no more than 7 instructions
    Then I expect to see $0500 equal 16

Scenario: Single Assign src and dest is label
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py single_assign_special.asm
    And I run the command line: D:/pathstuff/64tass.exe -a single_assign_special.mla -o single_assign_special.prg
    And I load prg "single_assign_special.prg"
    When I execute the procedure at $400 for no more than 7 instructions
    Then I expect to see $0500 greater than 127
    Then I expect to see $0501 less than 128
    Then I expect to see $0502 greater than 0
