-module(p03).
-export([element_at/2]).


element_at([H|_], X) when is_number(X), X=:=1 -> 
    H;
element_at([_|T], X) when is_number(X), X>1 -> 
    element_at(T, X-1);
element_at([_|_], X) when is_number(X) -> 
    undefind;
element_at([], X) when is_number(X) -> 
    undefind.
            

