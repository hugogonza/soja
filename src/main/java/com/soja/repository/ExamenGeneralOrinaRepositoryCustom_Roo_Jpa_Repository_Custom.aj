// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.repository;

import com.soja.domain.ExamenGeneralOrina;
import com.soja.domain.Persona;
import com.soja.repository.ExamenGeneralOrinaRepositoryCustom;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ExamenGeneralOrinaRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ExamenGeneralOrina> ExamenGeneralOrinaRepositoryCustom.findByPersona(Persona persona, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ExamenGeneralOrina> ExamenGeneralOrinaRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ExamenGeneralOrina> ExamenGeneralOrinaRepositoryCustom.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}