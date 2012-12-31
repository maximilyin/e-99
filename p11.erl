-module(p11).
-export([encode_modified/1]).

encode_modified(List) ->
   encode_modified(List, []).

encode_modified([], List) ->
   L = lists:reverse(List),
   len(L);
encode_modified([H|T1], [[H|_] = L|T2]) ->
   encode_modified(T1, [[H|L]|T2]);
encode_modified([H1|T], [H2|[]]) ->
   encode_modified(T, [[H1], H2]);
encode_modified([H|T], List) ->
   encode_modified(T, [[H]|List]).

len([]) ->
   [];
len([[H|[]]|T]) ->
   [H|len(T)];
len([[H|T1]|T2]) ->
   [{H, p04:len([H|T1])}|len(T2)].
