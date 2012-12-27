-module(p09).
-export([pack/1]).

pack(List) ->
   pack(List, []).

pack([], List) ->
   lists:reverse(List);
pack([H|T1], [[H|_] = L|T2]) ->
   pack(T1, [[H|L]|T2]);
pack([H1|T], [H2|[]]) ->
   pack(T, [[H1], H2]);
pack([H|T], List) ->
   pack(T, [[H]|List]).
