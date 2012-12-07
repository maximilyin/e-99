-module(sum).
-export([sum/1, sum_tail/1, sum_seq/1, sum_interval/2]).

%sum_list_number
sum([]) ->
   0;
sum([H|T]) ->
   H + sum(T).

%sum_list_number tail_recursion
sum_tail(List) ->
   sum_tail(List, 0).

sum_tail([H|T], Sum) ->
   sum_tail(T, H + Sum);
sum_tail([], List) ->
   List.

%sum_interval
sum_seq(0) ->
   0;
sum_seq(N) ->
   N + sum_seq(N-1).

%sum_interval two_namber, condition X =< Y
sum_interval(X, Y) when X =:= Y ->
   X;
sum_interval(X, Y) ->
   sum_interval(X, Y, 0).

sum_interval(X, Y, N) when X > Y ->
   N;
sum_interval(X, Y, N) ->
   sum_interval(X, Y-1, Y+N).
