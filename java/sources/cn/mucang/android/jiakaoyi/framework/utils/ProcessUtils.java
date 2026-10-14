package cn.mucang.android.jiakaoyi.framework.utils;

import android.os.Process;
import android.text.TextUtils;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.j0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/ProcessUtils;", "", "()V", "Companion", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProcessUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3619a = new a(null);
    private static String b;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.j0$a */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/ProcessUtils$Companion;", "", "()V", "pid", "", "processName", "getPid", "getProcessName", "context", "Landroid/content/Context;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final String a() {
            if (TextUtils.isEmpty(ProcessUtils.b)) {
                ProcessUtils.b = String.valueOf(Process.myPid());
            }
            String str = ProcessUtils.b;
            kotlin.jvm.internal.r.c(str);
            return str;
        }
    }

    public static final String c() {
        return f3619a.a();
    }
}
