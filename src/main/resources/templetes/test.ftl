	��ð�����${user}����������������
--if���------------------------------
	${user}��<#if user=="������">���ǵ���ʦ</#if>
--boolean���-------------------------
	<#if sex == true>���ǵ���ʦ���е�</#if>
--Date���----------------------------
	���ǵ���ʦ����������${birth?date} ${birth?time}---${birth?string('yyyy-MM-dd hh:mm:ss')}
--�ַ������Ӵ���----------------------
	${"���,${user}!"}---${"���," +user +"!"}
--��ȡ�ַ���----------------------
	${user[0]}---${user[0..1]}
--freemarker��ֵ----------------------
<#assign number="001100" />
<#assign hashmap={"a":1, "b":2} />
	${number}
	${hashmap["a"]}----${hashmap.a}
--��ֵ����----------------------
	<#-- ${sss} ��ֵ���� -->
	${sss!}<#--û�ж������������Ĭ��ֵ�ǿ��ַ����� -->
	${sss!"abc"} <#--û�ж������������Ĭ��ֵ���ַ���abc�� -->
	<#if sss??>����</#if><#--����������ڣ�����true�����򷵻�false -->
--��������----------------------
	<#assign list1=["a", "b", "c"] />
	<#assign list2=["e", "f", "g"] />
	<#assign list3=list1+list2+["h"] />
	${list3[6]}
--if-else���-------------------------
<#if random gt 60>
	random����60
<#else>
	randomС��60
</#if>
--if-elseif-else���-------------------------
<#if random gte 60>
	random����60
<#elseif random gte 50 && random lt 60>
	random����50С��60
<#else>
	random����50
</#if>
--list���-------------------------
<#list list as li>
	<p>${li_index + 1}----${li.country}--${li.city}</p>
</#list>
--map���-------------------------
	<p>${data["v0"]}</p>
<#list data?keys as key>
	<p>key:${key}--value:${data["${key}"]}</p>
</#list>
<#list data?values as value>
	<p>value:${value}</p>
</#list>
--include���-------------------------
<#include "include.ftl" />
--�Զ���ģ��-------------------------
<#macro m1>
	<p>����һ���Զ���ģ�壡����</p>
</#macro>
<@m1 />
--���������Զ���ģ��-------------------------
<#macro m2 id name>
	<p>ID:${id}</p>
	<p>����:${name}</p>
</#macro>
<@m2 "TCV001" "�޵з����"/>
--�����ռ䣬���ֱ�����������ʱinclude�Ḳ��ԭ��������import����------------------------
<#include "namespace.ftl" />
	<#assign myassign="nininini">
	${myassign}
<#import "namespace.ftl" as namespace/>
	<#assign myassign="nininini">
	${namespace.myassign}
	${myassign}
--�ڽ�����-------------------------
<#-- 
	1. html�� ���ַ�������HTML���룻
	2. cap_first�� ʹ�ַ�����һ����ĸ��д��
	3. lower_case�� ���ַ���ת��Сд��
	4. upper_case�� ���ַ���ת�ɴ�д��
	5. size�� ��ü�����Ԫ�صĸ�����
	6. int�� ȡ�����ֵ��������֡�
 -->
	${html1}
	${html1?html}