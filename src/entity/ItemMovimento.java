package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class ItemMovimento extends AbstractEntity{
	
	@Id
	@Column(name = "id_itemMovimento")
	@GeneratedValue
	private Long id;
	
	private int qtde;
	
	private double valor;
	
	@ManyToOne
	@JoinColumn(name = "id_movimento")
	private Movimento movimento;
	
	@ManyToOne
	@JoinColumn(name = "id_produto")
	private Sala sala;

	public Sala getProduto() {
		return sala;
	}

	public void setProduto(Sala sala) {
		this.sala = sala;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getQtde() {
		return qtde;
	}

	public void setQtde(int qtde) {
		this.qtde = qtde;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public Movimento getMovimento() {
		return movimento;
	}

	public void setMovimento(Movimento movimento) {
		this.movimento = movimento;
	}
}
