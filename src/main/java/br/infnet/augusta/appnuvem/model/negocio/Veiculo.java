package br.infnet.augusta.appnuvem.model.negocio;

public class Veiculo {
    private String fipe_marca;
    private String name;
    private Integer id;

    @Override
    public String toString() {
        return "Marca: " + fipe_marca + '\'' +
                "Nome: " + name + '\'' +
                '}';
    }

    public String getFipe_marca() {
        return fipe_marca;
    }

    public void setFipe_marca(String fipe_marca) {
        this.fipe_marca = fipe_marca;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
