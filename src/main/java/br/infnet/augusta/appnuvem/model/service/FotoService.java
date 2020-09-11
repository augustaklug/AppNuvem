package br.infnet.augusta.appnuvem.model.service;

import br.infnet.augusta.appnuvem.clients.IFotoClient;
import br.infnet.augusta.appnuvem.model.negocio.Foto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FotoService {
    @Autowired
    private IFotoClient client;

    public List<Foto> obterAlbum(Integer album){return client.obterAlbum(album);}
}
