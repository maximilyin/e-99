-module(p12).
-export([decode_modified/1, len/1]).

decode_modified(List) ->
   decode_modified(List, []).

decode_modified([], List) ->
   lists:reverse(p07:flatten(List));
decode_modified([H|T], List) ->
   decode_modified(T, [len(H)|List]).

len(List) ->
   len(List, []).

len({0, _Element}, List) ->
   List;
len({N, Element}, List) ->
   len({N-1, Element}, [Element|List]).

