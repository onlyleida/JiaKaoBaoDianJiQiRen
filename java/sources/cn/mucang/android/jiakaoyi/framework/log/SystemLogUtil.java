package cn.mucang.android.jiakaoyi.framework.log;

import cn.mucang.android.core.utils.t;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.s;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0006\u0010\u000b\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;", "", "()V", "TAG", "", "getLogcatPID", "", "startLog", "", "save", "", "stopLog", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SystemLogUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SystemLogUtil f3459a = new SystemLogUtil();

    private SystemLogUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int b() throws InterruptedException {
        Process processExec;
        InputStream inputStream;
        BufferedReader bufferedReader;
        String string;
        Integer numJ = null;
        try {
            t.h("SystemLogUtil", "ps |grep logcat$ |cut -c 10-15");
            processExec = Runtime.getRuntime().exec(new String[]{"sh", "-c", "ps |grep logcat$ |cut -c 10-15"});
        } catch (IOException e2) {
            e2.printStackTrace();
            processExec = null;
        }
        if (processExec == null || (inputStream = processExec.getInputStream()) == null) {
            bufferedReader = null;
        } else {
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.f15811a);
            bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        }
        String line = bufferedReader == null ? null : bufferedReader.readLine();
        t.h("SystemLogUtil", line);
        if (line != null && (string = StringsKt__StringsKt.J0(line).toString()) != null) {
            numJ = s.j(string);
        }
        if (processExec != null) {
            processExec.waitFor();
        }
        t.h("SystemLogUtil", r.m("pid:", numJ));
        if (numJ == null) {
            return -1;
        }
        return numJ.intValue();
    }

    public static final void c(boolean z) {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SystemLogUtil$startLog$1(z, null), 3, null);
    }

    public final void d() {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SystemLogUtil$stopLog$1(null), 3, null);
    }
}
