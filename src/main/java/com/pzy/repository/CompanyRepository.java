package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Company;
public interface CompanyRepository extends PagingAndSortingRepository<Company, String>,JpaSpecificationExecutor<Company>{
    
}

