import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdServlet", urlPatterns = "/ads")
public class AdServlet extends HttpServlet {

    ListAdsDao listAdsDao = new ListAdsDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("ads", listAdsDao.all());
        req.getRequestDispatcher("/ads/index.jsp").forward(req, resp);
    }
}
