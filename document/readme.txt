DEMO
===========================

###########环境依赖
tomcat-8.5.30
mysql

###########部署步骤
1. 将MZJ-20180619.war导入tomcat-8.5.30\webapps目录下

2. 运行tomcat-8.5.30\bin目录下startup.bat

3. 服务器编译部署完之后打开浏览器

4. 在浏览器中访问http://localhost:8080/MZJ-20180619

5. 运行tomcat-8.5.30\bin目录下shutdown.bat 关闭 tomcat服务器

###########目录结构描述
├── .idea
├── build
├── build.xml                    // 配置bulid.xml
├── document                     // 配置
│   ├── db                           //数据库sql
│   ├── design
│   ├── plan
│   └── readme.txt                // help
├── lib
├── src
│   ├── main
│   │   ├── java
│   │   │   ├── com.mzj.product
│   │   │   │   ├── conroller       //配置conroller 控制器
│   │   │   │   ├── dao               // 访问数据库方法
│   │   │   │   ├── mapper         // mapper映射文件
│   │   │   │   ├── model           //实体类
│   │   │   │   ├── service          //业务逻辑，调用dao 操作
│   │   └──  resources
│   ├── test
│   └── resources
├── web
│   ├── application           //jsp 前端页面
│   ├── css
│   ├── images
│   ├── js
│   ├── WEB-INF
│   │   └── web.xml     //初始化配置信息
│   ├── index.jsp

########### 版本内容更新
1. 新功能     对产品列表增删改查
2. 新功能     对产品种类蹭删改查