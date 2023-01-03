package notice.controller.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;
import notice.db.DBCon;
import notice.vo.Notice;

public class NoticeController implements NController{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {


		
		NoticeDao dao=new NoticeDao();
		List<Notice> list= dao.getList();
		
		request.setAttribute("list", list); //리스트란 이름으로 리스트를 request에 담음
		request.getRequestDispatcher("notice.jsp").forward(request, response);

	}

}
