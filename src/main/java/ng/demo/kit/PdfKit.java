package ng.demo.kit;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.xhtmlrenderer.pdf.ITextRenderer;
import org.xhtmlrenderer.pdf.PDFEncryption;

import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfWriter;

/**
 * PDF create Kit
 * 
 * @author cokolin
 *
 */
public class PdfKit {
	public static final byte[] OWNER_PASSWORD = "0w&eR@2o16P~D".getBytes();

	/**
	 * Default PDF Encryption
	 * 
	 * @return
	 */
	public static PDFEncryption getDefaultEncryption() {
		PDFEncryption encryption = new PDFEncryption();
		encryption.setOwnerPassword(PdfKit.OWNER_PASSWORD);
		encryption.setEncryptionType(PdfWriter.ENCRYPTION_AES_128);
		return encryption;
	}

	/**
	 * building PDF
	 * 
	 * @param src
	 * @param out
	 * @throws Exception
	 */
	public static void buildPdf(String src, OutputStream out) throws Exception {
		buildPdf(src, out, null);
	}

	/**
	 * building PDF
	 * 
	 * @param src
	 * @param out
	 * @param basePath
	 * @throws Exception
	 */
	public static void buildPdf(String src, OutputStream out, String basePath) throws Exception {
		buildPdf(src, out, basePath, null);
	}

	/**
	 * building PDF
	 * 
	 * @param src
	 * @param out
	 * @param basePath
	 * @param encryption
	 * @throws Exception
	 */
	public static void buildPdf(String src, OutputStream out, String basePath, PDFEncryption encryption) throws Exception {
		String fontPath = WebKit.getServletContext().getRealPath("/WEB-INF/fonts/LTHYSZK.ttf");
		ITextRenderer renderer = new ITextRenderer();
		if (encryption != null) {
			renderer.setPDFEncryption(encryption);
		}
		renderer.getFontResolver().addFont(fontPath, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		renderer.setDocumentFromString(src, basePath);
		renderer.layout();
		renderer.createPDF(out);
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
	public static String getHtmlToString(String path, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		try (ByteArrayOutputStream os = getHtmlOutputStream(path, req, resp)) {
			return os.toString();
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
	public static ByteArrayOutputStream getHtmlOutputStream(String path, HttpServletRequest req, HttpServletResponse resp) throws Exception {
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
}
