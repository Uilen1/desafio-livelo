package br.com.desafiolivelo.utilities;

import io.restassured.specification.RequestSpecification;
import static io.restassured.RestAssured.*;

public class RestAssuredSetup {
	
	public static RequestSpecification request;
	
	
	
	public RestAssuredSetup() {
		
		baseURI = "https://reqres.in/";
	}
	
}
