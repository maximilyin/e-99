-module(p14).
-export([duplicate/1]).

duplicate(List) ->
   duplicate(List, []).

duplicate([], List) ->
   lists:reverse(List);
duplicate([H|T], List) ->
   duplicate(T, [H, H|List]).
