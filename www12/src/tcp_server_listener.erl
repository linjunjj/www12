%%%-------------------------------------------------------------------
%%% @author linjun
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Nov 2018 20:32
%%%-------------------------------------------------------------------
-module(tcp_server_listener).
-behaviour(gen_event).
-author("linjun").

%% API

-export([start_link/1]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
  terminate/2, code_change/3]).
-record(state, {lsock}).
 start_link(Port) ->
   io:format("tcp server lister start ~n"),
   gen_server:start_link({local,?MODULE},?MODULE,[Port],[]).
