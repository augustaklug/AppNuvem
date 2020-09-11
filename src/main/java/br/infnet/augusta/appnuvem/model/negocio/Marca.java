package br.infnet.augusta.appnuvem.model.negocio;

public class Marca {
    private String name;
    private String fipe_name;
    private Integer id;

    @Override
    public String toString() {
        return "Marca{" +
                "fipe_name='" + fipe_name + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFipe_name() {
        return fipe_name;
    }

    public void setFipe_name(String fipe_name) {
        this.fipe_name = fipe_name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
