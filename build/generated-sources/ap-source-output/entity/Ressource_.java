package entity;

import entity.Formateur;
import entity.Module;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Ressource.class)
public class Ressource_ { 

    public static volatile SingularAttribute<Ressource, Formateur> formateuridFormateur;
    public static volatile SingularAttribute<Ressource, Integer> idRessource;
    public static volatile SingularAttribute<Ressource, String> type;
    public static volatile SingularAttribute<Ressource, Module> moduleidModule;
    public static volatile SingularAttribute<Ressource, String> nom;

}