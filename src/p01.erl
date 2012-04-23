-module(p01).
-export([last/1]).

last([_|T=[_|_]])->
	last(T);
last(B=[_|[]])->
	B.
				
