-module(create).
-export([create/1, reverse/1]).

create(1) ->
   [1];
create(N) when is_number(N) ->
   [N|create(N-1)].

reverse(List) ->
   reverse(List, []).

reverse([], List) ->
   List;
reverse([H|T], List) ->
   reverse(T, [H|List]).
