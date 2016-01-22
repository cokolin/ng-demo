package ng.demo.vo;

import java.math.BigDecimal;
import java.util.Date;

import ng.demo.base.BaseModel;

/**
 * 
 * @author cokolin
 *
 */
public class DemoVo extends BaseModel {
	private static final long serialVersionUID = 1L;

	/** 主键 */
	private Long id;

	/** 名称 */
	private String name;

	/** 备注 */
	private String remark;

	/** 类型 */
	private String type;

	/** 状态 */
	private String status;

	/** 单价 */
	private BigDecimal price;

	/** 数量，可能有小数 */
	private BigDecimal quantity;

	/** 折扣 */
	private BigDecimal discount;

	/** 修改人 */
	private String updateBy;

	/** 修改时间 */
	private Date updateTime;

	/** 已删除 */
	private Byte deleted;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getQuantity() {
		return quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getDiscount() {
		return discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Byte getDeleted() {
		return deleted;
	}

	public void setDeleted(Byte deleted) {
		this.deleted = deleted;
	}

}