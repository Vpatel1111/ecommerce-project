<%@page import="java.util.List"%>
<%@page import="com.bean.Wishlist"%>
<%@page import="com.dao.WishlistDao"%>
<%
	
	int pid=Integer.parseInt(request.getParameter("pid"));
	int uid=Integer.parseInt(request.getParameter("uid"));
	Wishlist w=new Wishlist();
	w.setPid(pid);
	w.setUid(uid);
	WishlistDao.addToWishlist(w);
	List<Wishlist> list=WishlistDao.getWishlistByUser(uid);
	session.setAttribute("wishlist_count", list.size());
	response.sendRedirect("wishlist.jsp");

%>