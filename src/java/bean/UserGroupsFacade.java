/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.UserGroups;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author florian.fasmeyer
 */
@Stateless
public class UserGroupsFacade extends AbstractFacade<UserGroups> {

    @PersistenceContext(unitName = "SharedKnowledgePlateformPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserGroupsFacade() {
        super(UserGroups.class);
    }
    
}