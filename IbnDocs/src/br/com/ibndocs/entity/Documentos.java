package br.com.ibndocs.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="documentos", schema="sistema")
public class Documentos implements Serializable {
	
	@Id
	@Column(name="doc_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer docId;
	
	@Column(name="doc_descricao")
	private String docDescricao;
	
	@Column(name="doc_data_entrega")
	private Date docDataEntrega;
	
	@Column(name="doc_fotos")
	private String docFotos;
	
	@Column(name="doc_remetente")
	private Integer docRemetente;
	
	@Column(name="doc_destinatario")
	private Integer docDestinatario;
	
	@Column(name="doc_usuario")
	private String docUsuario;
	

	public Integer getDocId() {
		return docId;
	}

	public void setDocId(Integer docId) {
		this.docId = docId;
	}

	public String getDocDescricao() {
		return docDescricao;
	}

	public void setDocDescricao(String docDescricao) {
		this.docDescricao = docDescricao;
	}

	public Date getDocDataEntrega() {
		return docDataEntrega;
	}

	public void setDocDataEntrega(Date docDataEntrega) {
		this.docDataEntrega = docDataEntrega;
	}

	public String getDocFotos() {
		return docFotos;
	}

	public void setDocFotos(String docFotos) {
		this.docFotos = docFotos;
	}

	public Integer getDocRemetente() {
		return docRemetente;
	}

	public void setDocRemetente(Integer docRemetente) {
		this.docRemetente = docRemetente;
	}

	public Integer getDocDestinatario() {
		return docDestinatario;
	}

	public void setDocDestinatario(Integer docDestinatario) {
		this.docDestinatario = docDestinatario;
	}

	public String getDocUsuario() {
		return docUsuario;
	}

	public void setDocUsuario(String docUsuario) {
		this.docUsuario = docUsuario;
	}

}
