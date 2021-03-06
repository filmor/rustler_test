%%%-------------------------------------------------------------------
%% @doc rustler_test public API
%% @end
%%%-------------------------------------------------------------------

-module(rustler_test_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    rustler_test_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
