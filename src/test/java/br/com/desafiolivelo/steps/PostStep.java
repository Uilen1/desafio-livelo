package br.com.desafiolivelo.steps;

import br.com.desafiolivelo.utilities.RestAssuredSetup;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import io.restassured.http.ContentType;

import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

import org.junit.Assert;

public class PostStep extends RestAssuredSetup{
	
	private String rota;
	private String json;
	
	@Dado("^que acesso a rota de inclusão \"(.*?)\"$")
	public void queAcessoARota(String url) throws Exception {
		rota = url;
	}

	@Dado("^envio o nome \"(.*?)\" e o job \"(.*?)\"$")
	public void envio_o_nome_e_o_job(String name, String job) throws Exception {
		
		json = "{\"name\": \"Teste via API\", \"job\": \"jobTeste\"}";
		
	}
	
	@Então("^é retornado para o registro com sucesso o status code \"(.*?)\"$")
	public void retornado_o_status_code(String statusCode) throws Exception {
		
		given()
			.body(json)
			.contentType(ContentType.JSON)
		.when()
			.post(rota)
		.then()
			.statusCode(201);
		
	}

}
