defmodule Hax.Lexer do
  def token_stream(input) do
    input
    |> Stream.map(&token_for_char/1)
  end

  defp token_for_char(char) do
    {token_type_for_char(char), char}
  end

  defp token_type_for_char(char) do
    %{
      "=" => :assign,
      "+" => :plus,
      "(" => :lparen,
      ")" => :rparen,
      "{" => :lbrace,
      "}" => :rbrace,
      "," => :comma,
      ";" => :semicolon
    }
    |> Map.get(char, :unknown)
  end
end
