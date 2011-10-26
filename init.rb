require File.expand_path('qlexer')
require File.expand_path('qparser')
require File.expand_path('row')
require File.expand_path('table')
require File.expand_path('result_set')
require File.expand_path('interpreter_listener')
require File.expand_path('interpreter')

Interpreter.new("create table users (primary key name, passwd);
							   insert into users set name='parrt', passwd='foobar';
							   insert into users set name='tombu', passwd='spork';
							   p = select passwd, name from users; // reverse column order
							   print p;")
