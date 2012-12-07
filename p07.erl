-module(p07).
-export([flatten/1]).

flatten([[H|T]|X]) -> flatten([H|[T|X]]);
flatten([[]|T]) -> flatten(T);
flatten([H|T]) -> [H|flatten(T)];
flatten([]) -> [].
 
