defmodule SampleApi do
  @moduledoc """
  Documentation for SampleApi.
  """

  @doc """
  Hello world.

  ## Examples

      iex> SampleApi.hello()
      :world

  """
  def hello do
    :world
  end

  require Logger

  def get() do
    url = "https://api.github.com/zen"
    # gradle = "https://gradle.com/s/h3seysgovsmvm"
    response = HTTPoison.get!(url)
    Logger.info "レスポンス: #{inspect response}"

    # bodyを抽出
    body = response.body
    Logger.info "body: #{inspect body}"

    # headerを出力
    headers = response.headers
    Enum.map(headers, fn {header, value} -> IO.puts "#{header}: #{value}\n" end)

  end
end