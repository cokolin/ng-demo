package ng.demo.vo.basic;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import ng.demo.vo.basic.AttrVo;
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

	@JsonIgnore
	public boolean addAttr(AttrVo attr) {
		return this.attrs.add(attr);
	}

	@JsonIgnore
	public String getAttrsString() {
		if (this.attrs == null) {
			return "";
		}
		StringBuilder str = new StringBuilder();
		for (AttrVo attr : attrs) {
			str.append(' ').append(attr.getName()).append("=\"").append(attr.getValue()).append('"');
		}
		return str.toString();
	}

}
