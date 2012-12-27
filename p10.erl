-module(p10).
-export([encode/1]).

encode(List) ->
   encode(List, []).

encode([], List) ->
   L = lists:reverse(List),
   len(L);
encode([H|T1], [[H|_] = L|T2]) ->
   encode(T1, [[H|L]|T2]);
encode([H1|T], [H2|[]]) ->
   encode(T, [[H1], H2]);
encode([H|T], List) ->
   encode(T, [[H]|List]).

len([]) ->
   [];
len([[H|T1]|T2]) ->
   [{H, p04:len([H|T1])}|len(T2)].






