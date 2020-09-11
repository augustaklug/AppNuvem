package br.infnet.augusta.appnuvem.clients;

import br.infnet.augusta.appnuvem.model.negocio.Foto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(url ="https://jsonplaceholder.typicode.com/", name ="fotoClient")
public interface IFotoClient {
    @GetMapping("/photos?albumId={album}")
    public List<Foto> obterAlbum(@PathVariable Integer album);
}
