package ng.demo.vo.usual;

import java.util.ArrayList;
import java.util.List;

import ng.demo.vo.usual.enums.TBodyType;

public class TBodyVo extends Element {
	private static final long serialVersionUID = 4012663502166413938L;

	/** 类型 */
	private TBodyType type;

	/** radio 或 checkbox 的载体 */
	private InputVo ipt;

	/** 按钮组的内容 */
	private List<ButtonVo> btns;

	public TBodyVo() {
		super();
	}

	public TBodyVo(TBodyType type, String name, String clas) {
		super(name, clas);
		this.type = type;
		if(TBodyType.BUTTONS.equals(type)){
			this.btns = new ArrayList<>(4);
		}
	}

	public TBodyType getType() {
		return type;
	}

	public void setType(TBodyType type) {
		this.type = type;
	}

	public InputVo getIpt() {
		return ipt;
	}

	public void setIpt(InputVo ipt) {
		this.ipt = ipt;
	}

	public List<ButtonVo> getBtns() {
		return btns;
	}

	public void setBtns(List<ButtonVo> btns) {
		this.btns = btns;
	}
	
	public boolean addBtn(ButtonVo btn) {
		return this.btns.add(btn);
	}

}
