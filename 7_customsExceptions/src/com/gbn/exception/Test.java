package com.gbn.exception;

public class Test {

	public static void main(String[] args) throws MyException  {

		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		
		if(b<1) {
			throw new MyException("Please enter proper values");
		}
		
		System.out.println(a/b);

	}
}
