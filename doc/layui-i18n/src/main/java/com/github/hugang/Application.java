package com.github.hugang;

import org.beetl.core.Configuration;
import org.beetl.core.GroupTemplate;
import org.beetl.core.Template;
import org.beetl.core.resource.FileResourceLoader;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.util.ResourceUtils;
import org.springframework.util.StringUtils;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;

@SpringBootApplication
public class Application implements CommandLineRunner {

    public static final String RESOURCES = "/src/main/resources/";
    public static final String TEMPLATE = "/src/main/resources/template";
    public static final String DEST = "/layui/src/";
    private static String ROOT_PATH;

    static {
        try {
            ROOT_PATH = ResourceUtils.getFile("").getAbsolutePath();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    public void run(String... args) throws Exception {
        String lang = args[0];

        // 1. read template
        GroupTemplate gt = readGroupTemplate();

        // 2. read properties
        Map<String, String> prop = readProperties(lang);

        // 3. bind template value
        processTemplate(gt, prop, "layui.js");
        processTemplate(gt, prop, "lay/modules/colorpicker.js");
        processTemplate(gt, prop, "lay/modules/element.js");
        processTemplate(gt, prop, "lay/modules/flow.js");
        processTemplate(gt, prop, "lay/modules/form.js");
        // laydate only support en and cn with hard coding.
        //processTemplate(gt, prop, "lay/modules/laydate.js");
        processTemplate(gt, prop, "lay/modules/layedit.js");
        processTemplate(gt, prop, "lay/modules/layer.js");
        processTemplate(gt, prop, "lay/modules/laypage.js");
        processTemplate(gt, prop, "lay/modules/rate.js");
        processTemplate(gt, prop, "lay/modules/table.js");
        processTemplate(gt, prop, "lay/modules/transfer.js");
        processTemplate(gt, prop, "lay/modules/tree.js");
        processTemplate(gt, prop, "lay/modules/upload.js");
        processTemplate(gt, prop, "lay/modules/util.js");

    }

    private void processTemplate(GroupTemplate gt, Map<String, String> prop, String fileName) throws IOException {
        String ret = renderTemplate(fileName, gt, prop);

        // System.out.println(ret);
        // 4. save to target file
        FileOutputStream fos = new FileOutputStream(ROOT_PATH + DEST + fileName);
        fos.write(ret.getBytes());
    }

    private Map<String, String> readProperties(String lang) throws IOException {
        if (StringUtils.isEmpty(lang)) {
            lang = "en";
        }
        File file = new File(ROOT_PATH + RESOURCES + "layui-i18n-" + lang + ".properties");
        Properties properties = readPropertiesFromFile(file);
        Iterator<Map.Entry<Object, Object>> iterator = properties.entrySet().iterator();
        Map<String, String> map = new HashMap<>();
        while (iterator.hasNext()) {
            Map.Entry<Object, Object> entry = iterator.next();
            map.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return map;
    }

    private static Properties readPropertiesFromFile(File propertiesFile) throws IOException {
        InputStream stream = null;
        try {
            stream = new FileInputStream(propertiesFile);
            Properties properties = new Properties();
            properties.load(new InputStreamReader(stream, StandardCharsets.UTF_8));
            return properties;
        } finally {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public GroupTemplate readGroupTemplate() throws IOException {
        String templateRoot = ROOT_PATH + TEMPLATE;
        FileResourceLoader resourceLoader = new FileResourceLoader(templateRoot, "utf-8");
        Configuration cfg = Configuration.defaultConfiguration();
        return new GroupTemplate(resourceLoader, cfg);
    }

    public String renderTemplate(String fileName, GroupTemplate gt, Map<String, String> map) {
        Template t = gt.getTemplate(fileName);
        t.binding(map);
        return t.render();
    }
}
