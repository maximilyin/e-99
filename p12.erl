-module(p12).
-export([decode_modified/1]).

decode_modified([{0, List}]) ->
   [List];
decode_modified([{N, Element}]) ->
   [{decode_modified(N-1, Element)}].

