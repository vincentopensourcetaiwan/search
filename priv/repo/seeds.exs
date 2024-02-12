# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Search.Repo.insert!(%Search.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Search.Repo
alias Search.Contents.Tag

Repo.insert!(%Tag{name: "elixir"})
Repo.insert!(%Tag{name: "phoenix"})
Repo.insert!(%Tag{name: "ecto"})
