/**
 * 
 */
package com.cognizant.truyum.dao;


import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

/**
 * @ created by madhangi 761100
 *
 */
public class MenuItemDaoCollectionImpl implements MenuItemDao{
	
	 static List<MenuItem> menuItemList;
	
	 public MenuItemDaoCollectionImpl()
	{
		if(menuItemList == null)
		{
			try
			{
			menuItemList= new ArrayList<MenuItem>();
			 
			menuItemList.add(new MenuItem(0000001,"Sandwich",99.00f,true,
					DateUtil.convertToDate("15/03/2017"),"Main Course",true));
			menuItemList.add(new MenuItem(0000002,"Burger",129.00f,true,
					DateUtil.convertToDate("23/12/2017"),"Main Course",false));
			menuItemList.add(new MenuItem(0000003,"Pizza",149.00f,true,
					DateUtil.convertToDate("21/08/2012"),"Main Course",false));
			menuItemList.add(new MenuItem(0000004,"French fries",57.00f,true,
					DateUtil.convertToDate("02/07/2017"),"Starters",true));
			menuItemList.add(new MenuItem(0000005,"Chocolate Brownie",32.00f,false,
					DateUtil.convertToDate("12/07/2022"),"Starters",true));
			menuItemList.add(new MenuItem(0000006,"Chocolate",22.00f,false,
					DateUtil.convertToDate("15/11/2019"),"Starters",false));


			}
			catch(ParseException e)
			{
				System.out.println("ParseException"+e.getMessage());
			}
		}
		
	}
	public List<MenuItem> getMenuItemListAdmin()
	{
		return menuItemList;
		
	}

	public List<MenuItem> getMenuItemListCustomer()
	{
		List<MenuItem> mlistcust=new ArrayList<MenuItem>();
	   Date today=new Date();
	for(MenuItem menuitem2:menuItemList)
	{
		if(menuitem2.getDateOfLaunch().getTime() <=today.getTime() && menuitem2.isActive() ){
			mlistcust.add(menuitem2);
		}
	}
	
		
	return mlistcust;
		
		
	}
	public void modifyMenuItem(MenuItem menuitem)
	{
		
		
		
		for(MenuItem menu_item_modify : menuItemList)
		{
                   if(menuitem.getId()==menu_item_modify.getId())
                   {
                	   menu_item_modify.setName(menuitem.getName());
                	   menu_item_modify.setCategory(menuitem.getCategory());
                	   menu_item_modify.setDateOfLaunch(menuitem.getDateOfLaunch());
                	   menu_item_modify.setFreeDelivery(menuitem.isFreeDelivery());
                	   menu_item_modify.setPrice(menuitem.getPrice());
                   }
		}

	
	}
	public MenuItem getMenuItem(long menuItemId)
	{
		
		for(MenuItem menu_item : menuItemList)
		{
			if(menuItemId==menu_item.getId())
			{
				return menu_item;
			}
		}
           
return null;
		
	}
	
}
