package dao;

import org.springframework.stereotype.Repository;

import entity.PessoaFisica;

@Repository
public class PessoaFisicaDao extends AbstractDAO<PessoaFisica>{

	@Override
	public Class<PessoaFisica> entityClass() {
		// TODO Auto-generated method stub
		return PessoaFisica.class;
	}

}
