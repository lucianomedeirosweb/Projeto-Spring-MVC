package dao;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import entity.Sala;

@Repository
public class SalaDao extends AbstractDAO<Sala>{

	@Override
	public Class<Sala> entityClass() {
		// TODO Auto-generated method stub
		return Sala.class;
	}
	
//	public List<Sala> filtrar(Sala filtro){
//		String str = "select p from Produto p where upper(descricao) like upper(:descricao)";
//				
//		if(filtro.getDescricao() == null){
//			filtro.setDescricao("");
//		}
//		
//		if(filtro.getCategoria().getId() != null){
//			str+=" and p.categoria.id = :idCat";
//		}
//		
//		Query query=manager.createQuery(str);   
//		
//		query.setParameter("descricao", "%"+filtro.getDescricao()+"%");
//		if(filtro.getCategoria().getId() != null){
//			query.setParameter("idCat", filtro.getCategoria().getId());
//		}
//		
//		return query.getResultList();
//	}

}
