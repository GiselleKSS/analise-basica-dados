/*Encadeamento de chaves relacionais*/

select 
	emp.nome as empregado,
    depto.nome as departamento 
from
	empregado emp,
    departamento depto
where
	depto.cod_depto = emp.cod_depto;
    
/*Join Inner e Left*/

select
	emp.nome as empregado,
    count(dep.cod_depto) as dependentes
from
	empregado emp
inner join
    departamento dep
where
	emp.cod_depto = dep.cod_emp
    group by emp.nome;
