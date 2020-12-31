package entity;

import entity.Apprenant;
import entity.Formateur;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Client.class)
public class Client_ { 

    public static volatile SingularAttribute<Client, Integer> idClient;
    public static volatile SingularAttribute<Client, String> identifiant;
    public static volatile SingularAttribute<Client, Formateur> formateuridFormateur;
    public static volatile SingularAttribute<Client, String> motdepasse;
    public static volatile SingularAttribute<Client, Apprenant> apprenantidAprenant;

}