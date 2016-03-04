package ng.demo.vo.usual;

import java.util.ArrayList;
import java.util.List;

public class TableVo extends Element {
	private static final long serialVersionUID = 1450727832026028792L;

	/** 表格的列表头 */
	private List<THeadVo> theads;

	/** 表格的列表项 */
	private List<TBodyVo> tbodys;

	public TableVo() {
		super();
		this.theads = new ArrayList<>(4);
		this.tbodys = new ArrayList<>(4);
	}

	public TableVo(String name, String clas) {
		super(name, clas);
		this.theads = new ArrayList<>(4);
		this.tbodys = new ArrayList<>(4);
	}

	public List<THeadVo> getTheads() {
		return theads;
	}

	public void setTheads(List<THeadVo> theads) {
		this.theads = theads;
	}

	public List<TBodyVo> getTbodys() {
		return tbodys;
	}

	public void setTbodys(List<TBodyVo> tbodys) {
		this.tbodys = tbodys;
	}


	public boolean addThead(THeadVo thead) {
		return this.theads.add(thead);
	}

	public boolean addTbody(TBodyVo tbody) {
		return this.tbodys.add(tbody);
	}

}
