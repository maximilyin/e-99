-module(p08).
-export([compress/1]).

compress([H,H|T]) -> compress([H|T]);
compress([H|T]) -> [H|compress(T)];
compress([]) -> [].

