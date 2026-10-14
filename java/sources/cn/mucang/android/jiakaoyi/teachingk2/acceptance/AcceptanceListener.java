package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import com.tencent.connect.common.Constants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceListener;", "", "createAcceptanceImpl", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "initStatusBar", "", "binding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;", Constants.PARAM_SCOPE, "Landroidx/lifecycle/LifecycleCoroutineScope;", "isLight", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface AcceptanceListener {
    void a(RobotStatusBarBinding robotStatusBarBinding, androidx.lifecycle.m mVar, boolean z);

    AcceptanceFunction<?> b(AcceptanceModule acceptanceModule, AcceptanceChildModel acceptanceChildModel);
}
