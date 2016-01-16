package ng.demo.kit;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;

/**
 * PDF create Kit
 * 
 * @author cokolin
 *
 */
public class PdfKit {
	public static final byte[] OWNER_PASSWORD = "0w&eR@2o16".getBytes();

	/**
	 * build PDF to OutputStream
	 * 
	 * @param src
	 * @param out
	 * @throws DocumentException
	 * @throws IOException
	 */
	public static void buildPdf(InputStream src, OutputStream out) throws DocumentException, IOException {
		buildPdf(src, out, null, null);
	}

	/**
	 * build PDF to OutputStream with owner encrypt
	 * 
	 * @param src
	 * @param out
	 * @param ownerPwd
	 * @throws DocumentException
	 * @throws IOException
	 */
	public static void buildPdf(InputStream src, OutputStream out, byte[] ownerPwd)
			throws DocumentException, IOException {
		buildPdf(src, out, null, ownerPwd);
	}

	/**
	 * build PDF to OutputStream with encrypt
	 * 
	 * @param src
	 * @param out
	 * @param userPwd
	 * @param ownerPwd
	 * @throws DocumentException
	 * @throws IOException
	 */
	public static void buildPdf(InputStream src, OutputStream out, byte[] userPwd, byte[] ownerPwd)
			throws DocumentException, IOException {
		Document doc = new Document(PageSize.A4, 28, 28, 28, 28);// A4 纸，边距的单位是 pt，72pt = 1 英吋，28pt ≈ 1 厘米
		
		PdfWriter writer = PdfWriter.getInstance(doc, out);

		if (ownerPwd != null) {//必须先有 ownerPwd 才能使用 userPwd
			writer.setEncryption(userPwd, ownerPwd, PdfWriter.ALLOW_PRINTING, PdfWriter.ENCRYPTION_AES_128);
		}

		doc.open();
		doc.addAuthor("Bill author");
		doc.addCreator("Bill creator");
		doc.addTitle("Bill title");
		doc.addSubject("Bill subject");
		doc.addKeywords("Bill keyworks");
		doc.addLanguage("zh-CN");
		doc.addCreationDate();

		XMLWorkerHelper.getInstance().parseXHtml(writer, doc, src, UTF_8);

		doc.close();
	}

	/**
	 * get local-host JSP/FreeMarker/Velocity template to HTML InputStream
	 * 
	 * @param path
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public static InputStream getHtmlInputStream(String path, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try (ByteArrayOutputStream os = getHtmlOutputStream(path, req, resp)) {
			System.out.println(os.toString());
			return new ByteArrayInputStream(os.toByteArray());
		}
	}

	/**
	 * get local-host JSP/FreeMarker/Velocity template to HTML OutputStream
	 * 
	 * @param path
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public static ByteArrayOutputStream getHtmlOutputStream(String path, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final ByteArrayOutputStream os = new ByteArrayOutputStream();

		try (OutputStreamWriter writer = new OutputStreamWriter(os); PrintWriter pw = new PrintWriter(writer)) {
			final ServletOutputStream stream = new ServletOutputStream() {
				@Override
				public void write(byte[] data, int offset, int length) throws IOException {
					os.write(data, offset, length);
				}

				@Override
				public void write(int b) throws IOException {
					os.write(b);
				}
			};

			HttpServletResponse response = new HttpServletResponseWrapper(resp) {
				@Override
				public ServletOutputStream getOutputStream() {
					return stream;
				}

				@Override
				public PrintWriter getWriter() {
					return pw;
				}
			};

			ServletContext sc = req.getServletContext();
			sc.getRequestDispatcher(sc.getContextPath() + path).include(req, response);
		}

		return os;
	}

	private static final Charset UTF_8 = Charset.forName("UTF-8");

	/**
	 * regist Fonts from /WEB-INF/font
	 */
	public static void registFonts(ServletContext sc) {
		String path = sc.getRealPath("/WEB-INF/font/LTHYSZK.ttf");
		FontFactory.register(path, "sans-serif");
	}

}