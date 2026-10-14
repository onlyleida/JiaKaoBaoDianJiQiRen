package cn.mucang.android.core.utils;

import cn.mucang.android.core.jni.Riddle;
import java.net.URI;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public class k0 {
    public static String a(String str, String str2) {
        int i;
        try {
            URI uri = new URI(str);
            String rawPath = uri.getRawPath();
            if (uri.getRawQuery() != null) {
                rawPath = rawPath + "?" + uri.getRawQuery().replace(Marker.ANY_NON_NULL_MARKER, "%20");
            }
            int iIndexOf = rawPath.indexOf("sign=");
            if (iIndexOf == -1) {
                i = -1;
                break;
            }
            i = iIndexOf + 5;
            while (true) {
                if (i >= rawPath.length()) {
                    i = -1;
                    break;
                }
                if (rawPath.charAt(i) == '&') {
                    break;
                }
                i++;
            }
            StringBuilder sb = new StringBuilder(rawPath);
            if (iIndexOf != -1) {
                if (i != -1) {
                    sb.delete(iIndexOf, i);
                } else {
                    sb.delete(iIndexOf, rawPath.length());
                }
                int i2 = iIndexOf - 1;
                if (sb.charAt(i2) == '&' || sb.charAt(i2) == '?') {
                    sb.deleteCharAt(i2);
                }
            }
            String string = sb.toString();
            int iIndexOf2 = string.indexOf(63);
            if (iIndexOf2 == -1) {
                sb.append("?");
            } else if (iIndexOf2 < string.length() - 1) {
                sb.append("&");
            }
            sb.append("sign=");
            sb.append(cn.mucang.android.core.encode.a.e(Riddle.s(string, str2)));
            if (uri.getPort() > 0) {
                sb.insert(0, ":" + uri.getPort());
            }
            if (uri.getHost() != null) {
                sb.insert(0, uri.getHost());
            }
            if (uri.getScheme() != null) {
                sb.insert(0, uri.getScheme() + "://");
            }
            return sb.toString();
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return null;
        }
    }
}
