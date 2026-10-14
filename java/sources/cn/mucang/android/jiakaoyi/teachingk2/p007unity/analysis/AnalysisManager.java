package cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.TrainBehaviorManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.StepResultDialog;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0007J2\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J8\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0018\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\b\u0010\u001d\u001a\u00020\u000eH\u0007J\b\u0010\u001e\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisManager;", "", "()V", "TYPE_EXAM", "", "TYPE_TRAIN", "examList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;", "trainDeducts", "getTrainDeducts", "()Ljava/util/List;", "trainList", "getAnalysis", "", "getAnalysisModel", "reverse", "", "step", Constant.PROTOCOL_WEBVIEW_NAME, "", "code", "subStep", "getExamAnalysis", "line", "wheel", "handleDeduct", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "startStep", "stopStep", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AnalysisManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AnalysisManager f8374a = new AnalysisManager();
    private static final List<AnalysisModel> b = new ArrayList();
    private static final List<AnalysisModel> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<AnalysisModel> f8375d = new ArrayList();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.f$a */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisManager$stopStep$1", "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;", "priority", "", "getPriority", "()I", "show", "", "finishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements DialogMgr.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f8376a = 2;
        final /* synthetic */ ArrayList<AnalysisModel> b;
        final /* synthetic */ String c;

        a(ArrayList<AnalysisModel> arrayList, String str) {
            this.b = arrayList;
            this.c = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(b bVar, a this$0, DialogInterface dialogInterface) {
            r.e(this$0, "this$0");
            if (bVar == null) {
                return;
            }
            bVar.callback(this$0);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getF8376a() {
            return this.f8376a;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
        public void c(final b<DialogMgr.a> bVar) {
            Activity activityI = MucangConfig.i();
            if (activityI instanceof UnityMainActivity) {
                UnityMainActivity unityMainActivity = (UnityMainActivity) activityI;
                if (!unityMainActivity.isFinishing() && !unityMainActivity.isDestroyed()) {
                    StepResultDialog stepResultDialog = new StepResultDialog(activityI, true, this.b, this.c);
                    stepResultDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.c
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            AnalysisManager.a.d(bVar, this, dialogInterface);
                        }
                    });
                    stepResultDialog.show();
                    return;
                }
            }
            if (bVar == null) {
                return;
            }
            bVar.callback(this);
        }
    }

    private AnalysisManager() {
    }

    public static final void a() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.a
            @Override // java.lang.Runnable
            public final void run() {
                AnalysisManager.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
        try {
            final List<AnalysisModel> listM = new AnalysisApi().m(1);
            if (g.d(listM)) {
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalysisManager.c(listM);
                    }
                });
            }
            final List<AnalysisModel> listM2 = new AnalysisApi().m(2);
            if (g.d(listM2)) {
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalysisManager.d(listM2);
                    }
                });
            }
        } catch (Exception e2) {
            f.o(r.m("拉取错误分析失败：", e2.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(List list) {
        r.e(list, "$list");
        b.addAll(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(List result) {
        r.e(result, "$result");
        c.addAll(result);
    }

    public static final AnalysisModel e(boolean z, int i, String str, int i2, int i3) {
        for (AnalysisModel analysisModel : b) {
            if (analysisModel.deductCode == i2 && analysisModel.reverse == z && ((i != Step.K2_CeFangTingChe.type && i != Step.K2_DaoCheRuKu.type) || analysisModel.subStep == i3)) {
                return analysisModel;
            }
        }
        AnalysisModel analysisModel2 = new AnalysisModel();
        analysisModel2.deductCode = i2;
        analysisModel2.deductName = str;
        analysisModel2.step = i;
        analysisModel2.subStep = i3;
        analysisModel2.reverse = z;
        return analysisModel2;
    }

    public static final AnalysisModel f(boolean z, int i, int i2, int i3, int i4, int i5) {
        for (AnalysisModel analysisModel : c) {
            if (analysisModel.deductCode == i && analysisModel.reverse == z && ((i5 != Step.K2_CeFangTingChe.type && i5 != Step.K2_DaoCheRuKu.type) || analysisModel.subStep == i2)) {
                int i6 = analysisModel.wheel;
                if (i6 == 0 || i6 == i4) {
                    if (!r.a(analysisModel.line, "0")) {
                        String str = analysisModel.line;
                        r.d(str, "model.line");
                        if (!StringsKt__StringsKt.G(str, String.valueOf(i3), false, 2, null)) {
                        }
                    }
                    return analysisModel;
                }
            }
        }
        return new AnalysisModel();
    }

    public static final void h(boolean z, cn.mucang.android.jiakaoyi.engine.model.a deduct) {
        r.e(deduct, "deduct");
        Deduct deduct2 = deduct.f3102a;
        int i = deduct2.step.type;
        String str = deduct2.name;
        int i2 = deduct2.code;
        DeductExtraData deductExtraData = deduct.f3103d;
        AnalysisModel analysisModelE = e(z, i, str, i2, deductExtraData == null ? 1 : deductExtraData.subStep);
        if (cn.mucang.android.core.utils.n0.g(analysisModelE.errorAnalysis) && TeachConfig.a().getAnalysis()) {
            RobotTips.X(analysisModelE.deductName + ',' + ((Object) analysisModelE.errorAnalysis), null, TtsGrade.TeachError, -1, null);
        }
        for (AnalysisModel analysisModel : f8375d) {
            if (analysisModel.deductCode == analysisModelE.deductCode && analysisModel.reverse == analysisModelE.reverse && analysisModel.subStep == analysisModelE.subStep) {
                return;
            }
        }
        f8375d.add(analysisModelE);
    }

    public static final void l() {
        f8375d.clear();
        TrainBehaviorManager.b();
    }

    public static final void m() {
        String strC = TrainBehaviorManager.c();
        List<AnalysisModel> list = f8375d;
        if (!list.isEmpty()) {
            DialogMgr.d(new a(new ArrayList(list), strC));
        }
    }

    public final List<AnalysisModel> g() {
        return f8375d;
    }
}
