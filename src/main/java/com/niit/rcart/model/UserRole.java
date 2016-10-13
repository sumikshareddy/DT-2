package com.niit.rcart.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

	@Entity
	@Component
	public class UserRole {
		@Id
		private Integer rid;
		private String authority;
		public Integer getRid() {
			return rid;
		}
		public void setRid(Integer rid) {
			this.rid = rid;
		}
		public String getAuthority() {
			return authority;
		}
		public void setAuthority(String authority) {
			this.authority = authority;
		}
		public void setUser_role_id(Integer uid) {
			// TODO Auto-generated method stub
			
		}
		
			}


