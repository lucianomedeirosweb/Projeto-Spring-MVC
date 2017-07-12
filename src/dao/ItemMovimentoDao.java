package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import entity.ItemMovimento;

@Repository
public class ItemMovimentoDao extends AbstractDAO<ItemMovimento>{

	@Override
	public Class<ItemMovimento> entityClass() {
		// TODO Auto-generated method stub
		return ItemMovimento.class;
	}
	
	public List<ItemMovimento> listMov(Long idMov){
		Query query = manager.createQuery("SELECT i FROM ItemMovimento i WHERE i.movimento.id = :id");
		query.setParameter("id", idMov);
		return query.getResultList();
	}

}
