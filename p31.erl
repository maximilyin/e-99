-module(p31).
-export([is_prime/1]).

is_prime(N) -> 
    B=[2,3,5,7,11],
List = [false || X <- B, (N rem X) =:=0],
case List of
    [false|_] ->
    false;
    [] -> 
    true
end.
