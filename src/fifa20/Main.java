package fifa20;

import java.util.ArrayList;
import java.util.Iterator;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BDController controlador = new BDController();
		
		System.out.println(controlador.dameCarta("Simple", 1).getRat());
		System.out.println(controlador.dameCarta("toty", 1).getRat());
		System.out.println(controlador.dameCarta("if", 1).getRat());
		System.out.println(controlador.dameCarta("motm", 1).getRat());

	}

}
