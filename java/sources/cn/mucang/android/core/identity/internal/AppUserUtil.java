package cn.mucang.android.core.identity.internal;

import android.app.Application;
import android.content.Context;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.internal.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/identity/internal/AppUserUtil;", "", "()V", "ID_FILE", "", "VERSION", "", "identity", "getAppUserInternal", "getAppuser", "context", "Landroid/content/Context;", "reBuildId", "", "file", "Ljava/io/File;", "readFile", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AppUserUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppUserUtil f2558a = new AppUserUtil();
    private static String b;

    private AppUserUtil() {
    }

    private final synchronized String b(Context context) {
        if (b == null) {
            File file = context.getFileStreamPath("id.db");
            if (file.exists()) {
                try {
                    r.d(file, "file");
                    d(file);
                } catch (Exception e2) {
                    t.c("默认替换", e2);
                    r.d(file, "file");
                    c(file);
                }
            } else {
                r.d(file, "file");
                c(file);
            }
        }
        return b;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006a A[Catch: all -> 0x0092, PHI: r1
      0x006a: PHI (r1v5 ??) = (r1v9 ??), (r1v10 ??) binds: [B:29:0x0083, B:13:0x0067] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:12:0x0064, B:15:0x006a, B:33:0x0088, B:37:0x0091, B:36:0x008e, B:28:0x0080), top: B:41:0x0001 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.nio.channels.FileLock] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.nio.channels.FileLock] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.nio.channels.FileLock] */
    /* JADX WARN: Type inference failed for: r1v9 */
    private final synchronized void c(File file) {
        ?? r1;
        ?? string = UUID.randomUUID().toString();
        r.d(string, "randomUUID().toString()");
        b = kotlin.text.t.x(string, "-", "", false, 4, null);
        DataOutputStream dataOutputStream = null;
        try {
            try {
                string = new FileOutputStream(new File(MucangConfig.getContext().getCacheDir(), "_appUser_lock_")).getChannel().lock();
                try {
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    DataOutputStream dataOutputStream2 = new DataOutputStream(new FileOutputStream(file));
                    try {
                        dataOutputStream2.writeInt(427952160);
                        dataOutputStream2.writeInt(1);
                        dataOutputStream2.writeUTF(b);
                        dataOutputStream2.writeDouble(Math.random());
                        dataOutputStream2.flush();
                        o.a(dataOutputStream2);
                        r1 = string;
                        if (string != 0) {
                            r1.release();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        dataOutputStream = dataOutputStream2;
                        t.c("默认替换", e);
                        o.a(dataOutputStream);
                        r1 = string;
                        if (string != 0) {
                            r1.release();
                        }
                    } catch (Throwable th) {
                        th = th;
                        dataOutputStream = dataOutputStream2;
                        o.a(dataOutputStream);
                        if (string != 0) {
                            string.release();
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e = e4;
            string = 0;
        } catch (Throwable th3) {
            th = th3;
            string = 0;
        }
    }

    private final void d(File file) throws Exception {
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new FileInputStream(file));
            try {
                if (dataInputStream2.readInt() != 427952160) {
                    throw new IOException("bad file format1");
                }
                if (dataInputStream2.readInt() != 1) {
                    throw new IOException("bad file format2");
                }
                String utf = dataInputStream2.readUTF();
                double d2 = dataInputStream2.readDouble();
                if (d2 > 1.0d || d2 < 0.0d) {
                    throw new IOException("bad file format3");
                }
                b = utf;
                o.a(dataInputStream2);
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                o.a(dataInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized String a() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("appUser");
            return "";
        }
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        return b(context);
    }
}
