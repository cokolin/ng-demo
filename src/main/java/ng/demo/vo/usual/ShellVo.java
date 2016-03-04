package ng.demo.vo.usual;

import ng.demo.vo.usual.enums.ShellType;
import ng.demo.base.BaseModel;

public class ShellVo extends BaseModel {
	private static final long serialVersionUID = -5403286179689788062L;

	/** 壳类型 */
	private ShellType type;

	/** 表单 */
	private FormVo form;

	/** 表格 */
	private TableVo table;
	
	/** 按钮行的样式类 */
	private String btnColClas;

	/** 是否包含分页栏 */
	private boolean pagination;

	public ShellType getType() {
		return type;
	}

	public void setType(ShellType type) {
		this.type = type;
	}

	public FormVo getForm() {
		return form;
	}

	public void setForm(FormVo form) {
		this.form = form;
	}

	public TableVo getTable() {
		return table;
	}

	public void setTable(TableVo table) {
		this.table = table;
	}

	public String getBtnColClas() {
		return btnColClas;
	}

	public void setBtnColClas(String btnColClas) {
		this.btnColClas = btnColClas;
	}

	public boolean isPagination() {
		return pagination;
	}

	public void setPagination(boolean pagination) {
		this.pagination = pagination;
	}
}
