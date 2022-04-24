import Integer

defmodule ListFilter do
  def call(list), do: countOdd(list)

  defp countOdd(list) do
    listNumeric = filterNumeric(list)
    listOdd = filterOdd(listNumeric)
    Enum.count(listOdd)
  end

  defp filterNumeric(list), do:
    Enum.flat_map(list,
      fn x ->
        case Integer.parse(x) do
          {v, _rest} -> [v]
          :error -> []
        end
      end)

  defp filterOdd(list), do:  Enum.filter(list, fn x -> is_odd(x) end)
end
