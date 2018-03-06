package fr.digicar.model;


import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "tokens")
public class Token {

    @Id
    @Column(name="id_token")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name="id_client")
    private Integer id_client;

    @Column(name="solde")
    private Integer solde;
    @Column(name="gold")
    private Integer gold;

    public Integer getId() {
        return id;
    }
    public Integer getIdclient(){return id_client;}
    public Integer getSolde(){return solde;}
    public Integer getGold(){return gold;}

    public void setGold(Integer gold) {
        this.gold = gold;
    }
    public void setSolde(Integer solde) {
        this.solde = solde;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
