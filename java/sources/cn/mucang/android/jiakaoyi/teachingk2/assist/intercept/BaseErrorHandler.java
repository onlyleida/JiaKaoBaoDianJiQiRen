package cn.mucang.android.jiakaoyi.teachingk2.assist.intercept;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005J\u0016\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/BaseErrorHandler;", "", "()V", "assistants", "", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "getAssistants", "()Ljava/util/List;", "needIntercept", "", "registerAssist", "", "assist", "stopAssist", "reason", "", "sendOrder", "unregisterAssist", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class BaseErrorHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<AbsAssistant> f6119a = new ArrayList();

    public final boolean a() {
        Iterator<T> it = this.f6119a.iterator();
        while (it.hasNext()) {
            if (((AbsAssistant) it.next()).k()) {
                return true;
            }
        }
        return false;
    }

    public final void b(AbsAssistant assist) {
        r.e(assist, "assist");
        if (!assist.k()) {
            f.o("registerAssist: only register can be after assist");
        } else {
            if (this.f6119a.contains(assist)) {
                return;
            }
            this.f6119a.add(assist);
        }
    }

    public final void c(String reason, boolean z) {
        r.e(reason, "reason");
        for (AbsAssistant absAssistant : this.f6119a) {
            if (absAssistant.k()) {
                absAssistant.y(reason, z);
            }
        }
    }

    public final void d(AbsAssistant assist) {
        r.e(assist, "assist");
        this.f6119a.remove(assist);
    }
}
