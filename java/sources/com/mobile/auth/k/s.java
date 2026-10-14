package com.mobile.auth.k;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes5.dex */
public class s {
    private static String a(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        try {
            Process processStart = new ProcessBuilder(strArr).start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            processStart.getInputStream().close();
            processStart.destroy();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return sb.toString();
    }

    public static boolean a() {
        String[] strArr = {"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/", "/su/bin/"};
        for (int i = 0; i < 6; i++) {
            try {
                String str = strArr[i] + "su";
                if (new File(str).exists()) {
                    String strA = a(new String[]{"ls", "-l", str});
                    f.b("cyb", "isRooted=" + strA);
                    return (TextUtils.isEmpty(strA) || strA.indexOf("root") == strA.lastIndexOf("root")) ? false : true;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }
}
