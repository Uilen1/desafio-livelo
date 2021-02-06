package br.com.desafiolivelo.steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import io.restassured.response.Response;

import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

import org.junit.Assert;

import br.com.desafiolivelo.utilities.RestAssuredSetup;

public class DeleteStep extends RestAssuredSetup{

	private String rota;
	private int statusCode;
	
	@Dado("^que acesso a rota \"(.*?)\"$")
	public void queAcessoARota(String url) throws Exception {
		rota = url;
	}
	
	
	@Dado("^deleto pelo ID do usuário \"(.*?)\"$")
	public void deleto_pelo_ID_do_usuário(String idUser) throws Exception {
		statusCode =  when().delete(rota + idUser).getStatusCode();
		
	}
	
	@Então("^é retornado para a deleção o status code \"(.*?)\"$")
	public void retornado_o_status_code(String statusCode) throws Exception {
		Assert.assertEquals(statusCode, Integer.toString(this.statusCode));
	}
	
}
