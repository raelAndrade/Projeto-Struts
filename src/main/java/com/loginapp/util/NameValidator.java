package com.loginapp.util;

import java.io.Serializable;

public class NameValidator implements Serializable {

	private static final long serialVersionUID = -6332573970678033665L;
	
	private String name;

	public NameValidator(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public boolean isNameEqualsTo(String name) {
		return this.name.equals(name);
	}
}
