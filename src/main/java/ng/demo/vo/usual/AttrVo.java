package ng.demo.vo.usual;

import ng.demo.base.BaseModel;

public class AttrVo extends BaseModel {
	private static final long serialVersionUID = -2728621077734147129L;
	
	public String name;
	
	public String value;

	public AttrVo() {
		super();
	}

	public AttrVo(String name, String value) {
		super();
		this.name = name;
		this.value = value;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
}