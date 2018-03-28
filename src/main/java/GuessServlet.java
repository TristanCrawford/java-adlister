import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = {"/guess", "/result"})
public class GuessServlet extends HttpServlet {

    protected int randomNumber = randRange(1, 100);

    protected int randRange(int min, int max) {
        return min + (int) (Math.random() * ((max - min) + 1));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/guess.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int number = Integer.parseInt(req.getParameter("number"));

        if (number == randomNumber)
            req.setAttribute("guess", String.format("Yay! The number was %d", randomNumber));
        else if (number < randomNumber)
            req.setAttribute("guess", "Higher!");
        else if (number > randomNumber)
            req.setAttribute("guess", "Lower!");

        req.getRequestDispatcher("/result.jsp").forward(req, resp);
    }
}
