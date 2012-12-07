-module(p09).
-export([pack/1]).

%pack([H,H|T]) -> pack([[H,H]|T]);
pack([H|T]) -> [[H]|[pack(T)]];
%pack([H|T]) -> [H|pack(T)];
pack([]) -> [].
