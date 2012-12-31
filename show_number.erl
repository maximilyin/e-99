-module(show_number).
-export([show_even/1]).

show_even(1) ->
   io:format("~p~n", [1]);
show_even(N) ->
   [io:format("~p", [N])|show_even(N-1)].

