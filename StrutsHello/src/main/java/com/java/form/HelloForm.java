package com.java.form;

import org.apache.struts.action.ActionForm;

public class HelloForm extends ActionForm{
	  private String msg;

	public String getMsg() {
		return msg;
	}
	
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	}
