ExUnit.start

Mix.Task.run "ecto.create", ~w(-r AarhusElixir.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r AarhusElixir.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(AarhusElixir.Repo)

