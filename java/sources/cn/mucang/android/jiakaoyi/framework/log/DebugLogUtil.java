package cn.mucang.android.jiakaoyi.framework.log;

import android.util.SparseArray;
import com.mobile.auth.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.log.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0007J\u0016\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/log/DebugLogUtil;", "", "()V", "LOG_TYPE_JLOG", "", "LOG_TYPE_SYSTEM", "inputListener", "Landroid/util/SparseArray;", "Lcn/mucang/android/jiakaoyi/framework/log/LogInput;", BuildConfig.FLAVOR_type, "", "type", "text", "", "registerInput", "input", "unregisterInput", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugLogUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DebugLogUtil f3464a = new DebugLogUtil();
    private static final SparseArray<LogInput> b = new SparseArray<>();

    private DebugLogUtil() {
    }

    public static final void a(int i, String text) {
        r.e(text, "text");
        LogInput logInput = b.get(i);
        if (logInput == null) {
            return;
        }
        logInput.a(text);
    }

    public final void b(int i, LogInput input) {
        r.e(input, "input");
        b.put(i, input);
    }

    public final void c(int i) {
        b.remove(i);
    }
}
