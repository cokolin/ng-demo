package ng.demo.mapper;

import java.util.List;

import ng.demo.model.DemoInfo;

public interface DemoMapper {

	List<DemoInfo> query(DemoInfo model);

	DemoInfo get(Long id);

	int update(DemoInfo model);

	Long insert(DemoInfo model);

	int remove(Long id);
}
