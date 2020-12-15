#!/bin/bash
echo "8º- Melhore o script da questão anterior para que além do número de aprovados e reprovados, seja
exibido um histograma das médias, isto é, o número de médias entre 0 e 9.9999, o número de
médias entre 10 e 1.9999, ...., o número de médias entre 8 e 9.99999 e o número de médias entre
9 e 10."

{

	acc = 0;
	for (i=1; i<=NF; i++)
	{
		if(${i} ~/[0-9]+/ ) acc = acc+${i};

	}
	media = acc/3.0
	if (media >= 90)
		medias_nove_a_dez++;
	if (media >= 80 && media <= 99.9)
		medias_oito_a_nove_ponto_nove++;
	if (media >= 10.9)
		medias_um_ponto_nove_a_dez++;
	if (media <= 99.9)
		medias_zero_a_nove_ponto_nove++;
	if (media >= 70)
		aprovado++;
	if (media < 70)
		reprovado++;

}

END {
	print aprovado " aprovados"
	print reprovado " reprovados"
	print medias_zero_a_nove_ponto_nove " médias maiores que 0 a menores que 9.9"
	print medias_um_ponto_nove_a_dez " médias maiores que 1.9 a 10"
	print medias_oito_a_nove_ponto_nove " médias entre 8 e 9.9"
	print medias_nove_a_dez " médias entre 9 a 10"
}