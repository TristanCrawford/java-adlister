import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello/*")
public class HelloWorldServlet extends HttpServlet {

    private int viewCounter;

    public void init() {
        viewCounter = 0;
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        try {
            if(req.getParameter("reset") != null)
                viewCounter = 0;
            viewCounter++;
            res.setContentType("text/html");
            PrintWriter out = res.getWriter();
            out.println(String.format("<h1>Hello %s!</h1><h2>%d Page Views!</h2>", req.getParameter("name"), viewCounter));
        } catch (IOException e) {
            System.out.println("Darn.");
        }
    }
}