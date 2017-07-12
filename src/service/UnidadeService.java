package service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UnidadeDao;
import entity.Unidade;

@Service
@Transactional
public class UnidadeService {

	@Autowired
	private UnidadeDao uDao;

	public void insert(Unidade unidade) {
		uDao.inserir(unidade);
	}

	public void update(Unidade unidade) {
		uDao.atualizar(unidade);
	}

	public Unidade findId(long id) {
		return uDao.buscarPorId(id);
	}	

	public List<Unidade> listAll() {
		return uDao.listar();
	}	

	public void remove(Unidade cardapio) {
		uDao.remover(cardapio);
	}
}
