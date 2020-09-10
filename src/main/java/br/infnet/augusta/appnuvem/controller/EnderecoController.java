package br.infnet.augusta.appnuvem.controller;

import br.infnet.augusta.appnuvem.model.service.EnderecoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EnderecoController {
    @Autowired private EnderecoService service;

    @RequestMapping(value = "/endereco/resultado", method = RequestMethod.GET)
    public String obterPorCep(
            Model model,
            @RequestParam("cep") String cep
    ){
        model.addAttribute("endereco", service.obterPorCep(cep));
        return "endereco";
    }

}
