#!/usr/bin/env ruby
#
# q.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: q.g
# Generated at: 2011-10-23 16:47:26
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.11):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '~> 1.8.11' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Q
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__24 => 24, :T__23 => 23, :T__22 => 22, :T__21 => 21, 
                   :T__20 => 20, :INT => 5, :ID => 4, :EOF => -1, :T__9 => 9, 
                   :T__19 => 19, :WS => 8, :T__16 => 16, :T__15 => 15, :T__18 => 18, 
                   :T__17 => 17, :T__12 => 12, :T__11 => 11, :T__14 => 14, 
                   :T__13 => 13, :T__10 => 10, :COMMENT => 7, :STRING => 6 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Q
    include TokenData

    
    begin
      generated_using( "q.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__9", "T__10", "T__11", "T__12", "T__13", "T__14", 
                     "T__15", "T__16", "T__17", "T__18", "T__19", "T__20", 
                     "T__21", "T__22", "T__23", "T__24", "ID", "INT", "STRING", 
                     "COMMENT", "WS" ].freeze
    RULE_METHODS = [ :t__9!, :t__10!, :t__11!, :t__12!, :t__13!, :t__14!, 
                     :t__15!, :t__16!, :t__17!, :t__18!, :t__19!, :t__20!, 
                     :t__21!, :t__22!, :t__23!, :t__24!, :id!, :int!, :string!, 
                     :comment!, :ws! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__9! (T__9)
    # (in q.g)
    def t__9!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__9
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:8: 'print'
      match( "print" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__10! (T__10)
    # (in q.g)
    def t__10!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__10
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: ';'
      match( 0x3b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__11! (T__11)
    # (in q.g)
    def t__11!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__11
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:9: 'create'
      match( "create" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__12! (T__12)
    # (in q.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: 'table'
      match( "table" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule t__13! (T__13)
    # (in q.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:9: '('
      match( 0x28 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule t__14! (T__14)
    # (in q.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:9: 'primary'
      match( "primary" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule t__15! (T__15)
    # (in q.g)
    def t__15!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = T__15
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:9: 'key'
      match( "key" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule t__16! (T__16)
    # (in q.g)
    def t__16!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = T__16
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:9: ','
      match( 0x2c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule t__17! (T__17)
    # (in q.g)
    def t__17!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = T__17
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:9: ')'
      match( 0x29 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule t__18! (T__18)
    # (in q.g)
    def t__18!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = T__18
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:9: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule t__19! (T__19)
    # (in q.g)
    def t__19!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = T__19
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: 'insert'
      match( "insert" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule t__20! (T__20)
    # (in q.g)
    def t__20!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = T__20
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: 'into'
      match( "into" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule t__21! (T__21)
    # (in q.g)
    def t__21!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = T__21
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: 'set'
      match( "set" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule t__22! (T__22)
    # (in q.g)
    def t__22!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = T__22
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: 'select'
      match( "select" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule t__23! (T__23)
    # (in q.g)
    def t__23!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = T__23
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: 'from'
      match( "from" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule t__24! (T__24)
    # (in q.g)
    def t__24!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = T__24
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: 'where'
      match( "where" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule id! (ID)
    # (in q.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 74:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 74:33: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) || look_1_0.between?( 0x41, 0x5a ) || look_1_0 == 0x5f || look_1_0.between?( 0x61, 0x7a ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule int! (INT)
    # (in q.g)
    def int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = INT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 76:9: ( '0' .. '9' )+
      # at file 76:9: ( '0' .. '9' )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x30, 0x39 ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 76:9: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule string! (STRING)
    # (in q.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 79:9: '\\'' (~ '\\'' )* '\\''
      match( 0x27 )
      # at line 79:14: (~ '\\'' )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x0, 0x26 ) || look_3_0.between?( 0x28, 0xffff ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 79:14: ~ '\\''
          if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 3
        end
      end # loop for decision 3
      match( 0x27 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule comment! (COMMENT)
    # (in q.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 83:9: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match( "//" )
      # at line 83:14: (~ ( '\\n' | '\\r' ) )*
      while true # decision 4
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( 0x0, 0x9 ) || look_4_0.between?( 0xb, 0xc ) || look_4_0.between?( 0xe, 0xffff ) )
          alt_4 = 1

        end
        case alt_4
        when 1
          # at line 83:14: ~ ( '\\n' | '\\r' )
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 4
        end
      end # loop for decision 4
      # at line 83:28: ( '\\r' )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == 0xd )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 83:28: '\\r'
        match( 0xd )

      end
      match( 0xa )
      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule ws! (WS)
    # (in q.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 86:9: ( ' ' | '\\t' | '\\r' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek(1) == 0xd || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | ID | INT | STRING | COMMENT | WS )
      alt_6 = 21
      alt_6 = @dfa6.predict( @input )
      case alt_6
      when 1
        # at line 1:10: T__9
        t__9!

      when 2
        # at line 1:15: T__10
        t__10!

      when 3
        # at line 1:21: T__11
        t__11!

      when 4
        # at line 1:27: T__12
        t__12!

      when 5
        # at line 1:33: T__13
        t__13!

      when 6
        # at line 1:39: T__14
        t__14!

      when 7
        # at line 1:45: T__15
        t__15!

      when 8
        # at line 1:51: T__16
        t__16!

      when 9
        # at line 1:57: T__17
        t__17!

      when 10
        # at line 1:63: T__18
        t__18!

      when 11
        # at line 1:69: T__19
        t__19!

      when 12
        # at line 1:75: T__20
        t__20!

      when 13
        # at line 1:81: T__21
        t__21!

      when 14
        # at line 1:87: T__22
        t__22!

      when 15
        # at line 1:93: T__23
        t__23!

      when 16
        # at line 1:99: T__24
        t__24!

      when 17
        # at line 1:105: ID
        id!

      when 18
        # at line 1:108: INT
        int!

      when 19
        # at line 1:112: STRING
        string!

      when 20
        # at line 1:119: COMMENT
        comment!

      when 21
        # at line 1:127: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA6 < ANTLR3::DFA
      EOT = unpack( 1, -1, 1, 14, 1, -1, 2, 14, 1, -1, 1, 14, 3, -1, 4, 
                    14, 5, -1, 11, 14, 1, 41, 2, 14, 1, 44, 7, 14, 1, -1, 
                    1, 14, 1, 53, 1, -1, 1, 14, 1, 55, 1, 14, 1, 57, 2, 
                    14, 1, 60, 1, 14, 1, -1, 1, 14, 1, -1, 1, 63, 1, -1, 
                    1, 14, 1, 65, 1, -1, 1, 66, 1, 67, 1, -1, 1, 68, 4, 
                    -1 )
      EOF = unpack( 69, -1 )
      MIN = unpack( 1, 9, 1, 114, 1, -1, 1, 114, 1, 97, 1, -1, 1, 101, 3, 
                    -1, 1, 110, 1, 101, 1, 114, 1, 104, 5, -1, 1, 105, 1, 
                    101, 1, 98, 1, 121, 1, 115, 1, 108, 1, 111, 1, 101, 
                    1, 109, 1, 97, 1, 108, 1, 48, 1, 101, 1, 111, 1, 48, 
                    1, 101, 1, 109, 1, 114, 1, 116, 1, 97, 1, 116, 1, 101, 
                    1, -1, 1, 114, 1, 48, 1, -1, 1, 99, 1, 48, 1, 101, 1, 
                    48, 1, 114, 1, 101, 1, 48, 1, 116, 1, -1, 1, 116, 1, 
                    -1, 1, 48, 1, -1, 1, 121, 1, 48, 1, -1, 2, 48, 1, -1, 
                    1, 48, 4, -1 )
      MAX = unpack( 1, 122, 1, 114, 1, -1, 1, 114, 1, 97, 1, -1, 1, 101, 
                    3, -1, 1, 110, 1, 101, 1, 114, 1, 104, 5, -1, 1, 105, 
                    1, 101, 1, 98, 1, 121, 2, 116, 1, 111, 1, 101, 1, 110, 
                    1, 97, 1, 108, 1, 122, 1, 101, 1, 111, 1, 122, 1, 101, 
                    1, 109, 1, 114, 1, 116, 1, 97, 1, 116, 1, 101, 1, -1, 
                    1, 114, 1, 122, 1, -1, 1, 99, 1, 122, 1, 101, 1, 122, 
                    1, 114, 1, 101, 1, 122, 1, 116, 1, -1, 1, 116, 1, -1, 
                    1, 122, 1, -1, 1, 121, 1, 122, 1, -1, 2, 122, 1, -1, 
                    1, 122, 4, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 2, -1, 1, 5, 1, -1, 1, 8, 1, 9, 1, 10, 
                       4, -1, 1, 17, 1, 18, 1, 19, 1, 20, 1, 21, 22, -1, 
                       1, 7, 2, -1, 1, 13, 8, -1, 1, 12, 1, -1, 1, 15, 1, 
                       -1, 1, 1, 2, -1, 1, 4, 2, -1, 1, 16, 1, -1, 1, 3, 
                       1, 11, 1, 14, 1, 6 )
      SPECIAL = unpack( 69, -1 )
      TRANSITION = [
        unpack( 2, 18, 2, -1, 1, 18, 18, -1, 1, 18, 6, -1, 1, 16, 1, 5, 
                1, 8, 2, -1, 1, 7, 2, -1, 1, 17, 10, 15, 1, -1, 1, 2, 1, 
                -1, 1, 9, 3, -1, 26, 14, 4, -1, 1, 14, 1, -1, 2, 14, 1, 
                3, 2, 14, 1, 12, 2, 14, 1, 10, 1, 14, 1, 6, 4, 14, 1, 1, 
                2, 14, 1, 11, 1, 4, 2, 14, 1, 13, 3, 14 ),
        unpack( 1, 19 ),
        unpack(  ),
        unpack( 1, 20 ),
        unpack( 1, 21 ),
        unpack(  ),
        unpack( 1, 22 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 23 ),
        unpack( 1, 24 ),
        unpack( 1, 25 ),
        unpack( 1, 26 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 27 ),
        unpack( 1, 28 ),
        unpack( 1, 29 ),
        unpack( 1, 30 ),
        unpack( 1, 31, 1, 32 ),
        unpack( 1, 34, 7, -1, 1, 33 ),
        unpack( 1, 35 ),
        unpack( 1, 36 ),
        unpack( 1, 38, 1, 37 ),
        unpack( 1, 39 ),
        unpack( 1, 40 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack( 1, 42 ),
        unpack( 1, 43 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack( 1, 45 ),
        unpack( 1, 46 ),
        unpack( 1, 47 ),
        unpack( 1, 48 ),
        unpack( 1, 49 ),
        unpack( 1, 50 ),
        unpack( 1, 51 ),
        unpack(  ),
        unpack( 1, 52 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack(  ),
        unpack( 1, 54 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack( 1, 56 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack( 1, 58 ),
        unpack( 1, 59 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack( 1, 61 ),
        unpack(  ),
        unpack( 1, 62 ),
        unpack(  ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack(  ),
        unpack( 1, 64 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack(  ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack(  ),
        unpack( 10, 14, 7, -1, 26, 14, 4, -1, 1, 14, 1, -1, 26, 14 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 6
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | ID | INT | STRING | COMMENT | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa6 = DFA6.new( self, 6 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end

