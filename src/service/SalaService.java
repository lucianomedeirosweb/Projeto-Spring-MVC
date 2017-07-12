package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.SalaDao;
import entity.Sala;

@Service
@Transactional
public class SalaService {
	
	@Autowired
	private SalaDao pDao;
	
	public void insert(Sala sala) {
		pDao.inserir(sala);
	}

	public void update(Sala sala) {
		pDao.atualizar(sala);
	}

	public Sala findId(long id) {
		return pDao.buscarPorId(id);
	}	

	public List<Sala> listAll() {
		return pDao.listar();
	}

//	public List<Sala> buscar(Sala filtro) {
//		return pDao.filtrar(filtro);
//	}
	public void remove(Sala cardapio) {
		pDao.remover(cardapio);
	}
}
