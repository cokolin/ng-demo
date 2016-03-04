package ng.demo.vo.usual;

import java.util.ArrayList;
import java.util.List;

import ng.demo.vo.usual.AttrVo;
import ng.demo.base.BaseModel;

public class Element extends BaseModel {
	private static final long serialVersionUID = 4895075698041380029L;
	
	/** 名称 */
	private String name;
	
	/** 样式 */
	private String clas;
	
	/** 属性 */
	private List<AttrVo> attrs = new ArrayList<AttrVo>(4);

	public Element() {
		super();
	}

	public Element(String name, String clas) {
		super();
		this.name = name;
		this.clas = clas;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public List<AttrVo> getAttrs() {
		return attrs;
	}

	public void setAttrs(List<AttrVo> attrs) {
		this.attrs = attrs;
	}
	
	public boolean addAttr(AttrVo attr){
		return this.attrs.add(attr);
	}
	
}
