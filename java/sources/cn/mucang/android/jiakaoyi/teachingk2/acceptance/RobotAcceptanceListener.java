package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.CircleAcceptanceImpl;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.PrecisionAcceptanceImpl;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.TeachAcceptanceImpl;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import com.tencent.connect.common.Constants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.z, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/RobotAcceptanceListener;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceListener;", "()V", "createAcceptanceImpl", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "initStatusBar", "", "binding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;", Constants.PARAM_SCOPE, "Landroidx/lifecycle/LifecycleCoroutineScope;", "isLight", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotAcceptanceListener implements AcceptanceListener {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.z$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6082a;

        static {
            int[] iArr = new int[AcceptanceModule.values().length];
            iArr[AcceptanceModule.Circle.ordinal()] = 1;
            iArr[AcceptanceModule.Precision.ordinal()] = 2;
            f6082a = iArr;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceListener
    public void a(RobotStatusBarBinding binding, androidx.lifecycle.m scope, boolean z) {
        kotlin.jvm.internal.r.e(binding, "binding");
        kotlin.jvm.internal.r.e(scope, "scope");
        AppTeachExtensionsKt.c(binding, scope, z);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceListener
    public AcceptanceFunction<?> b(AcceptanceModule mode, AcceptanceChildModel extra) {
        kotlin.jvm.internal.r.e(mode, "mode");
        kotlin.jvm.internal.r.e(extra, "extra");
        int i = a.f6082a[mode.ordinal()];
        if (i != 1) {
            return i != 2 ? new TeachAcceptanceImpl(extra.getSubType(), extra.getNotPassSteps()) : new PrecisionAcceptanceImpl(extra.getSubType());
        }
        return new CircleAcceptanceImpl(extra.getSubType());
    }
}
