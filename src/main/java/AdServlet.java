import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdServlet", urlPatterns = {"/ads", "/show"})
public class AdServlet extends HttpServlet {

    ListAdsDao listAdsDao = new ListAdsDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if("/show".equals(req.getServletPath())) {

            String adId = req.getParameter("id");
            Ad ad = listAdsDao.all().stream().filter(a -> adId.equals(Long.toString(a.getId()))).findFirst().orElse(null);

            if(null == adId || adId.isEmpty() || null == ad) {
                resp.sendRedirect("/ads");
                return;
            }

            req.setAttribute("ad", ad);
            req.getRequestDispatcher("/ads/show.jsp").forward(req, resp);
            return;
        }

        req.setAttribute("ads", listAdsDao.all());
        req.getRequestDispatcher("/ads/index.jsp").forward(req, resp);
    }
}
