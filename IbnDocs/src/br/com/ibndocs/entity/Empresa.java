package br.com.ibndocs.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empresa", schema="sistema")
public class Empresa implements Serializable {
	
	@Id
	@Column(name="emp_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer empId;
	
	@Column(name="emp_empresa")
	private String empEmpresa;
	
	@Column(name="emp_endereco")
	private String empEndereco;
	
	@Column(name="emp_cnpj")
	private String empCnpj;

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getEmpEmpresa() {
		return empEmpresa;
	}

	public void setEmpEmpresa(String empEmpresa) {
		this.empEmpresa = empEmpresa;
	}

	public String getEmpCnpj() {
		return empCnpj;
	}

	public void setEmpCnpj(String empCnpj) {
		this.empCnpj = empCnpj;
	}

	public String getEmpEndereco() {
		return empEndereco;
	}

	public void setEmpEndereco(String empEndereco) {
		this.empEndereco = empEndereco;
	}
	
}
