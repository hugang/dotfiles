# java基础

## Java的特性和优势

## Java的三种版本

## 安装开发环境

## 第一个程序 HelloWorld

## 编译型和解释型

## 使用IDE

## 注释

## 标识符

## 数据类型

## 类型转换

## 变量，常量

## 基本运算

## 自增，自减和Math类

## 逻辑运算符，位运算符

## 三元运算符

## 包机制

## JavaDoc文档生成

## 流程控制

### 用户交互Scanner

```java
        // 定义scanner接受用户输入
        Scanner scanner = new Scanner(System.in);
        // 如果没有输入则继续等待，有输入解析输入内容
        if (scanner.hasNext()) {
            // hasNext()和next()只获取第一个参数，空白后面的内容被忽略
            String next = scanner.next();
            System.out.println(next);
        }
```

```shell
Hello world!
Hello
```

## Scanner进阶

```java
        if (scanner.hasNextLine()) {
            // hasNextLine()和nextLine()获取一行参数
            String next = scanner.nextLine();
            System.out.println(next);
        }
```

```shell
Hello world!
Hello world!
```



### 顺序结构

### if选择结构

### switch选择结构

### while循环

### do while循环

### for循环，foreach循环

### break，continue，goto



## 方法

### 方法的定义

### 方法的调用

### 方法的重载

> 同样的名称，不同的参数



## 命令行传递参数

```java
package com.hugang;

public class App {
    public static void main(String[] args) {
        // args接受命令行参数
        // 例： java com.hugang.App hello world
        // 此时 args为长度2的数组
        for (String arg : args) {
            System.out.println(arg);
        }
    }
}
```

```bash
java com.hugang.App hello world
hello
world
```

## 可变参数

```java
    public static void add(String... params){
		//一个方法中最多一个可变参数，且可变参数必须放在最后位置
    }
```

## 递归

 ```java
package com.hugang;

public class App {
    public static void main(String[] args) {
        System.out.println(new App().f(10));
    }

    // 计算阶乘
    public int f(int i) {
        if (i == 1) {
            return 1;
        } else {
            return i * f(i - 1);
        }
    }
}
 ```

## 数组

### 什么是数组

### 数组的创建

### 数组的使用