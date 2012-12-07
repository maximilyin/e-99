-module(len).
-export([len/1]).

len([_|T]) ->
   1+ len(T);
len([]) ->
   0.
