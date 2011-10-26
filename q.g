grammar Q;
options {
  language = Ruby;
}

@members {
    attr_accessor :interp;
    def initialize(input, interp)
      super(input)
      @interp = interp
    end
}

program:   stat+
    ;

stat: print
    | table
    | insert
    | assign
    | query
    ;

print:  'print' expr ';' {interp.print($expr.value);}
    ;

// START: table
table
    :   'create' 'table' tbl=ID
        '(' 'primary' 'key' key=ID (',' columns+=ID)+ ')' ';'
        {interp.create_table($tbl.text, $key.text, $columns);}
    ;
// END: table

// START: assign
assign : ID '=' expr ';'  {interp.store($ID.text, $expr.value);} ;
// END: assign

// START: insert
insert
    : 'insert' 'into' ID 'set' set_fields[interp.tables.get($ID.text)] ';'
      {interp.insert_into($ID.text, $set_fields.row);}
    ;
// END: insert

// START: fields
set_fields[t] returns [row]
@init { $row = Row.new(t.columns); } // set return value
    :   set[$row] (',' set[$row])*
    ;
set[row] // pass in Row we're filling in
    :   ID '=' expr {row.set($ID.text, $expr.value);}
    ;
// END: fields

// START: expr
// Match a simple value or do a query
expr returns [value] // access as $expr.value in other rules
	:   ID      {$value = interp.load($ID.text);}
	|   INT     {$value = $INT.text;}
	|   STRING  {$value = $STRING.text;}
	|   query   {$value = $query.value;}
	;
// END: expr

query returns [value]
    :   'select' columns+=$ID.text (',' columns+=$ID.text)* 'from' tbl=ID
        (   'where' key=$ID.text '=' expr
            {$value = interp.select($tbl.text, $columns, $key.text, $expr.value);}
        |   {$value = interp.select($tbl.text, $columns);}
        )
    ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* ;

INT :   '0'..'9'+ ;

STRING
    :   '\'' ~'\''* '\''
    ;

COMMENT
    :   '//' ~('\n'|'\r')* '\r'? '\n' {$channel=HIDDEN;}
    ;

WS  :   ( ' '
        | '\t'
        | '\r'
        | '\n'
        ) {$channel=HIDDEN;}
    ;
