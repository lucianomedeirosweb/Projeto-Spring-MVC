package dao;

import org.springframework.stereotype.Repository;

import entity.PessoaJuridica;

@Repository
public class PessoaJuridicaDao extends AbstractDAO<PessoaJuridica>{

	@Override
	public Class<PessoaJuridica> entityClass() {
		// TODO Auto-generated method stub
		return PessoaJuridica.class;
	}

}
