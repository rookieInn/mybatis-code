# mybatis-code
生成mybatis配置文件
## 1. 构建
  ````
  gradle builder
  ````
## 2. 结构
  ````
  mybatis-code/
              |--src/main/java
                              |--com.my
                                       |--bean
                                       |--common
                                       |--config
                                                |--Configuration.java
                                       |--demo
                                       |--service
                                       |--util
                                       App.java
              |--src/main/resources
                              |--template
                              jdbc.properties
              build.gradle
              settings.gradle
  ````
## 3. 配置
  修改jdbc.properties可以配置数据库<br/>
  修改Configuration.java可以配置文件生成位置
## 4. 入口
  App.java中的main方法
## 5. 环境
  jdk 1.8
## TODO 
  暂时只支持一张表一张表生成
    
