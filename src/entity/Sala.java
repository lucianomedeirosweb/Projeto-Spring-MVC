package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class Sala extends AbstractEntity{
	
	@Id
	@Column(name = "id")
	@GeneratedValue
	private Long id;
	
private String disponivel;
	
	private String tipo;

	private String numero;

	private String projetor;

	private String climatizada;

	
	public Sala(Long id){
		this.id = id;
	}
	
	public Sala(){
		
	}
	
	

	public String getDisponivel() {
		return disponivel;
	}

	public void setDisponivel(String disponivel) {
		this.disponivel = disponivel;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getProjetor() {
		return projetor;
	}

	public void setProjetor(String projetor) {
		this.projetor = projetor;
	}

	public String getClimatizada() {
		return climatizada;
	}

	public void setClimatizada(String climatizada) {
		this.climatizada = climatizada;
	}

	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return null;
	}}