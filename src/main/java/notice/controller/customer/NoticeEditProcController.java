package notice.controller.customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeEditProcController implements NController{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditProcController mvc2 신호");

		
		request.setCharacterEncoding("utf-8");

		String num=request.getParameter("c");
		String title=request.getParameter("title");
		String content=request.getParameter("content");


		Notice n=new Notice();
		n.setTitle(title);
		n.setContent(content);
		n.setSeq(num);

		NoticeDao dao=new NoticeDao();
		int cnt=dao.update(n);
		n=dao.getNotice(num);
		request.setAttribute("n", n);
		
		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
	}
}
