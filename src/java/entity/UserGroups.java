/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author florian.fasmeyer
 */
@Entity
@Table(name = "user_groups")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserGroups.findAll", query = "SELECT u FROM UserGroups u")
    , @NamedQuery(name = "UserGroups.findByUsergroupId", query = "SELECT u FROM UserGroups u WHERE u.usergroupId = :usergroupId")
    , @NamedQuery(name = "UserGroups.findByGroupname", query = "SELECT u FROM UserGroups u WHERE u.groupname = :groupname")
    , @NamedQuery(name = "UserGroups.findByUserId", query = "SELECT u FROM UserGroups u WHERE u.userId = :userId")})
public class UserGroups implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "usergroup_id")
    private Integer usergroupId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "groupname")
    private String groupname;
    @Basic(optional = false)
    @NotNull
    @Column(name = "user_id")
    private int userId;

    public UserGroups() {
    }

    public UserGroups(Integer usergroupId) {
        this.usergroupId = usergroupId;
    }

    public UserGroups(Integer usergroupId, String groupname, int userId) {
        this.usergroupId = usergroupId;
        this.groupname = groupname;
        this.userId = userId;
    }

    public Integer getUsergroupId() {
        return usergroupId;
    }

    public void setUsergroupId(Integer usergroupId) {
        this.usergroupId = usergroupId;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usergroupId != null ? usergroupId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserGroups)) {
            return false;
        }
        UserGroups other = (UserGroups) object;
        if ((this.usergroupId == null && other.usergroupId != null) || (this.usergroupId != null && !this.usergroupId.equals(other.usergroupId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.UserGroups[ usergroupId=" + usergroupId + " ]";
    }
    
}
