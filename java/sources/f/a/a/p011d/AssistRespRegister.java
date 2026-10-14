package f.a.a.p011d;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.d.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/third/AssistRespRegister;", "", "()V", "KEY_LOGIN", "", "KEY_SHARE", "registerMap", "", "Lcn/mucang/android/third/BaseAssistResp;", "getAssistResp", "key", "register", "", "resp", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AssistRespRegister {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssistRespRegister f14525a = new AssistRespRegister();
    private static final Map<String, c> b = new LinkedHashMap();

    private AssistRespRegister() {
    }

    public final void a(String key, c resp) {
        r.e(key, "key");
        r.e(resp, "resp");
        b.put(key, resp);
    }
}
