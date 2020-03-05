package br.com.ibndocs.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="responsavel", schema="sistema")
public class Responsavel implements Serializable {
	
	@Id
	@Column(name="res_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer resId;
	
	@Column(name="res_responsavel")
	private String resResponsavel;
	
	@Column(name="res_empresa")
	private Integer resEmpresa;
	
	@Column(name="res_setor")
	private Integer resSetor;

	public Integer getResId() {
		return resId;
	}

	public void setResId(Integer resId) {
		this.resId = resId;
	}

	public String getResResponsavel() {
		return resResponsavel;
	}

	public void setResResponsavel(String resResponsavel) {
		this.resResponsavel = resResponsavel;
	}

	public Integer getResEmpresa() {
		return resEmpresa;
	}

	public void setResEmpresa(Integer resEmpresa) {
		this.resEmpresa = resEmpresa;
	}

	public Integer getResSetor() {
		return resSetor;
	}

	public void setResSetor(Integer resSetor) {
		this.resSetor = resSetor;
	}

}
