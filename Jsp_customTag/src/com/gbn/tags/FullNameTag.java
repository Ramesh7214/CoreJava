package com.gbn.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class FullNameTag extends SimpleTagSupport {

	public String firstName;
	public String lastName;

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public void doTag() throws JspException, IOException {
		try {
		getJspContext().getOut().write(firstName + " " + lastName);
		} catch (Exception e) { // stop page from loading further by throwing SkipPageException
			throw new SkipPageException();
		}
	}

}
