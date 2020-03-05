package br.com.ibndocs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="regra", schema="controle_acesso")
public class Regra {
	
	@Id
	@Column(name="regr_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer regrId;
	
	@Column(name="regr_controller")
	private String regrController;
	
	@Column(name="regr_nome_exibido")
	private String regrNomeExibido;

	public Integer getRegrId() {
		return regrId;
	}

	public void setRegrId(Integer regrId) {
		this.regrId = regrId;
	}

	public String getRegrController() {
		return regrController;
	}

	public void setRegrController(String regrController) {
		this.regrController = regrController;
	}

	public String getRegrNomeExibido() {
		return regrNomeExibido;
	}

	public void setRegrNomeExibido(String regrNomeExibido) {
		this.regrNomeExibido = regrNomeExibido;
	}

}
