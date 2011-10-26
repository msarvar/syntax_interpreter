#!/usr/bin/env ruby
#
# q.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: q.g
# Generated at: 2011-10-23 16:47:25
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

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "ID", "INT", "STRING", "COMMENT", "WS", "'print'", "';'", 
                    "'create'", "'table'", "'('", "'primary'", "'key'", 
                    "','", "')'", "'='", "'insert'", "'into'", "'set'", 
                    "'select'", "'from'", "'where'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Q

    RULE_METHODS = [ :program, :stat, :print, :table, :assign, :insert, 
                     :set_fields, :set, :expr, :query ].freeze


    include TokenData

    begin
      generated_using( "q.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )


    end

        attr_accessor :interp;
        def initialize(input, interp)
          super(input)
          @interp = interp
        end

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule program
    # 
    # (in q.g)
    # 14:1: program : ( stat )+ ;
    # 
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 14:12: ( stat )+
        # at file 14:12: ( stat )+
        match_count_1 = 0
        while true
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == ID || look_1_0 == T__9 || look_1_0 == T__11 || look_1_0 == T__19 || look_1_0 == T__22 )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 14:12: stat
            @state.following.push( TOKENS_FOLLOWING_stat_IN_program_30 )
            stat
            @state.following.pop

          else
            match_count_1 > 0 and break
            eee = EarlyExit(1)


            raise eee
          end
          match_count_1 += 1
        end


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return 
    end


    # 
    # parser rule stat
    # 
    # (in q.g)
    # 17:1: stat : ( print | table | insert | assign | query );
    # 
    def stat
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 17:5: ( print | table | insert | assign | query )
        alt_2 = 5
        case look_2 = @input.peek( 1 )
        when T__9 then alt_2 = 1
        when T__11 then alt_2 = 2
        when T__19 then alt_2 = 3
        when ID then alt_2 = 4
        when T__22 then alt_2 = 5
        else
          raise NoViableAlternative( "", 2, 0 )
        end
        case alt_2
        when 1
          # at line 17:7: print
          @state.following.push( TOKENS_FOLLOWING_print_IN_stat_43 )
          print
          @state.following.pop

        when 2
          # at line 18:7: table
          @state.following.push( TOKENS_FOLLOWING_table_IN_stat_51 )
          table
          @state.following.pop

        when 3
          # at line 19:7: insert
          @state.following.push( TOKENS_FOLLOWING_insert_IN_stat_59 )
          insert
          @state.following.pop

        when 4
          # at line 20:9: assign
          @state.following.push( TOKENS_FOLLOWING_assign_IN_stat_69 )
          assign
          @state.following.pop

        when 5
          # at line 21:9: query
          @state.following.push( TOKENS_FOLLOWING_query_IN_stat_79 )
          query
          @state.following.pop

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return 
    end


    # 
    # parser rule print
    # 
    # (in q.g)
    # 24:1: print : 'print' expr ';' ;
    # 
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      expr1 = nil

      begin
        # at line 24:9: 'print' expr ';'
        match( T__9, TOKENS_FOLLOWING_T__9_IN_print_92 )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_print_94 )
        expr1 = expr
        @state.following.pop
        match( T__10, TOKENS_FOLLOWING_T__10_IN_print_96 )
        # --> action
        interp.print(expr1);
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return 
    end


    # 
    # parser rule table
    # 
    # (in q.g)
    # 28:1: table : 'create' 'table' tbl= ID '(' 'primary' 'key' key= ID ( ',' columns+= ID )+ ')' ';' ;
    # 
    def table
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      tbl = nil
      key = nil
      columns = nil
      list_of_columns = []

      begin
        # at line 29:9: 'create' 'table' tbl= ID '(' 'primary' 'key' key= ID ( ',' columns+= ID )+ ')' ';'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_table_118 )
        match( T__12, TOKENS_FOLLOWING_T__12_IN_table_120 )
        tbl = match( ID, TOKENS_FOLLOWING_ID_IN_table_124 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_table_134 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_table_136 )
        match( T__15, TOKENS_FOLLOWING_T__15_IN_table_138 )
        key = match( ID, TOKENS_FOLLOWING_ID_IN_table_142 )
        # at file 30:36: ( ',' columns+= ID )+
        match_count_3 = 0
        while true
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0 == T__16 )
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 30:37: ',' columns+= ID
            match( T__16, TOKENS_FOLLOWING_T__16_IN_table_145 )
            columns = match( ID, TOKENS_FOLLOWING_ID_IN_table_149 )
            list_of_columns << columns


          else
            match_count_3 > 0 and break
            eee = EarlyExit(3)


            raise eee
          end
          match_count_3 += 1
        end

        match( T__17, TOKENS_FOLLOWING_T__17_IN_table_153 )
        match( T__10, TOKENS_FOLLOWING_T__10_IN_table_155 )
        # --> action
        interp.create_table(tbl.text, key.text, list_of_columns);
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return 
    end


    # 
    # parser rule assign
    # 
    # (in q.g)
    # 36:1: assign : ID '=' expr ';' ;
    # 
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      __ID2__ = nil
      expr3 = nil

      begin
        # at line 36:10: ID '=' expr ';'
        __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_assign_180 )
        match( T__18, TOKENS_FOLLOWING_T__18_IN_assign_182 )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_assign_184 )
        expr3 = expr
        @state.following.pop
        match( T__10, TOKENS_FOLLOWING_T__10_IN_assign_186 )
        # --> action
        interp.store(__ID2__.text, expr3);
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return 
    end


    # 
    # parser rule insert
    # 
    # (in q.g)
    # 40:1: insert : 'insert' 'into' ID 'set' set_fields[interp.tables.get($ID.text)] ';' ;
    # 
    def insert
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      __ID4__ = nil
      set_fields5 = nil

      begin
        # at line 41:7: 'insert' 'into' ID 'set' set_fields[interp.tables.get($ID.text)] ';'
        match( T__19, TOKENS_FOLLOWING_T__19_IN_insert_204 )
        match( T__20, TOKENS_FOLLOWING_T__20_IN_insert_206 )
        __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_insert_208 )
        match( T__21, TOKENS_FOLLOWING_T__21_IN_insert_210 )
        @state.following.push( TOKENS_FOLLOWING_set_fields_IN_insert_212 )
        set_fields5 = set_fields( interp.tables.get(__ID4__.text) )
        @state.following.pop
        match( T__10, TOKENS_FOLLOWING_T__10_IN_insert_215 )
        # --> action
        interp.insert_into(__ID4__.text, set_fields5);
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return 
    end


    # 
    # parser rule set_fields
    # 
    # (in q.g)
    # 47:1: set_fields[t] returns [row] : set[$row] ( ',' set[$row] )* ;
    # 
    def set_fields( t )
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      row = nil
      # - - - - @init action - - - -
       row =  Row.new(t.columns) 

      begin
        # at line 49:9: set[$row] ( ',' set[$row] )*
        @state.following.push( TOKENS_FOLLOWING_set_IN_set_fields_255 )
        set( row )
        @state.following.pop
        # at line 49:19: ( ',' set[$row] )*
        while true # decision 4
          alt_4 = 2
          look_4_0 = @input.peek( 1 )

          if ( look_4_0 == T__16 )
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 49:20: ',' set[$row]
            match( T__16, TOKENS_FOLLOWING_T__16_IN_set_fields_259 )
            @state.following.push( TOKENS_FOLLOWING_set_IN_set_fields_261 )
            set( row )
            @state.following.pop

          else
            break # out of loop for decision 4
          end
        end # loop for decision 4

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )

      end
      
      return row
    end


    # 
    # parser rule set
    # 
    # (in q.g)
    # 51:1: set[row] : ID '=' expr ;
    # 
    def set( row )
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      __ID6__ = nil
      expr7 = nil

      begin
        # at line 52:9: ID '=' expr
        __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_set_284 )
        match( T__18, TOKENS_FOLLOWING_T__18_IN_set_286 )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_set_288 )
        expr7 = expr
        @state.following.pop
        # --> action
        row.set(__ID6__.text, expr7);
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )

      end
      
      return 
    end


    # 
    # parser rule expr
    # 
    # (in q.g)
    # 58:1: expr returns [value] : ( ID | INT | STRING | query );
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      value = nil
      __ID8__ = nil
      __INT9__ = nil
      __STRING10__ = nil
      query11 = nil

      begin
        # at line 59:2: ( ID | INT | STRING | query )
        alt_5 = 4
        case look_5 = @input.peek( 1 )
        when ID then alt_5 = 1
        when INT then alt_5 = 2
        when STRING then alt_5 = 3
        when T__22 then alt_5 = 4
        else
          raise NoViableAlternative( "", 5, 0 )
        end
        case alt_5
        when 1
          # at line 59:6: ID
          __ID8__ = match( ID, TOKENS_FOLLOWING_ID_IN_expr_314 )
          # --> action
          value =  interp.load(__ID8__.text)
          # <-- action

        when 2
          # at line 60:6: INT
          __INT9__ = match( INT, TOKENS_FOLLOWING_INT_IN_expr_328 )
          # --> action
          value =  __INT9__.text
          # <-- action

        when 3
          # at line 61:6: STRING
          __STRING10__ = match( STRING, TOKENS_FOLLOWING_STRING_IN_expr_341 )
          # --> action
          value =  __STRING10__.text
          # <-- action

        when 4
          # at line 62:6: query
          @state.following.push( TOKENS_FOLLOWING_query_IN_expr_351 )
          query11 = query
          @state.following.pop
          # --> action
          value =  query11
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return value
    end


    # 
    # parser rule query
    # 
    # (in q.g)
    # 66:1: query returns [value] : 'select' columns+= ID ( ',' columns+= ID )* 'from' tbl= ID ( 'where' key= ID '=' expr | ) ;
    # 
    def query
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      value = nil
      tbl = nil
      key = nil
      columns = nil
      expr12 = nil
      list_of_columns = []

      begin
        # at line 67:9: 'select' columns+= ID ( ',' columns+= ID )* 'from' tbl= ID ( 'where' key= ID '=' expr | )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_query_376 )
        columns = match( ID, TOKENS_FOLLOWING_ID_IN_query_380 )
        list_of_columns << columns

        # at line 67:30: ( ',' columns+= ID )*
        while true # decision 6
          alt_6 = 2
          look_6_0 = @input.peek( 1 )

          if ( look_6_0 == T__16 )
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 67:31: ',' columns+= ID
            match( T__16, TOKENS_FOLLOWING_T__16_IN_query_383 )
            columns = match( ID, TOKENS_FOLLOWING_ID_IN_query_387 )
            list_of_columns << columns


          else
            break # out of loop for decision 6
          end
        end # loop for decision 6
        match( T__23, TOKENS_FOLLOWING_T__23_IN_query_391 )
        tbl = match( ID, TOKENS_FOLLOWING_ID_IN_query_395 )
        # at line 68:9: ( 'where' key= ID '=' expr | )
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == T__24 )
          alt_7 = 1
        elsif ( look_7_0 == EOF || look_7_0 == ID || look_7_0.between?( T__9, T__11 ) || look_7_0 == T__16 || look_7_0 == T__19 || look_7_0 == T__22 )
          alt_7 = 2
        else
          raise NoViableAlternative( "", 7, 0 )
        end
        case alt_7
        when 1
          # at line 68:13: 'where' key= ID '=' expr
          match( T__24, TOKENS_FOLLOWING_T__24_IN_query_409 )
          key = match( ID, TOKENS_FOLLOWING_ID_IN_query_413 )
          match( T__18, TOKENS_FOLLOWING_T__18_IN_query_415 )
          @state.following.push( TOKENS_FOLLOWING_expr_IN_query_417 )
          expr12 = expr
          @state.following.pop
          # --> action
          value =  interp.select(tbl.text, list_of_columns, key.text, expr12)
          # <-- action

        when 2
          # at line 70:13: 
          # --> action
          value =  interp.select(tbl.text, list_of_columns)
          # <-- action

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return value
    end



    TOKENS_FOLLOWING_stat_IN_program_30 = Set[ 1, 4, 9, 11, 19, 22 ]
    TOKENS_FOLLOWING_print_IN_stat_43 = Set[ 1 ]
    TOKENS_FOLLOWING_table_IN_stat_51 = Set[ 1 ]
    TOKENS_FOLLOWING_insert_IN_stat_59 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_stat_69 = Set[ 1 ]
    TOKENS_FOLLOWING_query_IN_stat_79 = Set[ 1 ]
    TOKENS_FOLLOWING_T__9_IN_print_92 = Set[ 4, 5, 6, 9, 11, 19, 22 ]
    TOKENS_FOLLOWING_expr_IN_print_94 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_print_96 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_table_118 = Set[ 12 ]
    TOKENS_FOLLOWING_T__12_IN_table_120 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_table_124 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_table_134 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_table_136 = Set[ 15 ]
    TOKENS_FOLLOWING_T__15_IN_table_138 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_table_142 = Set[ 16 ]
    TOKENS_FOLLOWING_T__16_IN_table_145 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_table_149 = Set[ 16, 17 ]
    TOKENS_FOLLOWING_T__17_IN_table_153 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_table_155 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assign_180 = Set[ 18 ]
    TOKENS_FOLLOWING_T__18_IN_assign_182 = Set[ 4, 5, 6, 9, 11, 19, 22 ]
    TOKENS_FOLLOWING_expr_IN_assign_184 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_assign_186 = Set[ 1 ]
    TOKENS_FOLLOWING_T__19_IN_insert_204 = Set[ 20 ]
    TOKENS_FOLLOWING_T__20_IN_insert_206 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_insert_208 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_insert_210 = Set[ 4 ]
    TOKENS_FOLLOWING_set_fields_IN_insert_212 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_insert_215 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_set_fields_255 = Set[ 1, 16 ]
    TOKENS_FOLLOWING_T__16_IN_set_fields_259 = Set[ 4 ]
    TOKENS_FOLLOWING_set_IN_set_fields_261 = Set[ 1, 16 ]
    TOKENS_FOLLOWING_ID_IN_set_284 = Set[ 18 ]
    TOKENS_FOLLOWING_T__18_IN_set_286 = Set[ 4, 5, 6, 9, 11, 19, 22 ]
    TOKENS_FOLLOWING_expr_IN_set_288 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_expr_314 = Set[ 1 ]
    TOKENS_FOLLOWING_INT_IN_expr_328 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_expr_341 = Set[ 1 ]
    TOKENS_FOLLOWING_query_IN_expr_351 = Set[ 1 ]
    TOKENS_FOLLOWING_T__22_IN_query_376 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_query_380 = Set[ 16, 23 ]
    TOKENS_FOLLOWING_T__16_IN_query_383 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_query_387 = Set[ 16, 23 ]
    TOKENS_FOLLOWING_T__23_IN_query_391 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_query_395 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_T__24_IN_query_409 = Set[ 4 ]
    TOKENS_FOLLOWING_ID_IN_query_413 = Set[ 18 ]
    TOKENS_FOLLOWING_T__18_IN_query_415 = Set[ 4, 5, 6, 9, 11, 19, 22 ]
    TOKENS_FOLLOWING_expr_IN_query_417 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

