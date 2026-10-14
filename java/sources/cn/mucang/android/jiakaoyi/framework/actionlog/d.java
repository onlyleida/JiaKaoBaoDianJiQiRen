package cn.mucang.android.jiakaoyi.framework.actionlog;

import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static File a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(d());
        String str2 = File.separator;
        sb.append(str2);
        sb.append("/jkylogs/");
        sb.append(str2);
        sb.append(MucangConfig.getContext().getPackageName());
        sb.append(str2);
        sb.append("deduct_");
        sb.append(str);
        File file = new File(sb.toString());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File b() {
        StringBuilder sb = new StringBuilder();
        sb.append(d());
        String str = File.separator;
        sb.append(str);
        sb.append("/jkylogs/");
        sb.append(str);
        sb.append(MucangConfig.getContext().getPackageName());
        sb.append(str);
        sb.append("normal");
        File file = new File(sb.toString());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File c(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(d());
        String str2 = File.separator;
        sb.append(str2);
        sb.append("/jkylogs/");
        sb.append(str2);
        sb.append(MucangConfig.getContext().getPackageName());
        sb.append(str2);
        sb.append("rule_");
        sb.append(str);
        File file = new File(sb.toString());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static String d() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory.exists()) {
            return externalStorageDirectory.getAbsolutePath();
        }
        return null;
    }
}
