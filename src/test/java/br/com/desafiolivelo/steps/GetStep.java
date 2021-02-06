package br.com.desafiolivelo.steps;

import java.util.List;

import org.hamcrest.CoreMatchers;
import org.junit.Assert;

import br.com.desafiolivelo.utilities.RestAssuredSetup;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import io.restassured.response.Response;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class GetStep extends RestAssuredSetup{
	
	private static Response response;
	private String rota;
	
	@Dado("^que eu acesso a rota \"(.*?)\" com o ID do usuário \"(.*?)\"$")
	public void queEuAcessoARotaComOIDDoUsuário(String url, String id) throws Exception {
		rota = url + id;
		response = given().get(rota);
	}

	
	@Então("^é retornado o status code \"(.*?)\"$")
	public void retornado_o_status_code(String statusCode) throws Exception {
		Assert.assertEquals(statusCode, Integer.toString(response.getStatusCode()));
	}
	
	@Então("^é retornado o usuário e o status code \"(.*?)\"$")
	public void retornado_o_usuário_e_o_status_code(String statusCode) throws Exception {
		Assert.assertEquals(statusCode, Integer.toString(response.getStatusCode()));
		given().
			get(rota).
		then().
			body("data.first_name", CoreMatchers.is("Janet"));

	}

}
