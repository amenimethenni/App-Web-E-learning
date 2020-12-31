package entity;

import entity.Client;
import entity.FormateurHasFormation;
import entity.Module;
import entity.Ressource;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Formateur.class)
public class Formateur_ { 

    public static volatile CollectionAttribute<Formateur, Ressource> ressourceCollection;
    public static volatile CollectionAttribute<Formateur, Client> clientCollection;
    public static volatile SingularAttribute<Formateur, Integer> idFormateur;
    public static volatile SingularAttribute<Formateur, String> domaineExpertise;
    public static volatile SingularAttribute<Formateur, String> nom;
    public static volatile SingularAttribute<Formateur, Integer> anciennete;
    public static volatile CollectionAttribute<Formateur, Module> moduleCollection;
    public static volatile SingularAttribute<Formateur, String> email;
    public static volatile CollectionAttribute<Formateur, FormateurHasFormation> formateurHasFormationCollection;

}