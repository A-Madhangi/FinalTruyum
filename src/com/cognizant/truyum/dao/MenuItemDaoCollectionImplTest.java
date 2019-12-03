/**
 * 
 */
package com.cognizant.truyum.dao;

import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

/**
 * @ created by madhangi 761100
 *
 */
public class MenuItemDaoCollectionImplTest {

	public static void main(String args[]) throws ParseException
	{
		//testGetMenuItemListAdmin();
		//testGetMenuItemCustomer();
		testModifyMenuItem();
	}
	
	
	public static void testGetMenuItemListAdmin()
	{
		MenuItemDaoCollectionImpl menu= new MenuItemDaoCollectionImpl();
		System.out.println("MENU ITEM LIST: "+menu.getMenuItemListAdmin());
		
		
		List<MenuItem> menuitem=menu.getMenuItemListAdmin();
		for(MenuItem menu_item : menuitem)
		{
			System.out.println(menu_item.toString());
		}
	}
	public static void testGetMenuItemCustomer()
	{
		MenuItemDaoCollectionImpl menu= new MenuItemDaoCollectionImpl();
		System.out.println("CUSTOMER MENU ITEM LIST: "+menu.getMenuItemListCustomer());
		
		
		List<MenuItem> menuitem1=menu.getMenuItemListCustomer();
		for(MenuItem menu_item1 : menuitem1)
		{
			System.out.println(menu_item1.toString());
		}
	}
	public static void testModifyMenuItem() throws ParseException
	{
		
		
	
		MenuItem menuitem=new MenuItem(0000002,"Cake",180.00f,true,
				DateUtil.convertToDate("20/11/2012"),"Main Course",false);
		MenuItemDaoCollectionImpl menuitemcollectionimpl=new MenuItemDaoCollectionImpl();
         //   System.out.println("MODIFY MENU ITEM LIST: "+menuitemcollectionimpl.modifyMenuItem());
		MenuItemDao menuitemdao= menuitemcollectionimpl;
		menuitemdao.modifyMenuItem(menuitem);
		System.out.println("Modify Menu Item: "+menuitemdao.getMenuItem(0000002));
		
		
		
		
		
	}
	public void testGetMenuItem()
	{
		
	}
}
