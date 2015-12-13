package ng.demo.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ng.demo.enums.DemoStatus;
import ng.demo.enums.DemoType;
import ng.demo.vo.DemoVo;
import ng.demo.vo.JsonResp;
import ng.demo.vo.QueryVo;

/**
 * @author cokolin
 */
@Controller
@RequestMapping("/demo")
public class DemoController {
	private final static Logger logger = LogManager.getLogger();

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "redirect:/demo/demo-1_4";
	}
	
	@RequestMapping(value="/demo-1_2", method = RequestMethod.GET)
	public String demo12() {
		return "demo/demo-1_2";
	}
	
	@RequestMapping(value="/demo-1_4", method = RequestMethod.GET)
	public String demo14() {
		return "demo/demo-1_4";
	}

	/**
	 * 上传
	 * 
	 * @param file
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(MultipartFile file) throws IOException {
		String fileName = file.getOriginalFilename();
		File dest = new File("/tmp/", fileName);
		file.transferTo(dest);
		return "success";
	}

	/**
	 * 查询
	 * 
	 * @param vo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "query", method = RequestMethod.GET)
	public JsonResp<List<DemoVo>> query(QueryVo reVo) {
		logger.info(reVo);
		int length = reVo.getLength();
		long start = reVo.getPage() * length - 1;

		List<DemoVo> list = new ArrayList<>();

		Random ran = new Random();
		for (int i = 1; i <= length; i++) {
			list.add(this.create(start + i, ran));
		}

		long count = 32 * reVo.getLength();
		return JsonResp.create(list).setCount(count);
	}

	/**
	 * 创建
	 * 
	 * @param vo
	 * @param valid
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public JsonResp<DemoVo> create(@RequestBody DemoVo vo, BindingResult valid) {
		logger.info(vo);
		if (valid.hasErrors()) {
			return JsonResp.create(400, valid.getAllErrors().toString());
		}
		Random ran = new Random();
		return JsonResp.create(this.create(ran.nextInt(Integer.MAX_VALUE), ran));
	}

	/**
	 * 修改
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.PUT)
	public JsonResp<DemoVo> update(@RequestBody DemoVo vo, BindingResult valid) {
		logger.info(vo);
		if (valid.hasErrors()) {
			return JsonResp.create(400, valid.getAllErrors().toString());
		}
		Random ran = new Random();
		vo.setUpdateBy("UpdateUser" + ran.nextInt(1234));
		vo.setUpdateTime(new Date(ran.nextInt(Integer.MAX_VALUE) * 8L + 1430000000000L));
		return JsonResp.create(vo);
	}

	/**
	 * 删除多条
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "delete", method = RequestMethod.DELETE)
	public JsonResp<Integer> delete(@RequestBody QueryVo reVo) {
		logger.info(reVo);
		return JsonResp.create(reVo.getIds().size());
	}

	/**
	 * 加载单条
	 * 
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public JsonResp<DemoVo> load(@PathVariable("id") long id) {
		return JsonResp.create(this.create(id, new Random()));
	}

	private DemoVo create(long id, Random ran) {
		DemoVo vo = new DemoVo();
		vo.setId(id);
		vo.setDeleted((byte) 0);
		vo.setDiscount(new BigDecimal(ran.nextInt(100) * 0.01));
		vo.setName("Demo-" + id);
		vo.setPrice(new BigDecimal(ran.nextInt(100000) * 0.01));
		vo.setQuantity(new BigDecimal(ran.nextInt(10000)));
		vo.setRemark("Demo Remark " + id);

		DemoStatus[] status = DemoStatus.values();
		vo.setStatus(status[ran.nextInt(status.length)].name());

		DemoType[] types = DemoType.values();
		vo.setType(types[ran.nextInt(types.length)].name());

		vo.setUpdateBy("UpdateUser" + ran.nextInt(1234));
		vo.setUpdateTime(new Date(ran.nextInt(Integer.MAX_VALUE) * 8L + 1430000000000L));
		return vo;
	}

}