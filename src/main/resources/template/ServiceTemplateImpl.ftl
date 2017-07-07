package ${basePackage}.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${basePackage}.mapper.${className}Mapper;

@Service
public class ${className}ServiceImpl implements ${className}Service{

	@Resource
    private ${className}Mapper<${className}> ${lowerName}Mapper;

	@Override
	public boolean insert(${className} ${lowerName})  throws Exception{
		try {
			${lowerName}Mapper.insert(${lowerName});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(${className} ${lowerName}) throws Exception{
		try {
			${lowerName}Mapper.update(${lowerName});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public void updateBySelective(${className} ${lowerName}){
		try {
			${lowerName}Mapper.updateBySelective(${lowerName});
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public void deleteById(Object id) {
		try {
			${lowerName}Mapper.updateBySelective(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public ${lowerName} getById(Object id) throws Exception{
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
