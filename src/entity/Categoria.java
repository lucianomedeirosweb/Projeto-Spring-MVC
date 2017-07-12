package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Categoria extends AbstractEntity{
	
	@Id
	@Column(name = "id_categoria")
	@GeneratedValue
	private Long id;
	
	@Column(length = 50)
	private String descricao;
	
	public Categoria(Long id){
		this.id = id;
	}
	
	public Categoria(){
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
