package ${bussPackage}.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${basePackage}.mapper.${className}Mapper;

@Service
public class ${className}ServiceImpl implements ${className}Service{

	@Resource
    private ${className}Mapper<${className}> ${className}Mapper;

	@Override
	public boolean insert(${className} ${lowerName})  throws Exception{
		try {
			${className}Mapper.insert(${lowerName});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(${className} ${lowerName}) throws Exception{
		try {
			${className}Mapper.update(${lowerName});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public void updateBySelective(${className} ${lowerName}){
		try {
			${className}Mapper.updateBySelective(${lowerName});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public void deleteById(Object id) {
		try {
			${className}Mapper.updateBySelective(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public ${className} getById(Object id) throws Exception{
		return getDao().queryById(id);
	}

	@Override
	public List<${className}> findBySelective(${className} ${lowerName}) {
		return ${lowerName}Mapper.findBySelective(${lowerName});
	}

    @Override
    public List<${className}> findPageList(${className} ${lowerName}) {
        return ${lowerName}Mapper.findPageList(${lowerName});
    }

    @Override
    public int findPageCount(${className} ${lowerName}) {
        return ${lowerName}Mapper.findPageCount(${lowerName});
    }

}
