package br.infnet.augusta.appnuvem.model.service;

import br.infnet.augusta.appnuvem.clients.IVeiculoClient;
import br.infnet.augusta.appnuvem.model.negocio.Marca;
import br.infnet.augusta.appnuvem.model.negocio.Veiculo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VeiculoService {
    @Autowired
    private IVeiculoClient client;

    public List<Marca> obterMarcas(){return client.obterMarcas();}
    public List<Veiculo> obterVeiculos(Integer id){return client.obterVeiculos(id);}
}
