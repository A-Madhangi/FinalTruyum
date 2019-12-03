/**
 * 
 */
package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

/**
 * @ created by madhangi 761100
 *
 */
public class MenuItemDAoSqlImplTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		MenuItemDaoSqlImpl menuItemDaoSqlImpl=new MenuItemDaoSqlImpl();
        List<MenuItem> menuItemList=menuItemDaoSqlImpl.getMenuItemListAdmin();
        for(MenuItem menuItem : menuItemList){
                        System.out.println("MenuItem:"+menuItem);
        }


	}

}
