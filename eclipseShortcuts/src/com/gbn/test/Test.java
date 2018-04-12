package com.gbn.test;


public class Test {
	public static void main(String[] args) {
		
		String a = "";
		
		
		//System.out.println(GCD(6,10));
		
	}  
	
	public static int GCD(int A, int B) {
	    if(B==0)
	        return A;
	    else
	        return GCD(B, A % B);
	}

}
