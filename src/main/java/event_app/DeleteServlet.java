package event_app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		int Id = Integer.parseInt(req.getParameter("id"));
		Connection con = null;
		PreparedStatement ps = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_system", "root", "root");
			ps = con.prepareStatement("delete from event where id = ?");
			ps.setInt(1, Id);
			int row = ps.executeUpdate();
			//System.out.println(row + " : Row Deleted Sucessfully");
		
			PrintWriter pw = res.getWriter();
			
			//pw.write("<html><body><h1>One Row Deleted Successfully.............</h1></body></html>");
//			pw.write("<html><body><a href = index.jsp><button>Go To Index Page</button> </a></body></html>");
			
			RequestDispatcher rd = req.getRequestDispatcher("allevents");
			rd.forward(req, res);
			
//			ps.close();
//			con.close();
	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			if(ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
}
//pw.write("<html><head><style>" +
//		".center-btn button {background-color: #4CAF50; color: #fff; border-radius : 5px; border : none; padding : 10px;}" +
//		"</style></head><body>" +
//		"<a href='index.jsp' class='center-btn'>" +
//		"<button>Go To Index Page</button>" +
//		"</a>" +
//		"</body></html>");
//pw.write("<br><br>");
//pw.write("<html><head><style>" +
//		".center-btn button {background-color: #4CAF50; color: #fff; border-radius : 5px; border : none; padding : 10px;}" +
//		"</style></head><body>" +
//		"<a href='create.jsp' class='center-btn'>" +
//		"<button>Go To Create Page</button>" +
//		"</a>" +
//		"</body></html>");
//pw.write("<br><br>");
//pw.write("<html><head><style>" +
//		".center-btn button {background-color: #4CAF50; color: #fff; border-radius : 5px; border : none; padding : 10px;}" +
//		"</style></head><body>" +
//		"<a href='allevents' class='center-btn'>" +
//		"<button>View All Event Details</button>" +
//		"</a>" +
//		"</body></html>");
