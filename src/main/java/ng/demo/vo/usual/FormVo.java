package ng.demo.vo.usual;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import ng.demo.vo.usual.enums.FormType;

public class FormVo extends Element {
	private static final long serialVersionUID = -8946957435827704134L;

	/** 表单的类型 */
	private FormType type;
	
	/** 表单数据提交的地址 */
	private String url;
	
	/** 表单结果导出的地址 */
	private String expUrl;
	
	private String method;

	/** 表单的 ng-submit */
	private String submit;

	/** 表单的 ng-disabled */
	private String disabled;

	/** 表单的输入项 */
	private List<ColumVo> cols;

	/** 表单的按钮项 */
	private List<ButtonVo> btns;

	public FormVo() {
		super();
		this.cols = new ArrayList<>(4);
		this.btns = new ArrayList<>(4);
	}

	public FormVo(FormType type, String name, String clas) {
		super(name, clas);
		this.type = type;
		this.cols = new ArrayList<>(4);
		this.btns = new ArrayList<>(4);
	}

	public FormType getType() {
		return type;
	}

	public void setType(FormType type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getExpUrl() {
		return expUrl;
	}

	public void setExpUrl(String expUrl) {
		this.expUrl = expUrl;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getSubmit() {
		return submit;
	}

	public void setSubmit(String submit) {
		this.submit = submit;
	}

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}

	public List<ColumVo> getCols() {
		return cols;
	}

	public void setCols(List<ColumVo> cols) {
		this.cols = cols;
	}

	public List<ButtonVo> getBtns() {
		return btns;
	}

	public void setBtns(List<ButtonVo> btns) {
		this.btns = btns;
	}

	@JsonIgnore
	public boolean addCol(ColumVo col) {
		return this.cols.add(col);
	}

	@JsonIgnore
	public boolean addBtn(ButtonVo btn) {
		return this.btns.add(btn);
	}
}
