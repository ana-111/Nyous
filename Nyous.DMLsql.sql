INSERT INTO acesso (Tipo) VALUES
	('Adminiatrador'),
	('Padrao');


INSERT INTO categoria (Titulo) VALUEs
	('Meetup'),
	('Workshop'),
	('Bootcamp'),
	('Live');


INSERT INTO localizacao (Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP)
	VALUES
	('Alameda Bar�o de Limeira',539, null, 'Santa Cecilia', 'S�o Paulo', 'SP', '01202-001');


INSERT INTO usuario (Nome, Email, Senha, DataNascimento, IdAcesso) VALUES
	('Ana Carolina', 'anacarolina@senai.com.br', '987654321', '1958-05-08T00:00:00', 1);


INSERT INTO evento (DataEvento, Capacidade,IdLocalizacao, IdCategoria) VALUES
	('2020-08-20T23:00:00', 100, 1, 1);