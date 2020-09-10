package br.infnet.augusta.appnuvem.clients;

import br.infnet.augusta.appnuvem.model.negocio.Endereco;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class EnderecoClient {
    public Endereco obterPorCep(String cep){
        return new RestTemplate().getForObject("https://viacep.com.br/ws/{cep}/json", Endereco.class, cep);
    }
}
