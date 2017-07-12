package dao;

import org.springframework.stereotype.Repository;

import entity.Categoria;

@Repository
public class CategoriaDao extends AbstractDAO<Categoria>{

	@Override
	public Class<Categoria> entityClass() {
		// TODO Auto-generated method stub
		return Categoria.class;
	}

}
