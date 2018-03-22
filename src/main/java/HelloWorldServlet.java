import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello/*")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        try {
            res.setContentType("text/html");
            PrintWriter out = res.getWriter();
            out.println("<h1>Hello World!</h1>");
        } catch (IOException e) {
            System.out.println("Darn.");
        }
    }
}