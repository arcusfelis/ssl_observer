%%%-------------------------------------------------------------------
%% @doc ssl_observer public API
%% @end
%%%-------------------------------------------------------------------

-module(ssl_observer_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================
-spec start(atom(), list()) -> {ok, pid()}.
start(_StartType, _StartArgs) ->
    ssl_observer_sup:start_link().

%%--------------------------------------------------------------------
-spec stop(term()) -> ok.
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
