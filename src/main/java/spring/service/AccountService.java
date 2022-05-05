/*
 * @author Ha Minh Tri
 * @date Mar 12, 2021
 * @project JSFW.L.A101
 */


package spring.service;

import spring.model.Account;
import spring.model.Account_roles;

public interface AccountService {
	void addUser(Account account);
	void addRole(Account_roles account_roles);
	Account findByUsername(String userName);
	Account findByIdentityNumber(String idNumber);
}
