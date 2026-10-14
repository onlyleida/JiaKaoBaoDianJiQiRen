package cn.mucang.android.core.api.request.f;

import cn.mucang.android.core.api.request.e.b;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.jni.Riddle;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.k0;
import cn.mucang.android.core.utils.n0;
import com.google.common.net.HttpHeaders;
import com.google.common.primitives.UnsignedBytes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okio.Buffer;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f2421a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static void a(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3) {
        Buffer buffer2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z2) {
                    buffer.writeUtf8(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z3) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && !z))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    while (!buffer2.exhausted()) {
                        int i3 = buffer2.readByte() & UnsignedBytes.MAX_VALUE;
                        buffer.writeByte(37);
                        char[] cArr = f2421a;
                        buffer.writeByte((int) cArr[(i3 >> 4) & 15]);
                        buffer.writeByte((int) cArr[i3 & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public static List<cn.mucang.android.core.api.request.e.a> b(String str) {
        if (n0.e(str)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.core.api.request.e.a(HttpHeaders.CONTENT_TYPE, str, false));
        return arrayList;
    }

    public static byte[] c(byte[] bArr) {
        return Riddle.e(bArr);
    }

    public static String d(List<cn.mucang.android.core.api.request.e.a> list) {
        if (g.b(list)) {
            return null;
        }
        for (cn.mucang.android.core.api.request.e.a aVar : list) {
            if (HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(aVar.a())) {
                return aVar.b();
            }
        }
        return null;
    }

    public static byte[] e(List<MucangNameValuePair> list) {
        if (g.b(list)) {
            return null;
        }
        Buffer buffer = new Buffer();
        for (MucangNameValuePair mucangNameValuePair : list) {
            if (mucangNameValuePair != null && !n0.e(mucangNameValuePair.getName()) && mucangNameValuePair.getValue() != null) {
                if (buffer.size() > 0) {
                    buffer.writeByte(38);
                }
                a(buffer, mucangNameValuePair.getName(), 0, mucangNameValuePair.getName().length(), " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, true, true);
                buffer.writeByte(61);
                a(buffer, mucangNameValuePair.getValue(), 0, mucangNameValuePair.getValue().length(), " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, true, true);
            }
        }
        return buffer.readByteArray();
    }

    public static List<cn.mucang.android.core.api.request.e.a> f(List<cn.mucang.android.core.api.request.e.a> list, b bVar) {
        if (bVar != null && !g.b(bVar.p())) {
            if (g.b(list)) {
                return bVar.p();
            }
            for (cn.mucang.android.core.api.request.e.a aVar : bVar.p()) {
                String strA = aVar.a();
                if (!n0.e(strA)) {
                    Iterator<cn.mucang.android.core.api.request.e.a> it = list.iterator();
                    while (it.hasNext()) {
                        if (strA.equalsIgnoreCase(it.next().a())) {
                            it.remove();
                        }
                    }
                    list.add(new cn.mucang.android.core.api.request.e.a(aVar.a(), aVar.b()));
                }
            }
        }
        return list;
    }

    public static String g(String str, String str2) {
        return n0.e(str2) ? str : k0.a(str, str2);
    }
}
