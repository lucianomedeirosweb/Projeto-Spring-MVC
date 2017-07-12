package dao;

import org.springframework.stereotype.Repository;

import entity.Venda;

@Repository
public class VendaDao extends AbstractDAO<Venda>{

	@Override
	public Class<Venda> entityClass() {
		// TODO Auto-generated method stub
		return Venda.class;
	}

}
