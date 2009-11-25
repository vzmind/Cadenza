#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'


# cadenza.rb : generated by racc

class FilterReference < Struct.new(:identifier, :params)
end

module Cadenza
  class Parser < Racc::Parser

module_eval(<<'...end cadenza.y/module_eval...', 'cadenza.y', 183)

  def initialize(*args)
	super(*args)
	@lexer = Cadenza::Lexer.new
  end

  def push_token(token)
	@q.push(token)
	puts "Lexer: Token found #{token[0].to_s}(#{token[1].to_s})" if self.log_lexer
  end
 
  def parse( str )
	@lexer.source = str
	@document_stack = [DocumentNode.new]
    do_parse
    return @document_stack.first
  end

  def next_token
    @lexer.next_token
  end

  def on_error(error_token_id, error_value, value_stack)
	msg = "parse error on #{token_to_str(error_token_id)} #{error_value}\n#{value_stack.inspect}"
	raise ParseError, msg
  end
...end cadenza.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    17,    31,    33,    34,    36,    38,    70,    67,    55,    57,
    13,    17,     2,    69,    90,    88,    55,    57,    16,    17,
    45,    89,    18,    66,     4,    19,   112,    14,    15,    16,
    17,    39,    39,    18,    41,    41,    19,    16,    14,    15,
   100,    18,    17,   117,    19,    95,    14,    15,    16,    93,
   116,    13,    18,   108,    13,    19,     2,    14,    15,    13,
    16,     2,    73,    74,    18,    24,   102,    19,     4,    14,
    15,    91,    13,     4,   114,    13,    13,   113,    50,    13,
    13,     2,     2,    13,   104,     2,    24,    55,    57,    24,
    24,    55,    57,     4,     4,    87,    62,    24,    61,    51,
    52,    53,    54,    56,    58,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    31,    33,    34,    36,    38,    31,    33,    34,    36,    38,
    98,    70,    97,    55,    57,    59,    60,    55,    57,    59,
    60,    55,    57,    59,    60,    55,    57,    55,    57,    55,
    57,   106,    87,    72,    71,    68,    64,    49,    48,   115,
    47,    20,   118,   119 ]

racc_action_check = [
   108,    17,    17,    17,    17,    17,    44,    42,    63,    63,
     0,     2,     0,    44,    65,    63,    77,    77,   108,   114,
    17,    65,   108,    42,     0,   108,   108,   108,   108,     2,
   113,    15,    14,     2,    15,    14,     2,   114,     2,     2,
    90,   114,    50,   114,   114,    73,   114,   114,   113,    71,
   113,   103,   113,   103,   107,   113,   107,   113,   113,     8,
    50,     8,    50,    50,    50,   103,    93,    50,   107,    50,
    50,    67,   111,     8,   111,   109,    21,   109,    21,    94,
   104,    94,   104,     9,    96,     9,   111,    75,    75,   109,
    21,    32,    32,    94,   104,    98,    37,     9,    37,    32,
    32,    32,    32,    32,    32,    87,    87,    87,    87,    87,
    38,    38,    38,    38,    38,   106,   106,   106,   106,   106,
    70,    70,    70,    70,    70,    13,    13,    13,    13,    13,
    91,    91,    91,    91,    91,    52,    52,    52,    52,    52,
    53,    53,    53,    53,    53,    54,    54,    54,    54,    54,
    55,    55,    55,    55,    55,    56,    56,    56,    56,    56,
    57,    57,    57,    57,    57,    58,    58,    58,    58,    58,
    59,    59,    59,    59,    59,    60,    60,    60,    60,    60,
    16,    16,    16,    16,    16,    51,    51,    51,    51,    51,
    86,    99,    86,    76,    76,    35,    35,    78,    78,    79,
    79,    80,    80,    81,    81,    82,    82,    46,    46,    92,
    92,   100,    62,    48,    47,    43,    40,    20,    19,   112,
    18,     7,   116,   117 ]

racc_action_pointer = [
   -11,   nil,     5,   nil,   nil,   nil,   nil,   221,    38,    62,
   nil,   nil,   nil,   119,    26,    25,   174,    -5,   214,   212,
   217,    55,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    87,   nil,   nil,   193,   nil,    76,   104,   nil,
   191,   nil,    -2,   190,   -12,   nil,   203,   185,   188,   nil,
    36,   179,   129,   134,   139,   144,   149,   154,   159,   164,
   169,   nil,   206,     4,   nil,    -4,   nil,    52,   nil,   nil,
   114,    43,   nil,    20,   nil,    83,   189,    12,   193,   197,
   197,   201,   201,   nil,   nil,   nil,   170,    99,   nil,   nil,
    31,   124,   205,    41,    58,   nil,    59,   nil,    89,   173,
   192,   nil,   nil,    30,    59,   nil,   109,    33,    -6,    54,
   nil,    51,   194,    24,    13,   nil,   197,   198,   nil,   nil ]

racc_action_default = [
    -2,   -51,   -62,   -52,   -46,   -53,   -47,   -62,   -62,    -1,
   -48,   -49,   -50,   -62,   -62,   -62,   -62,   -62,   -62,   -62,
   -62,   -62,   -59,   -60,   -54,   -61,   -55,   -56,   -57,   -58,
   -10,    -3,   -16,    -4,    -5,   -13,    -6,   -62,   -62,    -8,
   -62,    -9,   -62,   -62,   -62,   -44,   -23,   -62,   -62,   120,
   -62,   -62,   -62,   -62,   -62,   -62,   -62,   -62,   -62,   -62,
   -62,   -31,   -62,   -62,   -41,   -62,   -43,   -62,   -33,   -45,
   -62,   -62,   -39,   -62,   -35,   -17,   -18,   -19,   -20,   -14,
   -21,   -15,   -22,   -11,   -12,   -29,   -62,   -27,    -7,   -42,
   -62,   -62,   -24,   -62,   -62,   -34,   -62,   -32,   -62,   -28,
   -62,   -25,   -37,   -62,   -62,   -30,   -62,   -62,   -62,   -62,
   -26,   -62,   -62,   -62,   -62,   -40,   -62,   -62,   -36,   -38 ]

racc_goto_table = [
     9,    27,    44,    86,    37,    46,    29,    43,    21,    85,
    79,    25,    81,    27,    96,    26,    22,    94,    29,   107,
    23,    83,    84,    25,    65,    28,    63,    26,    22,    40,
    42,     7,    23,   nil,   nil,   nil,   nil,    28,   nil,    75,
    76,    77,    78,   nil,    80,   105,    82,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    92,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    99,   nil,   nil,    46,   nil,   nil,   nil,   nil,
   nil,   nil,   101,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   103,    27,   nil,   110,   nil,   nil,
    29,    27,   nil,    27,   109,    25,    29,   111,    29,    26,
    22,    25,   nil,    25,    23,    26,    22,    26,    22,    28,
    23,   nil,    23,   nil,   nil,    28,   nil,    28 ]

racc_goto_check = [
     2,    14,     8,    11,     7,     4,    18,     7,     2,    10,
     6,    22,     6,    14,    15,    12,    20,    19,    18,    17,
    21,     3,     3,    22,     9,    16,     4,    12,    20,     5,
     5,     1,    21,   nil,   nil,   nil,   nil,    16,   nil,     4,
     4,     4,     4,   nil,     4,    10,     4,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     4,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     8,   nil,   nil,     4,   nil,   nil,   nil,   nil,
   nil,   nil,     7,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,     2,    14,   nil,     7,   nil,   nil,
    18,    14,   nil,    14,     2,    22,    18,     2,    18,    12,
    20,    22,   nil,    22,    21,    12,    20,    12,    20,    16,
    21,   nil,    21,   nil,   nil,    16,   nil,    16 ]

racc_goto_pointer = [
   nil,    31,     0,   -38,   -12,    15,   -45,    -9,   -15,   -18,
   -53,   -59,     6,   nil,    -8,   -60,    16,   -83,    -3,   -55,
     7,    11,     2 ]

racc_goto_default = [
   nil,   nil,   nil,    30,    32,   nil,    35,   nil,   nil,   nil,
   nil,   nil,     6,     8,    10,   nil,    11,   nil,    12,   nil,
     1,     3,     5 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 37, :_reduce_none,
  0, 37, :_reduce_2,
  1, 39, :_reduce_3,
  1, 39, :_reduce_4,
  1, 39, :_reduce_5,
  1, 39, :_reduce_6,
  3, 39, :_reduce_7,
  1, 41, :_reduce_8,
  1, 41, :_reduce_9,
  1, 42, :_reduce_none,
  3, 42, :_reduce_11,
  3, 42, :_reduce_12,
  1, 40, :_reduce_none,
  3, 40, :_reduce_14,
  3, 40, :_reduce_15,
  1, 43, :_reduce_none,
  3, 43, :_reduce_17,
  3, 43, :_reduce_18,
  3, 43, :_reduce_19,
  3, 43, :_reduce_20,
  3, 43, :_reduce_21,
  3, 43, :_reduce_22,
  1, 44, :_reduce_23,
  3, 44, :_reduce_24,
  3, 45, :_reduce_25,
  5, 45, :_reduce_26,
  1, 46, :_reduce_27,
  2, 46, :_reduce_28,
  1, 47, :_reduce_29,
  3, 47, :_reduce_30,
  3, 48, :_reduce_31,
  5, 48, :_reduce_32,
  4, 49, :_reduce_33,
  5, 50, :_reduce_34,
  0, 51, :_reduce_35,
  10, 50, :_reduce_36,
  0, 53, :_reduce_37,
  11, 52, :_reduce_38,
  0, 55, :_reduce_39,
  9, 54, :_reduce_40,
  4, 56, :_reduce_41,
  5, 57, :_reduce_42,
  4, 57, :_reduce_43,
  3, 58, :_reduce_44,
  4, 58, :_reduce_45,
  1, 38, :_reduce_46,
  1, 38, :_reduce_47,
  1, 38, :_reduce_48,
  1, 38, :_reduce_49,
  1, 38, :_reduce_50,
  1, 38, :_reduce_51,
  1, 38, :_reduce_52,
  1, 38, :_reduce_53,
  2, 38, :_reduce_54,
  2, 38, :_reduce_55,
  2, 38, :_reduce_56,
  2, 38, :_reduce_57,
  2, 38, :_reduce_58,
  2, 38, :_reduce_59,
  2, 38, :_reduce_60,
  2, 38, :_reduce_61 ]

racc_reduce_n = 62

racc_shift_n = 120

racc_token_table = {
  false => 0,
  :error => 1,
  "*" => 2,
  "/" => 3,
  "+" => 4,
  "-" => 5,
  :IDENTIFIER => 6,
  :INTEGER => 7,
  :REAL => 8,
  :STRING => 9,
  "(" => 10,
  ")" => 11,
  :OP_EQ => 12,
  :OP_NEQ => 13,
  :OP_GEQ => 14,
  :OP_LEQ => 15,
  ">" => 16,
  "<" => 17,
  "," => 18,
  :OP_MAP => 19,
  "|" => 20,
  :VAR_OPEN => 21,
  :VAR_CLOSE => 22,
  :STMT_OPEN => 23,
  :IF => 24,
  :STMT_CLOSE => 25,
  :ENDIF => 26,
  :ELSE => 27,
  :FOR => 28,
  :IN => 29,
  :ENDFOR => 30,
  :BLOCK => 31,
  :ENDBLOCK => 32,
  :EXTENDS => 33,
  :RENDER => 34,
  :TEXT_BLOCK => 35 }

racc_nt_base = 36

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
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "IDENTIFIER",
  "INTEGER",
  "REAL",
  "STRING",
  "\"(\"",
  "\")\"",
  "OP_EQ",
  "OP_NEQ",
  "OP_GEQ",
  "OP_LEQ",
  "\">\"",
  "\"<\"",
  "\",\"",
  "OP_MAP",
  "\"|\"",
  "VAR_OPEN",
  "VAR_CLOSE",
  "STMT_OPEN",
  "IF",
  "STMT_CLOSE",
  "ENDIF",
  "ELSE",
  "FOR",
  "IN",
  "ENDFOR",
  "BLOCK",
  "ENDBLOCK",
  "EXTENDS",
  "RENDER",
  "TEXT_BLOCK",
  "$start",
  "target",
  "document",
  "primary_expression",
  "additive_expression",
  "filename",
  "multiplicative_expression",
  "boolean_expression",
  "param_list",
  "mapped_param_list",
  "filter",
  "filter_list",
  "inject_statement",
  "if_statement",
  "if_block",
  "@1",
  "for_block",
  "@2",
  "block_block",
  "@3",
  "extends_statement",
  "render_statement",
  "generic_statement" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'cadenza.y', 11)
  def _reduce_2(val, _values, result)
     result = nil 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 15)
  def _reduce_3(val, _values, result)
     result = VariableNode.new(val[0], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 16)
  def _reduce_4(val, _values, result)
     result = ConstantNode.new(val[0], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 17)
  def _reduce_5(val, _values, result)
     result = ConstantNode.new(val[0], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 18)
  def _reduce_6(val, _values, result)
     result = ConstantNode.new(val[0], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 19)
  def _reduce_7(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 23)
  def _reduce_8(val, _values, result)
     result = VariableNode.new(val[0], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 24)
  def _reduce_9(val, _values, result)
     result = ConstantNode.new(val[0], val[0]) 
    result
  end
.,.,

# reduce 10 omitted

module_eval(<<'.,.,', 'cadenza.y', 29)
  def _reduce_11(val, _values, result)
     result = ArithmeticNode.new(val[0],val[2],'*',val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 30)
  def _reduce_12(val, _values, result)
     result = ArithmeticNode.new(val[0],val[2],'/',val[0]) 
    result
  end
.,.,

# reduce 13 omitted

module_eval(<<'.,.,', 'cadenza.y', 35)
  def _reduce_14(val, _values, result)
     result = ArithmeticNode.new(val[0],val[2],'+',val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 36)
  def _reduce_15(val, _values, result)
     result = ArithmeticNode.new(val[0],val[2],'-',val[0]) 
    result
  end
.,.,

# reduce 16 omitted

module_eval(<<'.,.,', 'cadenza.y', 41)
  def _reduce_17(val, _values, result)
     result = BooleanNode.new(val[0],val[2],'==',val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 42)
  def _reduce_18(val, _values, result)
     result = BooleanNode.new(val[0],val[2],'!=',val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 43)
  def _reduce_19(val, _values, result)
     result = BooleanNode.new(val[0],val[2],'>=',val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 44)
  def _reduce_20(val, _values, result)
     result = BooleanNode.new(val[0],val[2],'<=',val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 45)
  def _reduce_21(val, _values, result)
     result = BooleanNode.new(val[0],val[2],'<' ,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 46)
  def _reduce_22(val, _values, result)
     result = BooleanNode.new(val[0],val[2],'>' ,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 50)
  def _reduce_23(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 51)
  def _reduce_24(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 57)
  def _reduce_25(val, _values, result)
      			result = Hash.new
  			key = ConstantNode.new(val[0], val[0])
  			value = val[2]
  			result.store(key, value)
  		
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 64)
  def _reduce_26(val, _values, result)
      			key = ConstantNode.new(val[2], val[2])
  			value = val[4]
  			val[0].store(key, value)
  		
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 71)
  def _reduce_27(val, _values, result)
     result = FilterReference.new(val[0], [])    
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 72)
  def _reduce_28(val, _values, result)
     result = FilterReference.new(val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 76)
  def _reduce_29(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 77)
  def _reduce_30(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 81)
  def _reduce_31(val, _values, result)
     result = InjectNode.new(val[1], [],     val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 82)
  def _reduce_32(val, _values, result)
     result = InjectNode.new(val[1], val[3], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 88)
  def _reduce_33(val, _values, result)
      			@document_stack.push(DocumentNode.new)
  			result = val[2]
  		
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 95)
  def _reduce_34(val, _values, result)
     result = IfNode.new(val[0], @document_stack.pop.children, nil, val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 97)
  def _reduce_35(val, _values, result)
     @document_stack.push(DocumentNode.new) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 100)
  def _reduce_36(val, _values, result)
       	  		else_body, body = @document_stack.pop, @document_stack.pop
   	  		result = IfNode.new(val[0], body.children, else_body.children, val[0])
   	  	
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 107)
  def _reduce_37(val, _values, result)
     @document_stack.push(DocumentNode.new) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 111)
  def _reduce_38(val, _values, result)
      			iterator = VariableNode.new(val[2], val[2])
  			iterable = VariableNode.new(val[4], val[4])
  			
  			result = ForNode.new(iterator, iterable, val[0])
  			
  			result.children = @document_stack.pop.children
  		
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 122)
  def _reduce_39(val, _values, result)
     @document_stack.push( DocumentNode.new ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 126)
  def _reduce_40(val, _values, result)
      	  		result = BlockNode.new(val[2], val[0])
  	  		result.children = @document_stack.pop.children
  	  	
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 132)
  def _reduce_41(val, _values, result)
     result = val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 136)
  def _reduce_42(val, _values, result)
     result = RenderNode.new(val[2], val[3], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 137)
  def _reduce_43(val, _values, result)
     result = RenderNode.new(val[2], nil,    val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 141)
  def _reduce_44(val, _values, result)
     result = GenericStatementNode.new(val[1], [], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 142)
  def _reduce_45(val, _values, result)
     result = GenericStatementNode.new(val[1], val[2], val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 146)
  def _reduce_46(val, _values, result)
     @document_stack.last.children.push( TextNode.new(val[0], val[0]) ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 147)
  def _reduce_47(val, _values, result)
     @document_stack.last.children.push( val[0] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 148)
  def _reduce_48(val, _values, result)
     @document_stack.last.children.push( val[0] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 149)
  def _reduce_49(val, _values, result)
     @document_stack.last.children.push( val[0] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 152)
  def _reduce_50(val, _values, result)
      			@document_stack.last.children.push( val[0] )
  			@document_stack.first.blocks.store( val[0].name, val[0] )
  		
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 155)
  def _reduce_51(val, _values, result)
     @document_stack.first.extends = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 156)
  def _reduce_52(val, _values, result)
     @document_stack.last.children.push( val[0] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 157)
  def _reduce_53(val, _values, result)
     @document_stack.last.children.push( val[0] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 158)
  def _reduce_54(val, _values, result)
     @document_stack.last.children.push( TextNode.new(val[1], val[1]) ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 159)
  def _reduce_55(val, _values, result)
     @document_stack.last.children.push( val[1] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 160)
  def _reduce_56(val, _values, result)
     @document_stack.last.children.push( val[1] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 161)
  def _reduce_57(val, _values, result)
     @document_stack.last.children.push( val[1] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 164)
  def _reduce_58(val, _values, result)
      			@document_stack.last.children.push( val[1] )
  			@document_stack.first.blocks.store( val[1].name, val[1] )
  		
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 167)
  def _reduce_59(val, _values, result)
     @document_stack.first.extends = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 168)
  def _reduce_60(val, _values, result)
     @document_stack.last.children.push( val[1] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 169)
  def _reduce_61(val, _values, result)
     @document_stack.last.children.push( val[1] ) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Cadenza
