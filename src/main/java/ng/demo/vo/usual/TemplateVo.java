package ng.demo.vo.usual;

import java.util.ArrayList;
import java.util.List;

import ng.demo.base.BaseModel;

public class TemplateVo extends BaseModel {
	private static final long serialVersionUID = 5076148256777417139L;
	
	/** 页面 */
	private String code;
	
	/** 页面 */
	private String page;
	
	/** 标题 */
	private String title;

	/** 脚本文件名 */
	private String script;

	/** 控制器名称 */
	private String controller;

	/** 表单内容项 */
	private List<ShellVo> shells;

	public TemplateVo() {
		super();
		this.shells = new ArrayList<>(4);
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public String getController() {
		return controller;
	}

	public void setController(String controller) {
		this.controller = controller;
	}

	public List<ShellVo> getShells() {
		return shells;
	}

	public void setShells(List<ShellVo> shells) {
		this.shells = shells;
	}

	public boolean addShell(ShellVo shell) {
		return this.shells.add(shell);
	}

}
