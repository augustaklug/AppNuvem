package br.infnet.augusta.appnuvem.controller;

import br.infnet.augusta.appnuvem.model.service.VeiculoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VeiculoController {
    @Autowired private VeiculoService service;

    @RequestMapping(value ="/veiculos", method = RequestMethod.GET)
    public String obterMarcas(Model model){
        model.addAttribute("marcas", service.obterMarcas());
        return "veiculos";
    }

    @RequestMapping(value ="/veiculos/{id}", method = RequestMethod.GET)
    public String obterVeiculos(Model model,
                                @PathVariable Integer id){
            model.addAttribute("veiculos", service.obterVeiculos(id));
        return "listaVeiculos";
    }
}
