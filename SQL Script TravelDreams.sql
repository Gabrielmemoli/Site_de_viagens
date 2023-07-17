CREATE TABLE Usuario (
	Id int IDENTITY (1,1),
	Perfil nvarchar (20),
	DataInclusao datetime,
	DataExclusao datetime,
	Ativo bit,
	Nome nvarchar (50),
	Email nvarchar (40),
	CPFCNPJ nvarchar(14),
	DataNascimento nvarchar(10),
	RG nvarchar(12),
	Login nvarchar (20),
	Senha nvarchar (20)
)

CREATE TABLE Combo (
	Id int IDENTITY (1,1),
	Ativo bit,
	DataInclusao datetime,
	IdUsuarioInclusao int,
	DataExclusao datetime,
	IdUsuarioExclusao int,
	DataMaximaCancelar datetime,
	Qntd int,
	Preco nvarchar(20),
	QntdLimiteDiarias int,
	QntdLimiteQuartos int,
	QntdLimitePassageiros int,
	IdAeroOrigem int,
	IdAeroDestino int,
	DataSaida datetime,
	DataVolta datetime,
	Descricao nvarchar (400),
	IdHotel int,
	IdAvaliacao int,
	IdFotos int
)

CREATE TABLE Aeroporto (
	Id int IDENTITY (1,1),
	Nome nvarchar (50)
)

CREATE TABLE Hotel (
	Id int IDENTITY (1,1),
	Nome nvarchar (50),
	TipoQuarto nvarchar(100),
	OpcoesQuarto nvarchar(200),
	Ativo bit,
	DataInclusao datetime,
	DataExclusao datetime
)

CREATE TABLE Avaliacao (
	Id int IDENTITY (1,1),
	IdCombo int,
	Descricao nvarchar(255),
	Nota int
)

CREATE TABLE Foto (
	Id int IDENTITY(1,1),
	IdCombo int,
	Link nvarchar(100),
	Ativo bit
)

CREATE TABLE Endereco (
	Id int IDENTITY (1,1),
	IdInclusao int,
	Tipo nvarchar (20),
	Ativo bit,
	CEP nvarchar(10),
	Rua nvarchar(50),
	Numero int,
	Complemento nvarchar(50),
	Bairro nvarchar(30),
	Estado nvarchar(15),
	Cidade nvarchar(25)
)