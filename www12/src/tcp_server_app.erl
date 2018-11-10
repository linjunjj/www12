%%%-------------------------------------------------------------------
%%% @author linjun
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Nov 2018 20:16
%%%-------------------------------------------------------------------
-module(tcp_server_app).
-behaviour(application).
-author("linjun").

%% API
-export([start/2, stop/1]).
-define(PORT,2222).

start(_Type, _Args) ->
  io:format("tcp app start~n"),
  case tcp_server_sup:start_link(?PORT) of
    {ok, Pid} ->
      {ok, Pid};
    Other ->
      {error, Other}
  end.

stop(_S) ->
  ok.


