defmodule LexerTest do
  use ExUnit.Case, async: true

  alias Hax.Lexer

  test "handles all basic tokens" do
    tokens =
      "=+(){},;"
      |> String.graphemes()
      |> Lexer.token_stream()
      |> Enum.to_list()

    assert [
             {:assign, "="},
             {:plus, "+"},
             {:lparen, "("},
             {:rparen, ")"},
             {:lbrace, "{"},
             {:rbrace, "}"},
             {:comma, ","},
             {:semicolon, ";"}
           ] = tokens
  end
end
