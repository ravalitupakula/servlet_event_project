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


@WebServlet(urlPatterns =  "/create")
public class CreateServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		int Id = Integer.parseInt(req.getParameter("id"));
		String Title = req.getParameter("title");
		String Loaction = req.getParameter("loc");
		String Date = req.getParameter("date");
		String Guest = req.getParameter("guest");
//		System.out.println(Id);
//		System.out.println(Title);
//		System.out.println(Loaction);
//		System.out.println(Date);
//		System.out.println(Guest);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_system", "root", "root");
			PreparedStatement ps = con.prepareStatement("insert into event values (?,?,?,?,?)");
			ps.setInt(1, Id);
			ps.setString(2, Title);
			ps.setString(3, Loaction);
			ps.setString(4, Date);
			ps.setString(5, Guest);
			int row = ps.executeUpdate();
			System.out.println(row + " : Event Created Successfully");
			PrintWriter pw = res.getWriter();
			pw.write("<html><body><h1>One Event Added Succesfully</h1></body></html>");
			pw.write("<br><br>");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.include(req, res);
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
