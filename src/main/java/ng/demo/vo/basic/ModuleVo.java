package ng.demo.vo.basic;

import ng.demo.vo.basic.enums.ModuleType;

public class ModuleVo extends Element {
	private static final long serialVersionUID = -5403286179689788062L;

	/** 组件类型 */
	private ModuleType type;

	/** 表单 */
	private FormVo form;

	/** 规格 */
	private String size;

	/** 表格 */
	private TableVo table;

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

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public TableVo getTable() {
		return table;
	}

	public void setTable(TableVo table) {
		this.table = table;
	}

	public boolean isPagination() {
		return pagination;
	}

	public void setPagination(boolean pagination) {
		this.pagination = pagination;
	}
}
