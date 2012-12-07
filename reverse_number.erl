-module(reverse_number).
-export([create_reverse/1]).

create_reverse(1) ->
   [1];
create_reverse(N) ->
   [N|create_reverse(N-1)].
