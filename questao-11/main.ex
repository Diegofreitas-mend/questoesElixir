defmodule Classificar do
  def avaliar_desempenho({modo_de_jogo, pontuacao}) do
    cond do
      pontuacao < 0 ->
        {:error, :pontuacao_invalida}

      modo_de_jogo == :casual ->
        {:ok, :sem_ranque}

      modo_de_jogo == :ranqueada and pontuacao >= 1000 ->
        {:ok, :mestre}

      modo_de_jogo == :ranqueada and pontuacao >= 500 ->
        {:ok, :diamante}

      modo_de_jogo == :ranqueada and pontuacao >= 0 ->
        {:ok, :ouro}
    end
  end
end
