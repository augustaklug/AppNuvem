package br.infnet.augusta.appnuvem.clients;

import br.infnet.augusta.appnuvem.model.negocio.Marca;
import br.infnet.augusta.appnuvem.model.negocio.Veiculo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(url ="http://fipeapi.appspot.com/api/1/carros", name = "veiculoClient")
public interface IVeiculoClient {

    @GetMapping("/marcas.json")
    public List<Marca> obterMarcas();

    @GetMapping("/veiculos/{id}.json")
    public List<Veiculo> obterVeiculos(@PathVariable Integer id);
}
