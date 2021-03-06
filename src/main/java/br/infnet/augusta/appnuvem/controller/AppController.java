package br.infnet.augusta.appnuvem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/endereco", method = RequestMethod.GET)
    public String endereco(){return "endereco";}

    @RequestMapping(value = "/cep", method = RequestMethod.GET)
    public String cep(){return "cep";}

    @RequestMapping(value = "/fotos", method = RequestMethod.GET)
    public String fotos(){return "fotos";}
}
