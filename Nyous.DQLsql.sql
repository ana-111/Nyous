SELECT * FROM  acesso;

SELECT * FROM  categoria;

SELECT * FROM  usuario;

SELECT evento.*, categoria.Titulo AS NomeCategoria, localizacao.* FROM evento
	INNER JOIN categoria ON evento.IdCategoria = categoria.IdCategoria
	INNER JOIN localizacao ON evento.IdLocalizacao = localizacao.IdLocalizacao
;

