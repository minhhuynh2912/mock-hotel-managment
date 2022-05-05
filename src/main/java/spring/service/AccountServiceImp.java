/*
 * @author Ha Minh Tri
 * @date Mar 12, 2021
 * @project JSFW.L.A101
 */

package spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import spring.model.Account;
import spring.model.Account_roles;
import spring.repository.AccountRepository;
import spring.repository.AccountRolesRepository;

@Service
public class AccountServiceImp implements AccountService {
	

	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private AccountRolesRepository accountRolesRepository;

	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;


	@Override
	public void addUser(Account account) {
		account.setPassword(passwordEncoder.encode(account.getPassword()));
		accountRepository.save(account);
		
	}


	@Override
	public void addRole(Account_roles account_roles) {
		accountRolesRepository.save(account_roles);
		
	}


	@Override
	public Account findByUsername(String userName) {	
		return accountRepository.findOneByUsername(userName);	
	}


	@Override
	public Account findByIdentityNumber(String idNumber) {
		// TODO Auto-generated method stub
		return accountRepository.findByIdenityNumber(idNumber);
	}
	
//	
	
	
}

