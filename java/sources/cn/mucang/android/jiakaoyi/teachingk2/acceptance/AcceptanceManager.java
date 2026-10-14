package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.tencent.connect.common.Constants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J \u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceManager;", "", "()V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceListener;", "createAcceptanceImpl", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "init", "", "initStatusBar", "binding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;", Constants.PARAM_SCOPE, "Landroidx/lifecycle/LifecycleCoroutineScope;", "isLight", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AcceptanceManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AcceptanceManager f6081a = new AcceptanceManager();
    private static AcceptanceListener b;

    private AcceptanceManager() {
    }

    public static final AcceptanceFunction<?> a(AcceptanceModule mode, AcceptanceChildModel extra) {
        kotlin.jvm.internal.r.e(mode, "mode");
        kotlin.jvm.internal.r.e(extra, "extra");
        AcceptanceListener acceptanceListener = b;
        if (acceptanceListener == null) {
            return null;
        }
        return acceptanceListener.b(mode, extra);
    }

    public static final void b(AcceptanceListener listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        b = listener;
    }

    public static final void c(RobotStatusBarBinding binding, androidx.lifecycle.m scope, boolean z) {
        kotlin.jvm.internal.r.e(binding, "binding");
        kotlin.jvm.internal.r.e(scope, "scope");
        AcceptanceListener acceptanceListener = b;
        if (acceptanceListener == null) {
            return;
        }
        acceptanceListener.a(binding, scope, z);
    }
}
