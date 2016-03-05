package ng.demo.vo.usual;

import ng.demo.vo.usual.enums.ModuleType;

public class ModuleVo extends Element {
	private static final long serialVersionUID = -5403286179689788062L;

	/** 组件类型 */
	private ModuleType type;

	/** 表单 */
	private FormVo form;

	/** 表格 */
	private TableVo table;
	
	/** 按钮行的样式类 */
	private String btnColClas;

	/** 是否包含分页组件 */
	private boolean pagination;

	public ModuleType getType() {
		return type;
	}

	public void setType(ModuleType type) {
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
