defmodule Ephemera do
  use WebSockex
  @moduledoc """
  Documentation for `Ephemera`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Ephemera.hello()
      :world

  """
  def start_link(url, state) do
    WebSockex.start_link(url, __MODULE__, state)
  end

  def handle_frame({type, msg}, state) do
    IO.puts "Received Message - Type: #{inspect type} -- Message: #{inspect msg}"
    {:ok, state}
  end

  def handle_cast({:send, {type, msg} = frame}, state) do
    IO.puts "Sending #{type} frame with payload: #{msg}"
    {:reply, frame, state}
  end

  def hello do
    :world
  end
end
