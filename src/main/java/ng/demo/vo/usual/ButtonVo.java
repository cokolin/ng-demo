package ng.demo.vo.usual;

import ng.demo.vo.usual.enums.ButtonType;

public class ButtonVo extends Element {
	private static final long serialVersionUID = 4266272825869914856L;

	private ButtonType type;
	
	private String disabled;
	
	private String click;

	private String icon;

	public ButtonVo() {
		super();
		this.setClas("btn-default");
	}

	public ButtonVo(ButtonType type, String name, String clas) {
		super(name, clas);
		this.type = type;
	}

	public ButtonType getType() {
		return type;
	}

	public void setType(ButtonType type) {
		this.type = type;
	}

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}

	public String getClick() {
		return click;
	}

	public void setClick(String click) {
		this.click = click;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

}
