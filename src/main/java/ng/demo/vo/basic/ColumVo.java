package ng.demo.vo.basic;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import ng.demo.base.BaseModel;

public class ColumVo extends BaseModel {
	private static final long serialVersionUID = -5901923600206131573L;

	/** 样式 */
	private String clas;

	/** 标签 */
	private String label;
	
	/** 标签样式 */
	private String labClas;
	
	/** 输入框样式 */
	private String iptClas;
	
	/** 输入框样式 */
	private List<InputVo> ipts;
	
	public ColumVo() {
		super();
		this.ipts = new ArrayList<>(4);
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getLabClas() {
		return labClas;
	}

	public void setLabClas(String labClas) {
		this.labClas = labClas;
	}

	public String getIptClas() {
		return iptClas;
	}

	public void setIptClas(String iptClas) {
		this.iptClas = iptClas;
	}

	public List<InputVo> getIpts() {
		return ipts;
	}

	public void setIpts(List<InputVo> ipts) {
		this.ipts = ipts;
	}
	
	@JsonIgnore
	public boolean addIpt(InputVo ipt) {
		return this.ipts.add(ipt);
	}
}
