package dao;

import org.springframework.stereotype.Repository;

import entity.Compra;

@Repository
public class CompraDao extends AbstractDAO<Compra>{

	@Override
	public Class<Compra> entityClass() {
		// TODO Auto-generated method stub
		return Compra.class;
	}

}
