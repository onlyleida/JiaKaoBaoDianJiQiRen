package cn.mucang.android.jiakaoyi.framework.log.j;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.framework.log.g;
import cn.mucang.android.jiakaoyi.framework.log.i;
import cn.mucang.android.jiakaoyi.framework.utils.ProcessUtils;
import com.google.common.primitives.UnsignedBytes;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class a implements b {
    private String c(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(" 【");
        sb.append(ProcessUtils.c());
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = "," + str;
        }
        sb.append(str2);
        sb.append("】");
        return sb.toString();
    }

    private static String d(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "空";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & UnsignedBytes.MAX_VALUE);
            if (hexString.length() == 1) {
                sb.append("0");
                sb.append(hexString);
            } else {
                sb.append(hexString);
            }
        }
        return sb.toString().toUpperCase();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.j.b
    public String a(i iVar, byte[] bArr, String str, long j, String str2) {
        return g.f(j) + c(str2) + " | " + str + " | \"" + d(bArr) + "\"\n";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.j.b
    public String b(i iVar, String str, long j, String str2) {
        if ((iVar == i.k || iVar == i.m) && str.contains(" | ") && str.substring(0, str.indexOf("|")).contains(String.valueOf(Calendar.getInstance().get(1)))) {
            return str;
        }
        return g.f(j) + c(str2) + " | " + str + "\n";
    }
}
