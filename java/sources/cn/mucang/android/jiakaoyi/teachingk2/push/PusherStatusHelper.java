package cn.mucang.android.jiakaoyi.teachingk2.push;

import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;", "", "()V", "ERROR_AI_CAMERA", "", "ERROR_AI_CPU_TP", "ERROR_AI_SRS", "ERROR_PULL_STREAM", "ERROR_PUSH_STREAM", "NORMAL", "currentError", "uploadError", "", "error", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PusherStatusHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PusherStatusHelper f7484a = new PusherStatusHelper();
    private static int b = -1;

    private PusherStatusHelper() {
    }

    public final void a(int i) {
        int i2 = b;
        b = i;
        if (-1 == PusherManager.E()) {
            return;
        }
        if (i != 100 || (i == 100 && i != i2)) {
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherStatusHelper$uploadError$1(i, null), 3, null);
        }
    }
}
