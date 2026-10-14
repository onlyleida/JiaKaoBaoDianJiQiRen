package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.AlertDialog;
import android.app.Dialog;
import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.f1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\u0010\u000bJ\b\u0010)\u001a\u00020\u0006H\u0002J\u0006\u0010*\u001a\u00020\u0006J\b\u0010+\u001a\u00020\u0006H\u0002J\u0012\u0010,\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010\u001bH\u0002J\u000e\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0016¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0018R\u0010\u0010#\u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0010\u0010(\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamDialogLogic;", "", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "startLightSimulate", "Lkotlin/Function0;", "", "canShowDialog", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;", "", "(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "getActivity", "()Landroidx/appcompat/app/AppCompatActivity;", "getCanShowDialog", "()Lkotlin/jvm/functions/Function1;", "chaoCheDialog", "Lcn/mucang/android/jiakaoyi/k3setting/exam/ChaocheHintDialogFragment;", "chaoCheDialogCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;", "chaoCheObserver", "Landroidx/lifecycle/Observer;", "getChaoCheObserver", "()Landroidx/lifecycle/Observer;", "chaoCheStateData", "engineDialog", "Landroid/app/Dialog;", "manualEndDialog", "openEngineDialog", "shangCheEventCallback", "Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;", "shangCheObserver", "Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;", "getShangCheObserver", "shangCheStepData", "startAroundCarDialog", "startFingerPrintDialog", "getStartLightSimulate", "()Lkotlin/jvm/functions/Function0;", "startThreeTouchDialog", "checkDismissShangCheDialog", "destroy", "dismissChaoCheDialog", "dismissDialog", "dialog", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "resumeShangCheStep", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamDialogLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.app.d f4262a;
    private final Function0<kotlin.v> b;
    private final Function1<ShangCheStepData.EventType, Boolean> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Dialog f4263d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Dialog f4264e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Dialog f4265f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Dialog f4266g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Dialog f4267h;
    private Dialog i;
    private z0 j;
    private ShangCheStepData k;
    private ChaoCheStateData l;
    private final androidx.lifecycle.a0<ShangCheStepData> m;
    private final androidx.lifecycle.a0<ChaoCheStateData> n;
    private final ShangCheStepData.ShangCheEventCallBack o;
    private final cn.mucang.android.jiakaoyi.framework.h.b<ChaoCheStateData> p;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.f1$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4268a;

        static {
            int[] iArr = new int[ShangCheStepData.EventType.values().length];
            iArr[ShangCheStepData.EventType.showCloseEngine.ordinal()] = 1;
            iArr[ShangCheStepData.EventType.dismissCloseEngine.ordinal()] = 2;
            iArr[ShangCheStepData.EventType.showManualGoExam.ordinal()] = 3;
            iArr[ShangCheStepData.EventType.dismissManualGoExam.ordinal()] = 4;
            iArr[ShangCheStepData.EventType.showOpenEngine.ordinal()] = 5;
            iArr[ShangCheStepData.EventType.dismissOpenEngine.ordinal()] = 6;
            iArr[ShangCheStepData.EventType.startFingerPrint.ordinal()] = 7;
            iArr[ShangCheStepData.EventType.dismissFingerPrint.ordinal()] = 8;
            iArr[ShangCheStepData.EventType.startAroundCar.ordinal()] = 9;
            iArr[ShangCheStepData.EventType.dismissAroundCar.ordinal()] = 10;
            iArr[ShangCheStepData.EventType.startThreeTouch.ordinal()] = 11;
            iArr[ShangCheStepData.EventType.dismissThreeTouch.ordinal()] = 12;
            iArr[ShangCheStepData.EventType.startLightSimulate.ordinal()] = 13;
            f4268a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public K3ExamDialogLogic(androidx.appcompat.app.d activity, Function0<kotlin.v> startLightSimulate, Function1<? super ShangCheStepData.EventType, Boolean> canShowDialog) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(startLightSimulate, "startLightSimulate");
        kotlin.jvm.internal.r.e(canShowDialog, "canShowDialog");
        this.f4262a = activity;
        this.b = startLightSimulate;
        this.c = canShowDialog;
        this.m = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.y
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3ExamDialogLogic.E(this.f4334a, (ShangCheStepData) obj);
            }
        };
        this.n = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.x
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3ExamDialogLogic.c(this.f4332a, (ChaoCheStateData) obj);
            }
        };
        this.o = new ShangCheStepData.ShangCheEventCallBack() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.u
            @Override // cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData.ShangCheEventCallBack
            public final void onEvent(ShangCheStepData.EventType eventType, ChildStepData childStepData, String str, boolean z) {
                K3ExamDialogLogic.y(this.f4326a, eventType, childStepData, str, z);
            }
        };
        this.p = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.c0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3ExamDialogLogic.a(this.f4241a, (ChaoCheStateData) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ChildStepData childStepData, View view) {
        kotlin.jvm.internal.r.e(childStepData, "$childStepData");
        childStepData.setForceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ChildStepData childStepData, View view) {
        kotlin.jvm.internal.r.e(childStepData, "$childStepData");
        childStepData.setForceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(ChildStepData childStepData, View view) {
        kotlin.jvm.internal.r.e(childStepData, "$childStepData");
        childStepData.setForceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(ChildStepData childStepData, View view) {
        kotlin.jvm.internal.r.e(childStepData, "$childStepData");
        childStepData.setForceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(K3ExamDialogLogic this$0, ShangCheStepData shangCheStepData) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.d();
        if (shangCheStepData == null) {
            return;
        }
        this$0.k = shangCheStepData;
        shangCheStepData.setShangCheEventCallBack(this$0.o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(K3ExamDialogLogic this$0, final ChaoCheStateData chaoCheStateData) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (chaoCheStateData == null) {
            return;
        }
        if (this$0.j == null) {
            this$0.j = z0.A(this$0.getF4262a().getSupportFragmentManager(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.t
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    K3ExamDialogLogic.b(chaoCheStateData, (Boolean) obj);
                }
            });
        } else {
            this$0.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ChaoCheStateData chaoCheStateData, Boolean isChaoCheDao) {
        kotlin.jvm.internal.r.e(chaoCheStateData, "$chaoCheStateData");
        kotlin.jvm.internal.r.d(isChaoCheDao, "isChaoCheDao");
        chaoCheStateData.isChaoCheDaoIn = isChaoCheDao.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(K3ExamDialogLogic this$0, ChaoCheStateData chaoCheStateData) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.d.d(this$0.getF4262a())) {
            return;
        }
        this$0.f();
        this$0.l = chaoCheStateData;
        if (chaoCheStateData == null) {
            return;
        }
        chaoCheStateData.dialogCallback = this$0.p;
    }

    private final void d() {
        g(this.i);
        g(this.f4267h);
        g(this.f4263d);
        g(this.f4266g);
        g(this.f4265f);
        g(this.f4264e);
        this.i = null;
        this.f4267h = null;
        this.f4263d = null;
        this.f4266g = null;
        this.f4265f = null;
        this.f4264e = null;
    }

    private final void f() {
        Dialog dialog;
        z0 z0Var;
        z0 z0Var2 = this.j;
        if (((z0Var2 == null || (dialog = z0Var2.getDialog()) == null || !dialog.isShowing()) ? false : true) && (z0Var = this.j) != null) {
            z0Var.dismiss();
        }
        this.j = null;
    }

    private final void g(Dialog dialog) {
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(K3ExamDialogLogic this$0, ShangCheStepData.EventType eventType, final ChildStepData childStepData, String message, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(eventType, "eventType");
        kotlin.jvm.internal.r.e(childStepData, "childStepData");
        kotlin.jvm.internal.r.e(message, "message");
        if (this$0.getF4262a().isDestroyed() || this$0.getF4262a().isFinishing()) {
            return;
        }
        switch (a.f4268a[eventType.ordinal()]) {
            case 1:
                if (this$0.i().invoke(eventType).booleanValue() && this$0.i == null) {
                    Dialog jCommonDialog = AppUtils.k() ? new JCommonDialog(this$0.getF4262a(), new JCommonDialog.DialogParams(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_close_engine), "", null, null, null, null, false)) : new AlertDialog.Builder(this$0.getF4262a()).setMessage(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_close_engine)).setCancelable(false).create();
                    this$0.i = jCommonDialog;
                    if (jCommonDialog != null) {
                        jCommonDialog.show();
                        break;
                    }
                }
                break;
            case 2:
                this$0.g(this$0.i);
                break;
            case 3:
                if (this$0.i().invoke(eventType).booleanValue() && this$0.f4267h == null) {
                    JCommonDialog.a aVar = JCommonDialog.f3401d;
                    androidx.appcompat.app.d f4262a = this$0.getF4262a();
                    String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_continue_complete_exam_title);
                    kotlin.jvm.internal.r.d(strA, "getString(R.string.k3set…inue_complete_exam_title)");
                    String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_continue_complete_exam);
                    kotlin.jvm.internal.r.d(strA2, "getString(R.string.k3set…n_continue_complete_exam)");
                    Dialog dialogA = aVar.a(f4262a, strA, strA2, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.z
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            K3ExamDialogLogic.z(childStepData, view);
                        }
                    });
                    this$0.f4267h = dialogA;
                    if (dialogA != null) {
                        dialogA.show();
                        break;
                    }
                }
                break;
            case 4:
                this$0.g(this$0.f4267h);
                break;
            case 5:
                if (this$0.i().invoke(eventType).booleanValue() && this$0.f4263d == null) {
                    JCommonDialog.a aVar2 = JCommonDialog.f3401d;
                    androidx.appcompat.app.d f4262a2 = this$0.getF4262a();
                    String strA3 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_open_engine);
                    kotlin.jvm.internal.r.d(strA3, "getString(R.string.k3setting_open_engine)");
                    String strA4 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_skip);
                    kotlin.jvm.internal.r.d(strA4, "getString(R.string.k3setting_btn_skip)");
                    Dialog dialogA2 = aVar2.a(f4262a2, strA3, strA4, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.b0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            K3ExamDialogLogic.A(childStepData, view);
                        }
                    });
                    this$0.f4263d = dialogA2;
                    if (dialogA2 != null) {
                        dialogA2.show();
                        break;
                    }
                }
                break;
            case 6:
                this$0.g(this$0.f4263d);
                break;
            case 7:
                if (this$0.i().invoke(eventType).booleanValue() && this$0.f4264e == null) {
                    JCommonDialog.a aVar3 = JCommonDialog.f3401d;
                    androidx.appcompat.app.d f4262a3 = this$0.getF4262a();
                    String strA5 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_start_fingerprint);
                    kotlin.jvm.internal.r.d(strA5, "getString(R.string.k3setting_start_fingerprint)");
                    String strA6 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_skip);
                    kotlin.jvm.internal.r.d(strA6, "getString(R.string.k3setting_btn_skip)");
                    Dialog dialogA3 = aVar3.a(f4262a3, strA5, strA6, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.v
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            K3ExamDialogLogic.B(childStepData, view);
                        }
                    });
                    this$0.f4264e = dialogA3;
                    if (dialogA3 != null) {
                        dialogA3.show();
                        break;
                    }
                }
                break;
            case 8:
                this$0.g(this$0.f4264e);
                break;
            case 9:
                if (this$0.i().invoke(eventType).booleanValue() && this$0.f4265f == null) {
                    JCommonDialog.a aVar4 = JCommonDialog.f3401d;
                    androidx.appcompat.app.d f4262a4 = this$0.getF4262a();
                    String strA7 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_start_around_car);
                    kotlin.jvm.internal.r.d(strA7, "getString(R.string.k3setting_start_around_car)");
                    String strA8 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_skip);
                    kotlin.jvm.internal.r.d(strA8, "getString(R.string.k3setting_btn_skip)");
                    Dialog dialogA4 = aVar4.a(f4262a4, strA7, strA8, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.a0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            K3ExamDialogLogic.C(childStepData, view);
                        }
                    });
                    this$0.f4265f = dialogA4;
                    if (dialogA4 != null) {
                        dialogA4.show();
                        break;
                    }
                }
                break;
            case 10:
                this$0.g(this$0.f4265f);
                break;
            case 11:
                if (this$0.i().invoke(eventType).booleanValue() && this$0.f4266g == null) {
                    JCommonDialog.a aVar5 = JCommonDialog.f3401d;
                    androidx.appcompat.app.d f4262a5 = this$0.getF4262a();
                    String strA9 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_start_three_touch);
                    kotlin.jvm.internal.r.d(strA9, "getString(R.string.k3setting_start_three_touch)");
                    String strA10 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_skip);
                    kotlin.jvm.internal.r.d(strA10, "getString(R.string.k3setting_btn_skip)");
                    Dialog dialogA5 = aVar5.a(f4262a5, strA9, strA10, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.w
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            K3ExamDialogLogic.D(childStepData, view);
                        }
                    });
                    this$0.f4266g = dialogA5;
                    if (dialogA5 != null) {
                        dialogA5.show();
                        break;
                    }
                }
                break;
            case 12:
                this$0.g(this$0.f4266g);
                break;
            case 13:
                this$0.l().invoke();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ChildStepData childStepData, View view) {
        kotlin.jvm.internal.r.e(childStepData, "$childStepData");
        childStepData.setFinish();
    }

    public final void e() {
        ShangCheStepData shangCheStepData = this.k;
        if (shangCheStepData != null) {
            shangCheStepData.setShangCheEventCallBack(null);
        }
        this.k = null;
        ChaoCheStateData chaoCheStateData = this.l;
        if (chaoCheStateData != null) {
            chaoCheStateData.dialogCallback = null;
        }
        this.l = null;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final androidx.appcompat.app.d getF4262a() {
        return this.f4262a;
    }

    public final Function1<ShangCheStepData.EventType, Boolean> i() {
        return this.c;
    }

    public final androidx.lifecycle.a0<ChaoCheStateData> j() {
        return this.n;
    }

    public final androidx.lifecycle.a0<ShangCheStepData> k() {
        return this.m;
    }

    public final Function0<kotlin.v> l() {
        return this.b;
    }

    public final void w(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler) {
        kotlin.jvm.internal.r.e(stepHandler, "stepHandler");
        if (stepHandler.j()) {
            Step step = stepHandler.f3142e;
            if (step == Step.K3_ShangChe) {
                d();
            } else if (step == Step.K3_ChaoChe) {
                f();
            }
        }
    }

    public final void x() {
        ShangCheStepData shangCheStepData = this.k;
        if (shangCheStepData == null) {
            return;
        }
        shangCheStepData.resume();
    }
}
