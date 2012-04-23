-module(p02).
-export([but_last/1]).

but_last([_|T=[_|[_|_]]])->
	but_last(T);
but_last(B=[_|[_|[]]])->
	B.

