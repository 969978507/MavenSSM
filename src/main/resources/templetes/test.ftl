	你好啊！，${user}，今天天气不错啊！
--if语句------------------------------
	${user}是<#if user=="哈哈镜">我们的老师</#if>
--boolean语句-------------------------
	<#if sex == true>我们的老师是男的</#if>
--Date语句----------------------------
	我们的老师出生年月是${birth?date} ${birth?time}---${birth?string('yyyy-MM-dd hh:mm:ss')}
--字符串连接处理----------------------
	${"你好,${user}!"}---${"你好," +user +"!"}
--截取字符串----------------------
	${user[0]}---${user[0..1]}
--freemarker赋值----------------------
<#assign number="001100" />
<#assign hashmap={"a":1, "b":2} />
	${number}
	${hashmap["a"]}----${hashmap.a}
--空值处理----------------------
	<#-- ${sss} 空值报错 -->
	${sss!}<#--没有定义这个变量，默认值是空字符串！ -->
	${sss!"abc"} <#--没有定义这个变量，默认值是字符串abc！ -->
	<#if sss??>存在</#if><#--如果变量存在，返回true，否则返回false -->
--集合连接----------------------
	<#assign list1=["a", "b", "c"] />
	<#assign list2=["e", "f", "g"] />
	<#assign list3=list1+list2+["h"] />
	${list3[6]}
--if-else语句-------------------------
<#if random gt 60>
	random大于60
<#else>
	random小于60
</#if>
--if-elseif-else语句-------------------------
<#if random gte 60>
	random大于60
<#elseif random gte 50 && random lt 60>
	random大于50小于60
<#else>
	random大于50
</#if>
--list语句-------------------------
<#list list as li>
	<p>${li_index + 1}----${li.country}--${li.city}</p>
</#list>
--map语句-------------------------
	<p>${data["v0"]}</p>
<#list data?keys as key>
	<p>key:${key}--value:${data["${key}"]}</p>
</#list>
<#list data?values as value>
	<p>value:${value}</p>
</#list>
--include语句-------------------------
<#include "include.ftl" />
--自定义模板-------------------------
<#macro m1>
	<p>我是一个自定义模板！！！</p>
</#macro>
<@m1 />
--带参数的自定义模板-------------------------
<#macro m2 id name>
	<p>ID:${id}</p>
	<p>姓名:${name}</p>
</#macro>
<@m2 "TCV001" "无敌风火轮"/>
--命名空间，出现变量重名问题时include会覆盖原变量，而import不会------------------------
<#include "namespace.ftl" />
	<#assign myassign="nininini">
	${myassign}
<#import "namespace.ftl" as namespace/>
	<#assign myassign="nininini">
	${namespace.myassign}
	${myassign}
--内建函数-------------------------
<#-- 
	1. html： 对字符串进行HTML编码；
	2. cap_first： 使字符串第一个字母大写；
	3. lower_case： 将字符串转成小写；
	4. upper_case： 将字符串转成大写；
	5. size： 获得集合中元素的个数；
	6. int： 取得数字的整数部分。
 -->
	${html1}
	${html1?html}