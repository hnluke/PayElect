package com;

import com.bean.PayDetail;
import com.bean.Summary;
import com.bean.Users;
import com.dao.APCUnionMapperDao;
import com.dao.UsersMapperDao;
import com.factory.PayElecFactory;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.session.SqlSession;
import com.util.InitManage;

import java.util.HashMap;
import java.util.List;

public class MyBatisTest {
    public static void main(String[] args) {


       // PageHelper.startPage(1,2);          // 分页显示
        Page<PayDetail> page = PageHelper.startPage(3,2);

       List<PayDetail> list = PayElecFactory.getPayElecServiceImpl()
                .queryElec("", "", "", 0, 0);
        System.out.println("page.content:" + page.getResult().size());
//        System.out.println(list);

        // 指定全局配置文件
//        String resource = "mybatis-config.xml";
//        // 读取配置文件
//        try {
//            InputStream inputStream = Resources.getResourceAsStream(resource);
//            // 构建sqlSessionFactory
//            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//            // 获取sqlSession
//            SqlSession sqlSession = sqlSessionFactory.openSession();
//            // 操作CRUD
//            Employee employee = sqlSession.selectOne("findEmployById", 2);
//            System.out.println("[" + employee.getName() + "]");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

//        SqlSession sqlSession = InitManage.getSqlSession();
//        APCUnionMapperDao apcUnionMapperDao = sqlSession.getMapper(APCUnionMapperDao.class);
//        List<PayDetail> list = PayElecFactory.getPayElecServiceImpl().
//                queryElec("","","",0,0);
//        System.out.println(list);
//        UsersMapperDao usersMapperDao = sqlSession.getMapper(UsersMapperDao.class);
//        Summary summary = new Summary();
//        Users users = usersMapperDao.queryUsersByUserNO("123");
//        System.out.println(users);

        //ResultMap resultMap = null;
//        List<Employee> employee = null;
//        EmployMapper employMapper = sqlSession.getMapper(EmployMapper.class);

//

//
//        try {
//            employee = employMapper.findEmployById("Lisa2");
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        System.out.println(employee);
//        System.out.println(employee.get(0).getvTable());
        //System.out.println(employee.get("vTable"));
//        VTable vTable = (VTable) employee.get("vTable");
//        String v = vTable.getvEmployee();
//        System.out.println(v);


//        boolean flag = false;
//        flag = EUFactory.getUsersServiceImpl().verifyLogin("luke","123");
//        System.out.println(flag);



//
//        SqlSession sqlSession = InitManage.getSqlSession();
        //Employee employee = sqlSession.selectOne("findEmployById", 2);
//        EmployMapper employMapper = sqlSession.getMapper(EmployMapper.class);
//        try {
//            employMapper.deleteEmploy(8);
//            System.out.println("删除成功");
//        } catch (Exception e) {
//            System.out.println("删除失败");
//            e.printStackTrace();
//        }
//        Employee emp = new Employee();
//        //emp.setId(10);
//        emp.setName("Lisapp");
//        emp.setEmployee("offierpp");
//        try {
//            employMapper.updateEmploy(emp);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        try {
//            employMapper.insertEmploy(emp);
//            System.out.println(emp.getId());
//            System.out.println("插入成功");
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println("插入失败");
//        }
//
//        sqlSession.commit();


    }
}
