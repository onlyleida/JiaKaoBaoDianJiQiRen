package cn.mucang.android.core.webview.protocol.d;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Base64;
import android.webkit.URLUtil;
import androidx.core.util.d;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.sundial.library.device.BaseCamera;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.d.a$a, reason: collision with other inner class name */
    public interface InterfaceC0090a {
        void a(boolean z);
    }

    public interface b {
        void a(String str, boolean z);
    }

    public static void a() {
    }

    public static d<String, byte[]> b(String str) {
        if (str.matches("^data:image/\\w+;base64.*")) {
            return d.a(str.substring(str.indexOf("/") + 1, str.indexOf(VoiceWakeuperAidl.PARAMS_SEPARATE)), Base64.decode(str.substring(str.indexOf(",")), 2));
        }
        return null;
    }

    public static boolean c(String str) {
        return n0.g(str) && str.matches("^data:image/\\w+;base64.*");
    }

    private static OutputStream d(String str) {
        if (str == null) {
            str = BaseCamera.SUFFIX_JPEG;
        }
        if (!str.startsWith(".")) {
            str = "." + str;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", System.currentTimeMillis() + str);
        ContentResolver contentResolver = MucangConfig.getContext().getContentResolver();
        Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        if (uriInsert == null) {
            return null;
        }
        try {
            return contentResolver.openOutputStream(uriInsert, "w");
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0078 A[Catch: all -> 0x007c, Exception -> 0x0081, TRY_LEAVE, TryCatch #5 {Exception -> 0x0081, all -> 0x007c, blocks: (B:36:0x006c, B:38:0x0071, B:40:0x0078), top: B:68:0x0067 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    public static void e(String str, InterfaceC0090a interfaceC0090a) {
        ?? r0;
        ?? r1;
        InputStream byteArrayInputStream;
        d<String, byte[]> dVarB;
        ?? r2 = ".";
        if (n0.e(str)) {
            return;
        }
        if (n0.e(str)) {
            if (interfaceC0090a != null) {
                interfaceC0090a.a(false);
                return;
            }
            return;
        }
        ?? r3 = 0;
        r3 = 0;
        r3 = 0;
        r3 = 0;
        ?? r4 = 0;
        try {
            try {
                try {
                    if (!URLUtil.isNetworkUrl(str)) {
                        if (!str.startsWith("data:") || (dVarB = b(str)) == null) {
                            byteArrayInputStream = null;
                        } else {
                            String str2 = dVarB.f1148a;
                            byte[] bArr = dVarB.b;
                            OutputStream outputStreamD = d(str2);
                            r3 = outputStreamD;
                            byteArrayInputStream = new ByteArrayInputStream(bArr);
                            r2 = outputStreamD;
                        }
                        if (r3 != 0 || byteArrayInputStream == null) {
                            if (interfaceC0090a != null) {
                                interfaceC0090a.a(false);
                            }
                            o.a(byteArrayInputStream);
                            r1 = r3;
                            o.a(r1);
                        }
                        j.d(byteArrayInputStream, r3);
                        if (interfaceC0090a != null) {
                            interfaceC0090a.a(true);
                        }
                        o.a(byteArrayInputStream);
                        r1 = r3;
                        o.a(r1);
                    }
                    OutputStream outputStreamD2 = d(str.lastIndexOf(".") > 0 ? str.substring(str.lastIndexOf(".")) : "");
                    byteArrayInputStream = cn.mucang.android.core.http.a.q().v(str);
                    r3 = outputStreamD2;
                    r2 = outputStreamD2;
                    if (r3 != 0) {
                        if (interfaceC0090a != null) {
                            interfaceC0090a.a(false);
                        }
                    } else if (interfaceC0090a != null) {
                        interfaceC0090a.a(false);
                    }
                    o.a(byteArrayInputStream);
                    r1 = r3;
                } catch (Exception e2) {
                    r0 = byteArrayInputStream;
                    e = e2;
                    r4 = r3;
                    try {
                        e.printStackTrace();
                        if (interfaceC0090a != null) {
                            interfaceC0090a.a(false);
                        }
                        o.a(r0);
                        r1 = r4;
                    } catch (Throwable th) {
                        th = th;
                        ?? r5 = r4;
                        r3 = r0;
                        r2 = r5;
                        o.a(r3);
                        o.a(r2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    r2 = r3;
                    r3 = byteArrayInputStream;
                    th = th2;
                    o.a(r3);
                    o.a(r2);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                ?? r6 = r3;
                r4 = r2;
                r0 = r6;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e4) {
            e = e4;
            r0 = 0;
        } catch (Throwable th4) {
            th = th4;
            r2 = 0;
        }
        o.a(r1);
    }
}
