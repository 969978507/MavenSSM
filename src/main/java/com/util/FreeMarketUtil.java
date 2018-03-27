package com.util;

import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreeMarketUtil {
	public static void main(String[] args) {
		Configuration conf = new Configuration();
		try {
			conf.setDirectoryForTemplateLoading(new File("src/main/resources/templetes"));
			
			Map<String, Object> root = new HashMap<String, Object>();
			root.put("user", "������");
			root.put("sex", true);
			root.put("birth", new Date());
			root.put("random", new Random().nextInt(100));
			root.put("html1", "<b>����</b>");
			List<Address> list = new ArrayList<Address>();
			list.add(new Address("�й�","����"));
			list.add(new Address("�й�","�Ϻ�"));
			list.add(new Address("����","ŦԼ"));
			root.put("list", list);
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("v0", "0000");
			data.put("v1", "1111");
			root.put("data", data);
			
			Template temp = conf.getTemplate("test.ftl");
			Writer writer = new OutputStreamWriter(System.out);
			temp.process(root, writer);
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}
	}
}
