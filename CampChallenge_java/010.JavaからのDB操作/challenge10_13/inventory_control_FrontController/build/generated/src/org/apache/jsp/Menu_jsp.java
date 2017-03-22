package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class Menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"FrontController\" method=\"post\">\n");
      out.write("            <button type=\"submit\" name=\"action\" value=\"2\" >ログアウト</button><br>\n");
      out.write("            ");

                //商品追加処理の結果
                HttpSession hs = request.getSession(true);
                String gI = (String) hs.getAttribute("goodsInsert");
                if (gI != null) {
                    out.print("商品追加できたか？：");
                    out.print(gI);
                    out.print("<br>");
                    out.print("<br>");
                }
            
      out.write("\n");
      out.write("\n");
      out.write("            ");
      out.write("      \n");
      out.write("            商品名：<input type = \"text\" name =\"goodsName\" size =\"30\"><br>\n");
      out.write("            値段：<input type = \"text\" name =\"goodsPrice\" size =\"11\"><br>\n");
      out.write("            <button type=\"submit\" name=\"action\" value=\"3\">送信</button><br>\n");
      out.write("            <button type=\"submit\" name=\"action\" value=\"4\">一覧を更新</button><br>\n");
      out.write("            ");

                //追加された商品の一覧
                ArrayList gL = (ArrayList) hs.getAttribute("goodsList");
                
                if (gL == null) {
                    out.print("データがありません");

                } else  {

                    for (int i = 0; i < gL.size(); i++) {
                        if (i % 2 == 0) {
                            out.print("商品名:");
                            out.print(gL.get(i));
                            out.print("<br>");
                        } else {
                            out.print("値段:");
                            out.print(gL.get(i));
                            out.print("円");
                            out.print("<br>");

                        }

                    }
                }
            
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
