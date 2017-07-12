package dao;

import org.springframework.stereotype.Repository;

import entity.Unidade;

@Repository
public class UnidadeDao extends AbstractDAO<Unidade>{

	@Override
	public Class<Unidade> entityClass() {
		// TODO Auto-generated method stub
		return Unidade.class;
	}

}
