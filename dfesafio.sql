 use banco_aula_workbench;


-- selecionando quantidade de produtos em destaque

	select * from produtos
	where produtos.destaque = 1;

-- 1 consulta contemplando a junção entre 2 tabelas

	select nome from clientes
	inner join enderecos
	on clientes.id = enderecos.id;

-- 1 consulta contemplando a junção entre 3 tabelas

	select clientes from clientes
	inner join enderecos
	on clientes.id = enderecos.id
	inner join cidadeestado
	on cidadeestado = clientes.id;


-- 1 consulta contemplando a junção entre 2 tabelas + uma operação de totalização e agrupamento

	SELECT sum(produtos.preco), departamentos.nome
	from produtos
	inner join departamentos
	on produtos.fkdepartamento = departamentos.id
	where produtos.destaque = 1
	group by departamentos.nome;


-- 1 consulta contemplando a junção entre 3 ou mais tabelas + uma operação de totalização e agrupamento
	
	SELECT sum(produtos.preco), departamentos.nome
	from produtos
	inner join departamentos
	on produtos.fkdepartamento = departamentos.id 
    inner join estoque on produtos.fkdepartamento = estoque.id
	group by departamentos.id;