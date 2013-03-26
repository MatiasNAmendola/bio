#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lexer"
  require "nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 184)
  # This code will be put as-is in the Parser class.
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end
  
  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    27,    15,    28,    25,    26,    15,    17,    18,    19,    20,
    21,    15,    93,    22,    24,    55,    87,    27,    23,    28,
    25,    26,    15,    17,    18,    19,    20,    21,    79,    52,
    22,    24,    16,    51,    14,    23,    16,    44,    45,    85,
    50,    94,    16,    31,    57,    42,    43,    78,    40,    41,
    79,    14,    27,    16,    28,    25,    26,    83,    17,    18,
    19,    20,    21,    29,    79,    22,    24,    96,   nil,    27,
    23,    28,    25,    26,   nil,    17,    18,    19,    20,    21,
   nil,   nil,    22,    24,   nil,   nil,    14,    23,    27,   nil,
    28,    25,    26,   nil,    17,    18,    19,    20,    21,   nil,
   nil,    22,    24,    14,   nil,    27,    23,    28,    25,    26,
   nil,    17,    18,    19,    20,    21,   nil,   nil,    22,    24,
   nil,   nil,    14,    23,    27,   nil,    28,    25,    26,   nil,
    17,    18,    19,    20,    21,   nil,   nil,    22,    24,    14,
   nil,    27,    23,    28,    25,    26,   nil,    17,    18,    19,
    20,    21,   nil,   nil,    22,    24,   nil,   nil,    14,    23,
    27,   nil,    28,    25,    26,   nil,    17,    18,    19,    20,
    21,   nil,   nil,    22,    24,    14,   nil,    27,    23,    28,
    25,    26,   nil,    17,    18,    19,    20,    21,   nil,   nil,
    22,    24,   nil,   nil,    14,    23,    27,   nil,    28,    25,
    26,   nil,    17,    18,    19,    20,    21,   nil,   nil,    22,
    24,    14,   nil,    27,    23,    28,    25,    26,   nil,    17,
    18,    19,    20,    21,   nil,   nil,    22,    24,   nil,   nil,
    14,    23,    27,   nil,    28,    25,    26,   nil,    17,    18,
    19,    20,    21,   nil,   nil,    22,    24,    14,   nil,    27,
    23,    28,    25,    26,   nil,    17,    18,    19,    20,    21,
   nil,   nil,    22,    24,   nil,   nil,    14,    23,    27,   nil,
    28,    25,    26,   nil,    17,    18,    19,    20,    21,   nil,
   nil,    22,    24,    14,   nil,    27,    23,    28,    25,    26,
   nil,    17,    18,    19,    20,    21,   nil,   nil,    22,    24,
   nil,   nil,    14,    23,    27,   nil,    28,    25,    26,   nil,
    17,    18,    19,    20,    21,   nil,   nil,    22,    24,    14,
   nil,    27,    23,    28,    25,    26,   nil,    17,    18,    19,
    20,    21,   nil,   nil,    22,    24,   nil,   nil,    14,    23,
    27,   nil,    28,    25,    26,   nil,    17,    18,    19,    20,
    21,   nil,   nil,    22,    24,    14,   nil,    27,    23,    28,
    25,    26,   nil,    17,    18,    19,    20,    21,   nil,   nil,
    22,    24,   nil,   nil,    14,    23,    27,   nil,    28,    25,
    26,   nil,    17,    18,    19,    20,    21,   nil,   nil,    22,
    24,    14,   nil,    27,    23,    28,    25,    26,   nil,    17,
    18,    19,    20,    21,   nil,   nil,    22,    24,   nil,   nil,
    14,    23,    27,   nil,    28,    25,    26,   nil,    17,    18,
    19,    20,    21,   nil,   nil,    22,    24,    14,   nil,    27,
    23,    28,    25,    26,   nil,    17,    18,    19,    20,    21,
   nil,   nil,    22,    24,   nil,   nil,    14,    23,    27,   nil,
    28,    25,    26,   nil,    17,    18,    19,    20,    21,   nil,
   nil,    22,    24,    14,   nil,    27,    23,    28,    25,    26,
   nil,    17,    18,    19,    20,    21,   nil,   nil,    22,    24,
   nil,   nil,    14,    23,   nil,    44,    45,   nil,   nil,    44,
    45,    31,   nil,    42,    43,    31,   nil,    42,    43,    14,
    40,    41,    36,    37,    38,    39,    34,    35,    33,    32,
    44,    45,   nil,    72,    44,    45,    31,   nil,    42,    43,
    31,    40,    41,    36,    37,    38,    39,    34,    35,    33,
    32,    44,    45,   nil,   nil,    44,    45,    31,   nil,    42,
    43,    31,    40,    41,    36,    37,    38,    39,    34,    35,
    33,    32,    44,    45,   nil,   nil,    44,    45,    31,   nil,
    42,    43,    31,    40,    41,    36,    37,    38,    39,    34,
    35,    33,    32,    44,    45,    92,    48,    91,    47,    31,
   nil,    42,    43,   nil,    40,    41,    36,    37,    38,    39,
    34,    35,    33,    32,    44,    45,    85,   nil,    84,   nil,
    31,   nil,    42,    43,   nil,    40,    41,    36,    37,    38,
    39,    34,    35,    33,    32,    44,    45,   nil,   nil,   nil,
   nil,    31,   nil,    42,    43,   nil,    40,    41,    36,    37,
    38,    39,    34,    35,    33,    32,    44,    45,   nil,   nil,
   nil,   nil,    31,   nil,    42,    43,   nil,    40,    41,    36,
    37,    38,    39,    34,    35,    33,    32,    44,    45,   nil,
   nil,    79,   nil,    31,   nil,    42,    43,   nil,    40,    41,
    36,    37,    38,    39,    34,    35,    33,    32,    44,    45,
   nil,   nil,    79,   nil,    31,   nil,    42,    43,   nil,    40,
    41,    36,    37,    38,    39,    34,    35,    33,    32,    44,
    45,   nil,   nil,   nil,   nil,    31,   nil,    42,    43,   nil,
    40,    41,    36,    37,    38,    39,    34,    35,    33,    32,
    44,    45,   nil,   nil,   nil,   nil,    31,   nil,    42,    43,
   nil,    40,    41,    36,    37,    38,    39,    34,    35,    33,
    44,    45,   nil,   nil,   nil,   nil,    31,   nil,    42,    43,
   nil,    40,    41,    36,    37,    38,    39,    34,    35,    44,
    45,   nil,   nil,   nil,   nil,    31,   nil,    42,    43,   nil,
    40,    41,    36,    37,    38,    39,    44,    45,   nil,   nil,
   nil,   nil,    31,   nil,    42,    43,   nil,    40,    41,    36,
    37,    38,    39,    44,    45,   nil,   nil,   nil,   nil,    31,
   nil,    42,    43,   nil,    40,    41,    44,    45,   nil,   nil,
   nil,   nil,    31,   nil,    42,    43,   nil,    40,    41,    44,
    45,   nil,   nil,   nil,   nil,    31,   nil,    42,    43,   nil,
    40,    41,    44,    45,   nil,   nil,   nil,   nil,    31,   nil,
    42,    43 ]

racc_action_check = [
     0,    88,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     2,    88,     0,     0,    29,    78,    79,     0,    79,
    79,    79,    79,    79,    79,    79,    79,    79,    51,    26,
    79,    79,    88,    25,     0,    79,     0,    62,    62,    89,
    24,    89,     2,    62,    31,    62,    62,    51,    62,    62,
    52,    79,    44,    79,    44,    44,    44,    57,    44,    44,
    44,    44,    44,     1,    91,    44,    44,    92,   nil,    47,
    44,    47,    47,    47,   nil,    47,    47,    47,    47,    47,
   nil,   nil,    47,    47,   nil,   nil,    44,    47,    14,   nil,
    14,    14,    14,   nil,    14,    14,    14,    14,    14,   nil,
   nil,    14,    14,    47,   nil,    45,    14,    45,    45,    45,
   nil,    45,    45,    45,    45,    45,   nil,   nil,    45,    45,
   nil,   nil,    14,    45,    23,   nil,    23,    23,    23,   nil,
    23,    23,    23,    23,    23,   nil,   nil,    23,    23,    45,
   nil,    85,    23,    85,    85,    85,   nil,    85,    85,    85,
    85,    85,   nil,   nil,    85,    85,   nil,   nil,    23,    85,
    83,   nil,    83,    83,    83,   nil,    83,    83,    83,    83,
    83,   nil,   nil,    83,    83,    85,   nil,    50,    83,    50,
    50,    50,   nil,    50,    50,    50,    50,    50,   nil,   nil,
    50,    50,   nil,   nil,    83,    50,    27,   nil,    27,    27,
    27,   nil,    27,    27,    27,    27,    27,   nil,   nil,    27,
    27,    50,   nil,    28,    27,    28,    28,    28,   nil,    28,
    28,    28,    28,    28,   nil,   nil,    28,    28,   nil,   nil,
    27,    28,    48,   nil,    48,    48,    48,   nil,    48,    48,
    48,    48,    48,   nil,   nil,    48,    48,    28,   nil,    30,
    48,    30,    30,    30,   nil,    30,    30,    30,    30,    30,
   nil,   nil,    30,    30,   nil,   nil,    48,    30,    43,   nil,
    43,    43,    43,   nil,    43,    43,    43,    43,    43,   nil,
   nil,    43,    43,    30,   nil,    32,    43,    32,    32,    32,
   nil,    32,    32,    32,    32,    32,   nil,   nil,    32,    32,
   nil,   nil,    43,    32,    33,   nil,    33,    33,    33,   nil,
    33,    33,    33,    33,    33,   nil,   nil,    33,    33,    32,
   nil,    34,    33,    34,    34,    34,   nil,    34,    34,    34,
    34,    34,   nil,   nil,    34,    34,   nil,   nil,    33,    34,
    35,   nil,    35,    35,    35,   nil,    35,    35,    35,    35,
    35,   nil,   nil,    35,    35,    34,   nil,    36,    35,    36,
    36,    36,   nil,    36,    36,    36,    36,    36,   nil,   nil,
    36,    36,   nil,   nil,    35,    36,    42,   nil,    42,    42,
    42,   nil,    42,    42,    42,    42,    42,   nil,   nil,    42,
    42,    36,   nil,    38,    42,    38,    38,    38,   nil,    38,
    38,    38,    38,    38,   nil,   nil,    38,    38,   nil,   nil,
    42,    38,    39,   nil,    39,    39,    39,   nil,    39,    39,
    39,    39,    39,   nil,   nil,    39,    39,    38,   nil,    40,
    39,    40,    40,    40,   nil,    40,    40,    40,    40,    40,
   nil,   nil,    40,    40,   nil,   nil,    39,    40,    41,   nil,
    41,    41,    41,   nil,    41,    41,    41,    41,    41,   nil,
   nil,    41,    41,    40,   nil,    37,    41,    37,    37,    37,
   nil,    37,    37,    37,    37,    37,   nil,   nil,    37,    37,
   nil,   nil,    41,    37,   nil,    67,    67,   nil,   nil,    46,
    46,    67,   nil,    67,    67,    46,   nil,    46,    46,    37,
    46,    46,    46,    46,    46,    46,    46,    46,    46,    46,
    90,    90,   nil,    46,    68,    68,    90,   nil,    90,    90,
    68,    90,    90,    90,    90,    90,    90,    90,    90,    90,
    90,     3,     3,   nil,   nil,    69,    69,     3,   nil,     3,
     3,    69,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,    76,    76,   nil,   nil,    49,    49,    76,   nil,
    76,    76,    49,    76,    76,    76,    76,    76,    76,    76,
    76,    76,    76,    74,    74,    86,    22,    86,    22,    74,
   nil,    74,    74,   nil,    74,    74,    74,    74,    74,    74,
    74,    74,    74,    74,    75,    75,    73,   nil,    73,   nil,
    75,   nil,    75,    75,   nil,    75,    75,    75,    75,    75,
    75,    75,    75,    75,    75,    70,    70,   nil,   nil,   nil,
   nil,    70,   nil,    70,    70,   nil,    70,    70,    70,    70,
    70,    70,    70,    70,    70,    70,    56,    56,   nil,   nil,
   nil,   nil,    56,   nil,    56,    56,   nil,    56,    56,    56,
    56,    56,    56,    56,    56,    56,    56,    53,    53,   nil,
   nil,    53,   nil,    53,   nil,    53,    53,   nil,    53,    53,
    53,    53,    53,    53,    53,    53,    53,    53,    54,    54,
   nil,   nil,    54,   nil,    54,   nil,    54,    54,   nil,    54,
    54,    54,    54,    54,    54,    54,    54,    54,    54,    71,
    71,   nil,   nil,   nil,   nil,    71,   nil,    71,    71,   nil,
    71,    71,    71,    71,    71,    71,    71,    71,    71,    71,
    58,    58,   nil,   nil,   nil,   nil,    58,   nil,    58,    58,
   nil,    58,    58,    58,    58,    58,    58,    58,    58,    58,
    59,    59,   nil,   nil,   nil,   nil,    59,   nil,    59,    59,
   nil,    59,    59,    59,    59,    59,    59,    59,    59,    60,
    60,   nil,   nil,   nil,   nil,    60,   nil,    60,    60,   nil,
    60,    60,    60,    60,    60,    60,    61,    61,   nil,   nil,
   nil,   nil,    61,   nil,    61,    61,   nil,    61,    61,    61,
    61,    61,    61,    65,    65,   nil,   nil,   nil,   nil,    65,
   nil,    65,    65,   nil,    65,    65,    64,    64,   nil,   nil,
   nil,   nil,    64,   nil,    64,    64,   nil,    64,    64,    63,
    63,   nil,   nil,   nil,   nil,    63,   nil,    63,    63,   nil,
    63,    63,    66,    66,   nil,   nil,   nil,   nil,    66,   nil,
    66,    66 ]

racc_action_pointer = [
    -2,    63,     4,   518,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    86,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   542,   122,     6,    18,    13,   194,   211,    15,
   247,    29,   283,   302,   319,   338,   355,   463,   391,   410,
   427,   446,   374,   266,    50,   103,   476,    67,   230,   543,
   175,    11,    33,   644,   665,   nil,   623,    21,   707,   727,
   746,   763,    24,   806,   793,   780,   819,   472,   501,   522,
   602,   686,   nil,   561,   560,   581,   539,   nil,     1,    15,
   nil,   nil,   nil,   158,   nil,   139,   540,   nil,    -6,     4,
   497,    47,    52,   nil,   nil,   nil,   nil ]

racc_action_default = [
    -1,   -58,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -58,   -17,   -18,   -19,   -20,   -21,
   -22,   -23,   -24,   -58,   -46,   -58,   -58,   -58,   -58,   -58,
    -5,   -58,   -58,   -58,   -58,   -58,   -58,   -58,   -58,   -58,
   -58,   -58,   -58,   -58,   -58,   -58,   -58,   -28,   -58,   -45,
   -58,   -58,   -58,   -58,   -58,    97,    -4,   -26,   -31,   -32,
   -33,   -34,   -35,   -36,   -37,   -38,   -39,   -40,   -41,   -42,
   -43,   -44,   -16,   -58,   -29,   -47,   -48,   -49,   -51,   -58,
   -54,   -55,   -56,   -28,   -25,   -58,   -58,   -52,   -58,   -58,
   -30,   -58,   -58,   -57,   -27,   -50,   -53 ]

racc_goto_table = [
    30,     2,    46,    77,    80,    81,    82,     1,    73,    86,
   nil,    49,   nil,   nil,   nil,    53,    54,   nil,    56,   nil,
    58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
    68,    69,    70,    71,   nil,    74,    75,   nil,    76,   nil,
   nil,   nil,   nil,    95,    89,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    74,   nil,    90,   nil,   nil,   nil,   nil,   nil,   nil,
    88,   nil,   nil,   nil,   nil,   nil,    30 ]

racc_goto_check = [
     4,     2,     3,    15,    15,    15,    15,     1,    14,    16,
   nil,     3,   nil,   nil,   nil,     3,     3,   nil,     3,   nil,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,     3,     3,   nil,     3,     3,   nil,     3,   nil,
   nil,   nil,   nil,    15,    14,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     3,   nil,     3,   nil,   nil,   nil,   nil,   nil,   nil,
     2,   nil,   nil,   nil,   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,     7,     1,   -12,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   -39,   -48,   -69 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 40, :_reduce_1,
  1, 40, :_reduce_2,
  1, 41, :_reduce_3,
  3, 41, :_reduce_4,
  2, 41, :_reduce_5,
  1, 41, :_reduce_6,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  3, 42, :_reduce_16,
  1, 43, :_reduce_none,
  1, 43, :_reduce_none,
  1, 44, :_reduce_19,
  1, 44, :_reduce_20,
  1, 44, :_reduce_21,
  1, 44, :_reduce_22,
  1, 44, :_reduce_23,
  1, 45, :_reduce_24,
  4, 45, :_reduce_25,
  3, 45, :_reduce_26,
  6, 45, :_reduce_27,
  0, 53, :_reduce_28,
  1, 53, :_reduce_29,
  3, 53, :_reduce_30,
  3, 46, :_reduce_31,
  3, 46, :_reduce_32,
  3, 46, :_reduce_33,
  3, 46, :_reduce_34,
  3, 46, :_reduce_35,
  3, 46, :_reduce_36,
  3, 46, :_reduce_37,
  3, 46, :_reduce_38,
  3, 46, :_reduce_39,
  3, 46, :_reduce_40,
  3, 46, :_reduce_41,
  3, 46, :_reduce_42,
  3, 46, :_reduce_43,
  3, 46, :_reduce_44,
  2, 46, :_reduce_45,
  1, 47, :_reduce_46,
  3, 48, :_reduce_47,
  3, 48, :_reduce_48,
  3, 49, :_reduce_49,
  6, 49, :_reduce_50,
  0, 55, :_reduce_51,
  1, 55, :_reduce_52,
  3, 55, :_reduce_53,
  3, 50, :_reduce_54,
  3, 51, :_reduce_55,
  3, 52, :_reduce_56,
  3, 54, :_reduce_57 ]

racc_reduce_n = 58

racc_shift_n = 97

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :ELSE => 3,
  :WHILE => 4,
  :DEF => 5,
  :CLASS => 6,
  :NEWLINE => 7,
  :NUMBER => 8,
  :STRING => 9,
  :TRUE => 10,
  :FALSE => 11,
  :NIL => 12,
  :AND => 13,
  :OR => 14,
  :IDENTIFIER => 15,
  :CONSTANT => 16,
  :INDENT => 17,
  :DEDENT => 18,
  "." => 19,
  "!" => 20,
  "*" => 21,
  "/" => 22,
  "%" => 23,
  "+" => 24,
  "-" => 25,
  ">" => 26,
  ">=" => 27,
  "<" => 28,
  "<=" => 29,
  "==" => 30,
  "!=" => 31,
  "&&" => 32,
  "||" => 33,
  "=" => 34,
  "," => 35,
  "(" => 36,
  ")" => 37,
  ";" => 38 }

racc_nt_base = 39

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "ELSE",
  "WHILE",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "AND",
  "OR",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"%\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Root",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "Constant",
  "Assign",
  "Def",
  "Class",
  "If",
  "While",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 46)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 47)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 52)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 53)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 55)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 56)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

module_eval(<<'.,.,', 'grammar.y', 70)
  def _reduce_16(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 17 omitted

# reduce 18 omitted

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_19(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 82)
  def _reduce_20(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 83)
  def _reduce_21(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 84)
  def _reduce_22(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 85)
  def _reduce_23(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_24(val, _values, result)
     result = CallNode.new(nil, val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 93)
  def _reduce_25(val, _values, result)
     result = CallNode.new(nil, val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 95)
  def _reduce_26(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 98)
  def _reduce_27(val, _values, result)
     result = CallNode.new(val[0], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_28(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 103)
  def _reduce_29(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 104)
  def _reduce_30(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 109)
  def _reduce_31(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 110)
  def _reduce_32(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 111)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 112)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 113)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 114)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 115)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 116)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 117)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 118)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 119)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 120)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 121)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 122)
  def _reduce_44(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 125)
  def _reduce_45(val, _values, result)
     result = CallNode.new(val[1], val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 129)
  def _reduce_46(val, _values, result)
     result = GetConstantNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 134)
  def _reduce_47(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 135)
  def _reduce_48(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 140)
  def _reduce_49(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 142)
  def _reduce_50(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 146)
  def _reduce_51(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 147)
  def _reduce_52(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 148)
  def _reduce_53(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 153)
  def _reduce_54(val, _values, result)
     result = ClassNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 158)
  def _reduce_55(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 163)
  def _reduce_56(val, _values, result)
     result = WhileNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 170)
  def _reduce_57(val, _values, result)
     result = val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
