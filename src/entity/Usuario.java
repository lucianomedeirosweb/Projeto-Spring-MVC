package entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Usuario extends AbstractEntity{
	
	@Id
	@Column(name = "id_usuario")
	@GeneratedValue
	private Long id;
	
	private String login;
	
	private String senha;	
	
	private String nome;
	
	private String matricula;
	
	@Transient
	private String rSenha;
	
	@Transient
	private String senhaAtual;
	
	public Usuario(Long id){
		this.id = id;
	}
	
	public Usuario(){
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getrSenha() {
		return rSenha;
	}

	public void setrSenha(String rSenha) {
		this.rSenha = rSenha;
	}

	public String getSenhaAtual() {
		return senhaAtual;
	}

	public void setSenhaAtual(String senhaAtual) {
		this.senhaAtual = senhaAtual;
	}	
	
}
