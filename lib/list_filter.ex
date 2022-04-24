defmodule ListFilter do
  def call(list), do: getOddLength(list, 0)

  defp getOddLength([], length), do: length

  defp getOddLength([head | tail], length) do
    if (is_number(head)) do
      fetchIsOdd(head, tail, length)
    else
      isNumberText = Regex.match?(~r/^\d+$/, head)
      if (isNumberText || is_number(head)) do
        {intValue, _} = Integer.parse(head);
        fetchIsOdd(intValue, tail, length)
      else getOddLength(tail, length)
      end
    end
  end

  defp fetchIsOdd(value, list, length) do
    rest = rem(value, 2)
    isOdd = rest == 1
    if (isOdd) do
      getOddLength(list, length + 1)
    else getOddLength(list, length)
    end
  end
end
