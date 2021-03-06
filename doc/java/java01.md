## 1.Java系列

### Java基础

- 介绍

  ```
  sun公司詹姆斯·高斯林等人于1990年代初开发Java語言的雛形，最初被命名为Oak,於1995年5月以Java的名称正式发布。
  
  Java不同於一般的编译語言或直譯語言。它首先将源代码编译成字节码，再依赖各种不同平台上的虚拟机来解释执行字节码，从而具有“一次编写，到处运行”的跨平台特性。
  
  Java编程语言的风格十分接近C++语言。继承了C++语言面向对象技术的核心，舍弃了容易引起错误的指针，以引用取代；移除了C++中的运算符重载和多重继承特性，用接口取代；增加垃圾回收器功能。在Java SE 1.5版本中引入了泛型编程、类型安全的枚举、不定长参数和自动装/拆箱特性。
  Java编程语言是个简单、面向对象、分布式、解释性、健壮、安全与系统无关、可移植、高性能、多线程和动态的语言
  
  ```

  

- 关键字

  下面列出了Java`关键字`。这些关键字不能用于`常量`、`变量`、和任何`标识符`的名称。

  | 类别                 | 关键字       | 说明                         |
  | :------------------- | :----------- | :--------------------------- |
  | 访问控制             | private      | 私有的                       |
  |                      | protected    | 受保护的                     |
  |                      | public       | 公共的                       |
  | 类、方法和变量修饰符 | abstract     | 声明抽象                     |
  |                      | class        | 类                           |
  |                      | extends      | 扩允,继承                    |
  |                      | final        | 最终值,不可改变的            |
  |                      | implements   | 实现（接口）                 |
  |                      | interface    | 接口                         |
  |                      | native       | 本地，原生方法（非Java实现） |
  |                      | new          | 新,创建                      |
  |                      | static       | 静态                         |
  |                      | strictfp     | 严格,精准                    |
  |                      | synchronized | 线程,同步                    |
  |                      | transient    | 短暂                         |
  |                      | volatile     | 易失                         |
  | 程序控制语句         | break        | 跳出循环                     |
  |                      | case         | 定义一个值以供switch选择     |
  |                      | continue     | 继续                         |
  |                      | default      | 默认                         |
  |                      | do           | 运行                         |
  |                      | else         | 否则                         |
  |                      | for          | 循环                         |
  |                      | if           | 如果                         |
  |                      | instanceof   | 实例                         |
  |                      | return       | 返回                         |
  |                      | switch       | 根据值选择执行               |
  |                      | while        | 循环                         |
  | 错误处理             | assert       | 断言表达式是否为真           |
  |                      | catch        | 捕捉异常                     |
  |                      | finally      | 有没有异常都执行             |
  |                      | throw        | 抛出一个异常对象             |
  |                      | throws       | 声明一个异常可能被抛出       |
  |                      | try          | 捕获异常                     |
  | 包相关               | import       | 引入                         |
  |                      | package      | 包                           |
  | 基本类型             | boolean      | 布尔型                       |
  |                      | byte         | 字节型                       |
  |                      | char         | 字符型                       |
  |                      | double       | 双精度浮点                   |
  |                      | float        | 单精度浮点                   |
  |                      | int          | 整型                         |
  |                      | long         | 长整型                       |
  |                      | short        | 短整型                       |
  |                      | null         | 空                           |
  | 变量引用             | super        | 父类,超类                    |
  |                      | this         | 本类                         |
  |                      | void         | 无返回值                     |
  | 保留关键字           | goto         | 是关键字，但不能使用         |
  |                      | const        | 是关键字，但不能使用         |

- 基本类型

  布尔类：boolean  布尔型    

  整数类：byte  字节型    int  整型    long  长整型    short  短整型

  浮点类：double  双精度浮点    float  单精度浮点 

  字符类：char  字符型     

  基本类型有对应的对象类，能够自动装箱

  ```java
  Integer i = 10; //等价与 Integer i = Integer.valueOf(10);
  ```

  注意浮点类不应参与金额计算，可能产生精度丢失，用`BigDecimal`代替

  

- 数组

- 流程控制

  |         |             |          |          |
  | ------- | ----------- | -------- | -------- |
  | if      | case switch | while    | for      |
  | else if | break       | do while | continue |
  | else    |             |          |          |

  

  

  

   

- 方法重载

  同名方法，以参数不同来区分。构造方法同样。

  ```java
      public int calc(){
          return 0;
      }
      public int calc(int i){
          return i;
      }
      public int calc(int i,int j){
          return i+j;
      }
  ```

  

- 面向对象

- 继承实现

- 异常

- 集合

  HashMap，ArrayList

- IO

- 常用类



### GUI

- Awt窗口

- 面板

- 布局

- 事件监听

- 画笔

- 鼠标监听

- 键盘监听

- 输入框监听

- Swing的JFrame

- JDialog

- 文本域和JScroll面板

- 图片按钮单选多选

- 文本密码文本域

### 网络编程

### JUC

### 注解和反射

### lambda表达式

- 需要一个接口
- lambda方法
- lambda构造函数
- 



### Spring

- IOC
- AOP

### SpringMvc

### Mybatis

- ORM持久层框架

- 安装

  ```xml
          <dependency>
              <groupId>org.mybatis</groupId>
              <artifactId>mybatis</artifactId>
              <version>3.5.5</version>
          </dependency>
  ```

- 主配置文件

  ```xml
  <!-- mybatis-config.xml -->
  <?xml version="1.0" encoding="UTF-8" ?>
  <!DOCTYPE configuration
          PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
          "http://mybatis.org/dtd/mybatis-3-config.dtd">
  
  <configuration>
      <environments default="dev">
          <environment id="dev">
              <transactionManager type="JDBC"/>
              <dataSource type="POOLED">
                  <property name="driver" value="org.postgresql.Driver"/>
                  <property name="url" value="jdbc:postgresql://localhost:5432/gitea"/>
                  <property name="username" value="gitea"/>
                  <property name="password" value="gitea"/>
              </dataSource>
          </environment>
      </environments>
  
      <mappers>
          <mapper resource="xml/users.xml"/>
      </mappers>
  
  </configuration>
  
  ```

  

- Mapper接口和xml文件

  ```xml
  <?xml version="1.0" encoding="UTF-8" ?>
  <!DOCTYPE mapper
          PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
          "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
  
  <mapper namespace="com.hugang.UserMapper">
      <select id="selectOne" resultType="com.hugang.Users">
          select id,name,salary from users where id=1
      </select>
  </mapper>
  
  ```

  ```java
  package com.hugang;
  
  public interface UserMapper {
      //定义接口，和xml设定名称一致
      Users selectOne();
  }
  
  ```

- 使用

  ```java
      @Test
      public void test01() throws IOException {
          //程序主配置文件
          String resource = "mybatis-config.xml";
          //通过InputStream流 读入配置文件，生成sqlSessionFactory
          InputStream is = Resources.getResourceAsStream(resource);
          SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
          //开启sql会话
          SqlSession sqlSession = sqlSessionFactory.openSession();
          //获取对象接口 xml-> interface -> sqlSession.getMapper
          UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
          //执行sql
          Users users = userMapper.selectOne();
          System.out.println(users);
      }
  ```



### Tomcat

- ###### 什么是Tomcat

  ```
  ApacheTomcat是一个开源的Java Servlet, JavaServer Pages, Java Expression Language，Java WebSocket的实现
  ```

- 什么是Java Servlet

  ```
  A Jakarta Servlet (formerly Java Servlet) is a Java software component that extends the capabilities of a server. 
  Jakarta Servlet（前称 Java Servlet）是一个java组件，用来扩展服务器能力
  
  Although servlets can respond to many types of requests, they most commonly implement web containers for hosting web applications on web servers and thus qualify as a server-side servlet web API. 
  servlets可以用来处理各种类型的请求，最常用的是实现web容器，用来在web服务端搭建web应用程序，来提供服务端web api。
  
  Such web servlets are the Java counterpart to other dynamic web content technologies such as PHP and ASP.NET.
  用来和其他动态web技术竞争，如PHP，ASP.net
  ```

- 怎么使用Tomcat

  - 下载Tomcat9.0.37 `http://ftp.meisei-u.ac.jp/mirror/apache/dist/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.zip`

  - 启动Tomcat 

    ```shell
    ➜  /opt apache-tomcat-9.0.37/bin/startup.sh
    Using CATALINA_BASE:   /opt/apache-tomcat-9.0.37
    Using CATALINA_HOME:   /opt/apache-tomcat-9.0.37
    Using CATALINA_TMPDIR: /opt/apache-tomcat-9.0.37/temp
    Using JRE_HOME:        /opt/jdk-11.0.7
    Using CLASSPATH:       /opt/apache-tomcat-9.0.37/bin/bootstrap.jar:/opt/apache-tomcat-9.0.37/bin/tomcat-juli.jar
    Tomcat started.
    
    
    ```

    访问`http://localhost:8080/`

  - 第一个静态页面
    
    在Tomcat目录下webapps中创建一个hello/index.html的文件，内容如下，然后通过`http://localhost:8080/hello/`访问
    
    ```html
      <html>
        <head>
        <meta charset="UTF-8" />
          <meta name="viewport" content="width=device-width" />
          <title>hello</title>
        </head>
        <body>
          Hello,world!
        </body>
      </html>
    
    ```
    
  - 第一个Servlet程序
  
    pom.xml
  
    ```xml
            <dependency>
                <groupId>javax.servlet</groupId>
                <artifactId>javax.servlet-api</artifactId>
                <version>4.0.1</version>
                <scope>provided</scope>
            </dependency>
    ```
  
    web.xml
  
    ```xml
    <?xml version="1.0" encoding="UTF-8" ?>
    <web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
             version="4.0">
    
        <servlet>
            <servlet-name>HelloServlet</servlet-name>
            <servlet-class>com.hugang.HelloServlet01</servlet-class>
        </servlet>
        <servlet-mapping>
            <servlet-name>HelloServlet</servlet-name>
            <url-pattern>/</url-pattern>
        </servlet-mapping>
    
    
    </web-app>
    ```
  
    HelloServlet01.java
  
    ```java
    public class HelloServlet01 extends HttpServlet {
        static int count;
    
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            PrintWriter writer = resp.getWriter();
            writer.println("you have clicked " + (++count) + " times");
        }
    }
    ```
  
    















### Mybatis-Plus

### Redis

### JVM

### arthas

```shell
java -cp ".arthas/lib/3.3.7/arthas/*" com.taobao.arthas.boot.BootStrap

sc * | grep classname
trace classname methodname
heapdump



```
