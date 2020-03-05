package br.com.ibndocs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="setor", schema="sistema")
public class Setor {
	
	@Id
	@Column(name="set_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer setId;
	
	@Column(name="set_setor")
	private String setSetor;

	public Integer getSetId() {
		return setId;
	}

	public void setSetId(Integer setId) {
		this.setId = setId;
	}

	public String getSetSetor() {
		return setSetor;
	}

	public void setSetSetor(String setSetor) {
		this.setSetor = setSetor;
	}

}
