package com.cognizant.truyum.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.dao.MenuItemDaoSqlImpl;
import com.cognizant.truyum.model.MenuItem;

/**
 * Servlet implementation class EditMenuItemServlet
 */
@WebServlet("/EditMenuItemServlet")
public class EditMenuItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditMenuItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("menuitemid");
		System.out.println("ID: "+id);
		String name=request.getParameter("mname");
		System.out.println("name: "+name);
		double price=Double.parseDouble(request.getParameter("price"));
		System.out.println("price: "+price);
		boolean active=request.getParameter("available") != null;
		System.out.println("Active: "+active);
		String launchDate=request.getParameter("launch");
		System.out.println("launch date: "+launchDate);
		String category=request.getParameter("category");
		System.out.println("category: "+category);
		boolean freeDelivery=request.getParameter("freedelivery") != null;
		System.out.println("freedelivery: "+freeDelivery);
		/*boolean activeFlag =null != null   ;
		if(activeFlag == true)
		{
			activeFlag = false;
		}
		else
		{
			activeFlag = true;
		}
		
		boolean freedeliveryFlag;
		
		if(freeDelivery ==null)
		{
			freedeliveryFlag = false;
		}
		else
		{
			freedeliveryFlag = true;
		}
		*/
	      MenuItem menuItem = new MenuItem();
	      menuItem.setActive(active);
	      menuItem.setCategory(category);
	      menuItem.setFreeDelivery(freeDelivery);
	      menuItem.setId(Long.parseLong(id));
	      menuItem.setName(name);
	      menuItem.setPrice((float)price);

	
		Date d = null;
	
		SimpleDateFormat sdp=new SimpleDateFormat("dd/MM/yyyy");
        try
        {

        	d= sdp.parse(launchDate);
        	menuItem.setDateOfLaunch(d);
        	MenuItem menuItem1=new MenuItem(Long.parseLong(id),name,(float)price,active,d,category,freeDelivery);
        	
        	MenuItemDaoSqlImpl menuItemDaoSqlImpl=new MenuItemDaoSqlImpl();
        	MenuItemDao menuItemDao=menuItemDaoSqlImpl;
        	menuItemDao.modifyMenuItem(menuItem1);
        	System.out.println("Menuitem after updated is: "+menuItemDao.getMenuItemListAdmin());
           request.getRequestDispatcher("edit-menu-item-status.jsp").forward(request,response);
        }
        catch(Exception ex)
        {
        	ex.printStackTrace();//String empid=request.getParameter("id");
        }
	
    	
    	
    	
    	
	}

}
