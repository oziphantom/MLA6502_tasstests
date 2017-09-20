Feature: Test to make sure the multi assigns work

  This check to make sure a multi assing assembles, and that it can handle
  collapsing similar variables, special cases such as NEG, and optimise "runs"

Scenario: Multi assign no special case
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_double_imm.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_double_imm.mla -o multi_assign_double_imm.prg
    And I load prg "multi_assign_double_imm.prg"
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect to see $0500 equal 10
    Then I expect to see $0600 equal 100

Scenario: Multi assign same value
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_single_value_multi_dest.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_single_value_multi_dest.mla -o multi_assign_single_value_multi_dest.prg
    And I load prg "multi_assign_single_value_multi_dest.prg"
    When I execute the procedure at $400 for no more than 9 instructions
    Then I expect to see $0500 equal 16
    Then I expect to see $0501 equal 16
    Then I expect to see $0502 equal 16
    Then I expect to see $0503 equal 16

Scenario: Multi assign one immediate one abs
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_double_imm_abs.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_double_imm_abs.mla -o multi_assign_double_imm_abs.prg
    And I load prg "multi_assign_double_imm_abs.prg"
    When I execute the procedure at $400 for no more than 8 instructions
    Then I expect to see $0500 equal 16
    Then I expect to see $0501 equal 255

Scenario: Multi assign neg pos notzero optimise test
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_neg_pos.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_neg_pos.mla -o multi_assign_neg_pos.prg
    And I load prg "multi_assign_neg_pos.prg"
    When I execute the procedure at $400 for no more than 10 instructions
    Then I expect to see $0500 equal 160
    And I expect to see $0501 equal 32
    And I expect to see $0502 equal 160
    And I expect to see $0503 equal 32
    And I expect to see $0504 equal 127
    And I expect to see $0505 equal 127

Scenario: Multi assign run optimise test
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_no_wrap_run.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_no_wrap_run.mla -o multi_assign_no_wrap_run.prg
    And I load prg "multi_assign_no_wrap_run.prg"
    When I execute the procedure at $400 for no more than 10 instructions
    Then I expect to see $0500 equal 0
    Then I expect to see $0501 equal 1
    Then I expect to see $0502 equal 2
    Then I expect to see $0503 equal 3
    Then I expect register A equal 10 

Scenario: Multi assign run with wrap optimise test
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_no_wrap_run_wrap.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_no_wrap_run_wrap.mla -o multi_assign_no_wrap_run_wrap.prg
    And I load prg "multi_assign_no_wrap_run_wrap.prg"
    When I execute the procedure at $400 for no more than 10 instructions
    Then I expect to see $0500 equal 254
    Then I expect to see $0501 equal 255
    Then I expect to see $0502 equal 0
    Then I expect to see $0503 equal 1
    Then I expect register A equal 10 

Scenario: Multi assign run optimise can't use x test
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_run_no_x.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_run_no_x.mla -o multi_assign_run_no_x.prg
    And I load prg "multi_assign_run_no_x.prg"
    When I execute the procedure at $400 for no more than 15 instructions
    Then I expect to see $0500 equal 0
    Then I expect to see $0501 equal 1
    Then I expect to see $0502 equal 2
    Then I expect to see $0503 equal 3

Scenario: Multi assign run optimise can't use y test
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_run_no_y.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_run_no_y.mla -o multi_assign_run_no_y.prg
    And I load prg "multi_assign_run_no_y.prg"
    When I execute the procedure at $400 for no more than 15 instructions
    Then I expect to see $0500 equal 0
    Then I expect to see $0501 equal 1
    Then I expect to see $0502 equal 2
    Then I expect to see $0503 equal 3

Scenario: Multi assign run optimise can't use xy test
    Given I have a simple overclocked 6502 system
    And That does fail on BRK
    And I run the command line: D:\Python\Python35\python.exe D:\GitHub\MLA6502\tassParser.py multi_assign_run_no_xy.asm
    And I run the command line: D:/pathstuff/64tass.exe -a multi_assign_run_no_xy.mla -o multi_assign_run_no_xy.prg
    And I load prg "multi_assign_run_no_xy.prg"
    When I execute the procedure at $400 for no more than 15 instructions
    Then I expect to see $0500 equal 0
    Then I expect to see $0501 equal 1
    Then I expect to see $0502 equal 2
    Then I expect to see $0503 equal 3