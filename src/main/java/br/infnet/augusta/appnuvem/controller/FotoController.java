package br.infnet.augusta.appnuvem.controller;

import br.infnet.augusta.appnuvem.model.service.FotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FotoController {
    @Autowired private FotoService service;

    @RequestMapping(value = "/fotos/resultado", method = RequestMethod.POST)
    public String obterPorAlbum(
            Model model,
            @RequestParam("album") Integer album
    ){
        model.addAttribute("fotos", service.obterAlbum(album));
        return "fotos";
    }
}
