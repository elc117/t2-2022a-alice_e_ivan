/*
 O Zoológico de São Paulo fez uma pesquisa pela internet para escolher o
nome de seu mais novo habitante, recém-nascido: um lindo e simpático
bicho-preguiça. Sete nomes foram colocados na pesquisa: Buda, Fofo, Pingo,
Rock, Samba, Teco e Zorro. O Zoológico ordenou os nomes de acordo com o número
de votos recebidos, do mais votado para o menos votado. O ganhador ainda não
foi anunciado, mas alguns dados da pesquisa foram divulgados:
• Cada nome recebeu um número diferente de votos.
• Buda recebeu mais votos do que Teco.
• Teco recebeu mais votos do que Fofo.
• Fofo recebeu mais votos do que Rock.
• Samba não recebeu o menor número de votos.
• Zorro recebeu menos votos do que Pingo.
• Zorro recebeu mais votos do que Samba e mais votos do que Teco

Qual das seguintes alternativas é uma possível lista completa e correta dos
nomes ordenados, do mais votado ao menos votado?
(A) Buda, Pingo, Zorro, Samba, Fofo, Teco, Rock
(B) Buda, Pingo, Zorro, Teco, Fofo, Rock, Samba
(C) Pingo, Zorro, Buda, Samba, Teco, Fofo, Rock
(D) Pingo, Zorro, Samba, Teco, Buda, Fofo, Rock
(E) Zorro, Pingo, Buda, Teco, Samba, Fofo, Rock

Podemos verificar se uma ordem é válida ou não usando uma consulta desse tipo:
?-ordemNomes([Buda, Fofo, Pingo, Rock, Samba, Teco, Zorro]), Buda = 1, Pingo = 2, Zorro = 3, Samba = 4, Fofo = 5, Teco = 6, Rock = 7
Executando essas consultas para as alternativas temos que
(A) - false
(B) - false
(C) - true - o programa retorna essa a lista com valores iguais a os inseridos
(D) - false
(E) - false

Portanto, a resposta correta é a letra C.
*/
ordemNomes([Buda, Fofo, Pingo, Rock, Samba, Teco, Zorro]) :-
    % Cada nome recebeu um número diferente de votos.
	permutation([Buda, Fofo, Pingo, Rock, Samba, Teco, Zorro],[1,2,3,4,5,6,7]),
    % Buda recebeu mais votos do que Teco.
    Buda < Teco,
	% Teco recebeu mais votos do que Fofo.
	Teco < Fofo,
	% Fofo recebeu mais votos do que Rock.
	Fofo < Rock,
	% Samba não recebeu o menor número de votos.
	not(Samba is 7),
	% Zorro recebeu menos votos do que Pingo.
	Zorro > Pingo,
	% Zorro recebeu mais votos do que Samba e mais votos do que Teco
	Zorro < Samba,
	Zorro < Teco.