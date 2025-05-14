1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano
FROM Filmes;

2 - Buscar o nome e ano dos filmes, ordenados por ano crescente

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e duração

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

6 - Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

7 - Buscar a quantidade de filmes lançados no ano, agrupados por ano, ordenando pelo ano em ordem decrescente

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;

8 - Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome e Genero

SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

9 - Buscar os atores do gênero feminino, ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

10 - Buscar os nomes dos filmes e o gênero

SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

11 - Buscar os nomes dos filmes do gênero do tipo "Mistério"

SELECT Filmes.Nome
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

12 - Buscar os nomes dos filmes e os atores, trazendo o PrimeiroNome, UltimoNome e o Papel

SELECT Filmes.Nome AS Filme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;