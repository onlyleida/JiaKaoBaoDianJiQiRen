package cn.mucang.sundial.android.log.prefix;

import cn.mucang.sundial.android.log.LUtils;
import cn.mucang.sundial.android.log.LogType;
import com.google.common.primitives.UnsignedBytes;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultWrapOutput implements WrapOutput {
    private static String byte2hex(byte[] bArr) {
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

    @Override // cn.mucang.sundial.android.log.prefix.WrapOutput
    public String signal(LogType logType, byte[] bArr, String str, long j) {
        return LUtils.preTime(j) + " | " + str + " | \"" + byte2hex(bArr) + "\"\n";
    }

    @Override // cn.mucang.sundial.android.log.prefix.WrapOutput
    public String text(LogType logType, String str, long j) {
        if (str.contains(" | ") && str.substring(0, str.indexOf("|")).contains(String.valueOf(Calendar.getInstance().get(1)))) {
            return str;
        }
        return LUtils.preTime(j) + " | " + str + "\n";
    }
}
