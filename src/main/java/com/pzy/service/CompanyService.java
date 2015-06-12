
package com.pzy.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Company;
import com.pzy.repository.CompanyRepository;

@Service
public class CompanyService {
     @Autowired
     private CompanyRepository CompanyRepository;
     
     public List<Company> findAll() {
         return (List<Company>) CompanyRepository.findAll();
     }
     
     public Page<Company> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
        
         Specification<Company> spec = new Specification<Company>() {
              public Predicate toPredicate(Root<Company> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.equal(root.get("car").as(String.class), name));
              }
              return predicate;
              }
         };
         Page<Company> result = (Page<Company>) CompanyRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(String id){
			CompanyRepository.delete(id);
		}
		public Company find(String id){
			  return CompanyRepository.findOne(id);
		}
		public void save(Company Company){
			CompanyRepository.save(Company);
		}
}