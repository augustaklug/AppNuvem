package br.infnet.augusta.appnuvem.model.service;

import br.infnet.augusta.appnuvem.clients.IEnderecoClient;
import br.infnet.augusta.appnuvem.model.negocio.Endereco;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnderecoService {
    @Autowired
    private IEnderecoClient client;

    public Endereco obterPorCep(String cep){
        return client.obterPorCep(cep);
    }

    public List<Endereco> obterPorEndereco(String uf,
                                           String municpio,
                                           String logradouro){return client.obterPorEndereco(uf, municpio, logradouro);}
}
