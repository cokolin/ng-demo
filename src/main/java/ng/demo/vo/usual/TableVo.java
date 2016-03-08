package ng.demo.vo.usual;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class TableVo extends Element {
	private static final long serialVersionUID = 1450727832026028792L;

	/** 表格的列表头 */
	private List<THeadVo> theads;

	/** 表格的列表项 */
	private List<TBodyVo> tbodies;

	public TableVo() {
		super();
		this.theads = new ArrayList<>(4);
		this.tbodies = new ArrayList<>(4);
	}

	public TableVo(String name, String clas) {
		super(name, clas);
		this.theads = new ArrayList<>(4);
		this.tbodies = new ArrayList<>(4);
	}

	public List<THeadVo> getTheads() {
		return theads;
	}

	public void setTheads(List<THeadVo> theads) {
		this.theads = theads;
	}

	public List<TBodyVo> getTbodies() {
		return tbodies;
	}

	public void setTbodies(List<TBodyVo> tbodies) {
		this.tbodies = tbodies;
	}

	@JsonIgnore
	public boolean addThead(THeadVo thead) {
		return this.theads.add(thead);
	}

	@JsonIgnore
	public boolean addTbody(TBodyVo tbody) {
		return this.tbodies.add(tbody);
	}

}
