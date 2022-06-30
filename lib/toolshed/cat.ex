defmodule Toolshed.Cat do
  @moduledoc """
  This module provides the `cat` command
  """

  @doc """
  Reads and prints out the contents of a file
  """
  @spec cat(Path.t()) :: :"do not show this result in output"
  def cat(path) do
    path
    |> File.read!()
    |> IO.write()

    IEx.dont_display_result()
  end
end
