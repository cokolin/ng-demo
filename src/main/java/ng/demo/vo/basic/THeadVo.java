package ng.demo.vo.basic;

import ng.demo.vo.basic.enums.THeadType;

public class THeadVo extends Element {
	private static final long serialVersionUID = -3171539941509331999L;

	/** 类型 */
	private THeadType type;

	/** 按钮 */
	private ButtonVo btn;

	public THeadVo() {
		super();
	}

	public THeadVo(THeadType type, String name, String clas) {
		super(name, clas);
		this.type = type;
	}

	public THeadType getType() {
		return type;
	}

	public void setType(THeadType type) {
		this.type = type;
	}

	public ButtonVo getBtn() {
		return btn;
	}

	public void setBtn(ButtonVo btn) {
		this.btn = btn;
	}

}
