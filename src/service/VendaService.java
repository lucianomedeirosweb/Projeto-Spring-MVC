package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.VendaDao;
import entity.Venda;

@Service
@Transactional
public class VendaService {
	@Autowired
	private VendaDao uDao;

	public void insert(Venda venda) {
		uDao.inserir(venda);
	}

	public void update(Venda venda) {
		uDao.atualizar(venda);
	}

	public Venda findId(long id) {
		return uDao.buscarPorId(id);
	}	

	public List<Venda> listAll() {
		return uDao.listar();
	}	

	public void remove(Venda cardapio) {
		uDao.remover(cardapio);
	}
}
