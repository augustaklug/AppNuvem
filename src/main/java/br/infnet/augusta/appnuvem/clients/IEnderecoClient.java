package br.infnet.augusta.appnuvem.clients;

import br.infnet.augusta.appnuvem.model.negocio.Endereco;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(url = "https://viacep.com.br/ws", name = "enderecoClient")
public interface IEnderecoClient {

	@GetMapping("/{cep}/json")
	public Endereco obterPorCep(@PathVariable String cep);
}