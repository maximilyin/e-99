-module(p05).
-export([reverse/1]).

reverse(List) -> 
    reverse(List, []).
reverse([H|T], X) -> 
    reverse(T, [H|X]);
reverse([], X) -> 
    X.

