package cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant;
import cn.mucang.android.jiakaoyi.teachingk2.assist.dialog.AssistingDialog;
import cn.mucang.android.jiakaoyi.teachingk2.assist.intercept.ErrorEventInterceptor;
import cn.mucang.android.jiakaoyi.teachingk2.assist.intercept.HardwareErrorHandler;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CtrSpeedAssistModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityTtsMgr;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010\u001d\u001a\u00020\u0017H\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0016J\u0018\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0013H\u0002J\u0012\u0010!\u001a\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u0013H\u0002J\b\u0010\"\u001a\u00020\u0017H\u0002J\b\u0010#\u001a\u00020\u0017H\u0016J\b\u0010$\u001a\u00020\u0017H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0005H\u0002J\b\u0010'\u001a\u00020\u0017H\u0002J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\u0005H\u0002J\b\u0010*\u001a\u00020\u0017H\u0016J\b\u0010+\u001a\u00020\u0017H\u0002J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0005H\u0016J\u0018\u0010,\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "()V", "KEY_USER_FIRST_ENTER", "", "SP_NAME", "TAG", "askDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog;", "assistingDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistingDialog;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;", "carStateDialog", "carStopChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CarStopChecker;", "isAssisting", "", "needAsk", "onEndDialogDismiss", "Lkotlin/Function0;", "", "onEndDialogShow", "sp", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "unityStart", "checkFirstEnterCtrSpeedPage", "isSupportAssist", "notifyUnity", "showBubble", "notifyUnityStart", "notifyUnityStop", "onEnter", "onExit", "realStop", "reason", "showCarStateTipDialog", "showFirstEnterDialog", "record", TtmlNode.START, "startInner", "stop", "sendOrder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CtrSpeedAssistMgr extends AbsAssistant implements a0.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f6130g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AssistingDialog f6131h;
    private static JCommonDialog i;
    private static JCommonDialog j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CtrSpeedAssistMgr f6128e = new CtrSpeedAssistMgr();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final SharedPreferences f6129f = j0.b("usr_record");
    private static boolean k = true;
    private static boolean l = true;
    private static final CarStopChecker m = new CarStopChecker(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$carStopChecker$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            invoke2();
            return v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            CtrSpeedAssistMgr ctrSpeedAssistMgr = CtrSpeedAssistMgr.f6128e;
            String strA = k0.a(R.string.teachbase_car_stop);
            r.d(strA, "getString(R.string.teachbase_car_stop)");
            ctrSpeedAssistMgr.m0(strA);
        }
    });
    private static final cn.mucang.android.jiakaoyi.framework.h.b<UnityRecordModel> n = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.d
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            CtrSpeedAssistMgr.L((UnityRecordModel) obj);
        }
    };
    private static final Function0<v> o = new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$onEndDialogShow$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            invoke2();
            return v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            CtrSpeedAssistMgr.f6128e.a0();
        }
    };
    private static final Function0<v> p = new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$onEndDialogDismiss$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            invoke2();
            return v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            CtrSpeedAssistMgr ctrSpeedAssistMgr = CtrSpeedAssistMgr.f6128e;
            CtrSpeedAssistMgr.Z(ctrSpeedAssistMgr, false, 1, null);
            ctrSpeedAssistMgr.u(null);
            CtrSpeedAssistMgr.f6130g = false;
            ErrorEventInterceptor.b.d(ctrSpeedAssistMgr);
        }
    };

    /* JADX WARN: Illegal instructions before constructor call */
    private CtrSpeedAssistMgr() {
        String strA = k0.a(R.string.teachbase_speed_subsidiary);
        r.d(strA, "getString(R.string.teachbase_speed_subsidiary)");
        super(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(UnityRecordModel unityRecordModel) {
        if (r.a(unityRecordModel.id, "211") && unityRecordModel.c == 4000) {
            CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
            ctrSpeedAssistMgr.m("进入控速练习页面");
            ctrSpeedAssistMgr.M();
        }
    }

    private final void M() {
        if (O() && l) {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.g
                @Override // java.lang.Runnable
                public final void run() {
                    CtrSpeedAssistMgr.N();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N() {
        String string = f6129f.getString("key_user_first_enter", "");
        if (TextUtils.isEmpty(string)) {
            CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
            String strC = AccountUtils.c();
            r.c(strC);
            ctrSpeedAssistMgr.f0(strC);
            return;
        }
        r.c(string);
        if (CollectionsKt___CollectionsKt.S(StringsKt__StringsKt.p0(string, new String[]{","}, false, 0, 6, null), AccountUtils.c())) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) string);
        sb.append(',');
        sb.append((Object) AccountUtils.c());
        f6128e.f0(sb.toString());
    }

    private final void X(boolean z, boolean z2) {
        k = z2;
        CtrSpeedAssistModel ctrSpeedAssistModel = new CtrSpeedAssistModel();
        ctrSpeedAssistModel.playHelperTip = z;
        ctrSpeedAssistModel.state = !z2 ? 1 : 0;
        f6128e.m(r.m("notifyUnity: ", z2 ? "空闲" : "辅助中"));
        cn.mucang.android.jiakaoyi.unity.c.d.e(ctrSpeedAssistModel);
    }

    private final void Y(boolean z) {
        if (k) {
            return;
        }
        X(z, true);
        UnityTtsMgr.a(true);
    }

    static /* synthetic */ void Z(CtrSpeedAssistMgr ctrSpeedAssistMgr, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        ctrSpeedAssistMgr.Y(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0() {
        if (k) {
            X(false, false);
            UnityTtsMgr.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0(String str) {
        m.e();
        AssistingDialog assistingDialog = f6131h;
        if (assistingDialog != null) {
            assistingDialog.dismiss();
        }
        v(str, o, p);
        HardwareErrorHandler.b.d(this);
    }

    private final void c0() {
        JCommonDialog jCommonDialog = j;
        if (jCommonDialog != null) {
            jCommonDialog.dismiss();
        }
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        String strA = k0.a(R.string.teachbase_speed_subsidiary_tips);
        String strA2 = k0.a(R.string.teachbase_stop_and_start_engine);
        String strA3 = k0.a(R.string.teachbase_dialog_button_cancel);
        String strA4 = k0.a(R.string.teachbase_dialog_button_confirm);
        i iVar = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CtrSpeedAssistMgr.d0(view);
            }
        };
        e eVar = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CtrSpeedAssistMgr.e0(view);
            }
        };
        r.d(strA2, "getString(R.string.teach…se_stop_and_start_engine)");
        JCommonDialog jCommonDialog2 = new JCommonDialog(activityI, new JCommonDialog.DialogParams(strA, strA2, strA3, iVar, strA4, eVar, false, null, false, false, 384, null));
        j = jCommonDialog2;
        if (jCommonDialog2 == null) {
            return;
        }
        jCommonDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(View view) {
        Z(f6128e, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(View view) {
        CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
        if (ctrSpeedAssistMgr.d()) {
            JCommonDialog jCommonDialog = j;
            if (jCommonDialog != null) {
                jCommonDialog.dismiss();
            }
            ctrSpeedAssistMgr.l0();
        }
    }

    private final void f0(String str) {
        a0();
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.c
            @Override // java.lang.Runnable
            public final void run() {
                CtrSpeedAssistMgr.g0();
            }
        });
        f6129f.edit().putString("key_user_first_enter", str).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0() {
        final String desc = k0.a(R.string.teachbase_first_speed_train);
        JCommonDialog jCommonDialog = i;
        if (jCommonDialog != null) {
            jCommonDialog.dismiss();
        }
        CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        String strA = k0.a(R.string.teachbase_need_help);
        String strA2 = k0.a(R.string.teachbase_dialog_button_cancel);
        String strA3 = k0.a(R.string.teachbase_dialog_button_confirm);
        h hVar = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CtrSpeedAssistMgr.h0(view);
            }
        };
        b bVar = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CtrSpeedAssistMgr.i0(view);
            }
        };
        r.d(desc, "desc");
        JCommonDialog jCommonDialog2 = new JCommonDialog(activityI, new JCommonDialog.DialogParams(strA, desc, strA2, hVar, strA3, bVar, false, null, false, false, 384, null));
        i = jCommonDialog2;
        if (jCommonDialog2 != null) {
            jCommonDialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.f
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    CtrSpeedAssistMgr.j0(desc, dialogInterface);
                }
            });
        }
        JCommonDialog jCommonDialog3 = i;
        if (jCommonDialog3 != null) {
            jCommonDialog3.show();
        }
        ctrSpeedAssistMgr.A(desc);
        TtsManager.r(desc, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(View view) {
        CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
        l = false;
        ctrSpeedAssistMgr.Y(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(View view) {
        CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
        l = false;
        ctrSpeedAssistMgr.k0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(String desc, DialogInterface dialogInterface) {
        CtrSpeedAssistMgr ctrSpeedAssistMgr = f6128e;
        r.d(desc, "desc");
        ctrSpeedAssistMgr.A(desc);
    }

    private final void l0() {
        m("开始控速辅助");
        AbsAssistant.s(this, 2, 0, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$startInner$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                JCommonDialog jCommonDialog = CtrSpeedAssistMgr.i;
                if (jCommonDialog != null) {
                    jCommonDialog.dismiss();
                }
                JCommonDialog jCommonDialog2 = CtrSpeedAssistMgr.j;
                if (jCommonDialog2 != null) {
                    jCommonDialog2.dismiss();
                }
                AssistingDialog assistingDialog = CtrSpeedAssistMgr.f6131h;
                if (assistingDialog != null) {
                    assistingDialog.dismiss();
                }
                CtrSpeedAssistMgr ctrSpeedAssistMgr = CtrSpeedAssistMgr.f6128e;
                Activity activityI = MucangConfig.i();
                r.d(activityI, "getCurrentActivity()");
                String strA = k0.a(R.string.teachbase_speed_subsidiary_ing);
                r.d(strA, "getString(R.string.teachbase_speed_subsidiary_ing)");
                String strA2 = k0.a(R.string.teachbase_app_help_speed_done);
                r.d(strA2, "getString(R.string.teachbase_app_help_speed_done)");
                CtrSpeedAssistMgr.f6131h = new AssistingDialog(activityI, strA, strA2, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$startInner$1.1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        AbsAssistant.s(CtrSpeedAssistMgr.f6128e, 2, 1, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr.startInner.1.1.1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ v invoke() {
                                invoke2();
                                return v.f15822a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                HardwareErrorHandler.b.h();
                                CtrSpeedAssistMgr.f6128e.x(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr.startInner.1.1.1.1
                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ v invoke() {
                                        invoke2();
                                        return v.f15822a;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2() {
                                        CtrSpeedAssistMgr.m.d();
                                    }
                                });
                                TtsManager.r(k0.a(R.string.teachbase_speed_controls_3), TtsGrade.Teach);
                            }
                        }, null, 8, null);
                    }
                }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$startInner$1.2
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        CtrSpeedAssistMgr ctrSpeedAssistMgr2 = CtrSpeedAssistMgr.f6128e;
                        String strA3 = k0.a(R.string.teachbase_user_terminate);
                        r.d(strA3, "getString(R.string.teachbase_user_terminate)");
                        ctrSpeedAssistMgr2.m0(strA3);
                    }
                });
                AssistingDialog assistingDialog2 = CtrSpeedAssistMgr.f6131h;
                if (assistingDialog2 != null) {
                    assistingDialog2.show();
                }
                CtrSpeedAssistMgr.f6130g = true;
                ErrorEventInterceptor.b.b(this.this$0);
                HardwareErrorHandler.b.b(this.this$0);
            }
        }, null, 8, null);
    }

    public boolean O() {
        if (!LocalConfigManager.f(LocalConfig.AutoAssist)) {
            m("自动辅助开关关闭");
            return false;
        }
        if (!AppUtils.c()) {
            return true;
        }
        m("北斗无控速辅助功能");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        Tiger.j(n, UnityRecordModel.class);
        l = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
    public boolean k() {
        return f6130g;
    }

    public void k0() {
        if (e()) {
            if (f6130g) {
                m("正在控速辅助中...");
                return;
            }
            a0();
            if (d()) {
                l0();
                return;
            }
            JCommonDialog jCommonDialog = i;
            if (jCommonDialog != null) {
                r.c(jCommonDialog);
                if (jCommonDialog.isShowing()) {
                    return;
                }
            }
            c0();
        }
    }

    public void m0(String reason) {
        r.e(reason, "reason");
        y(reason, true);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        Tiger.l(n, UnityRecordModel.class);
        UnityTtsMgr.a(true);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
    public void y(final String reason, boolean z) {
        r.e(reason, "reason");
        m("结束控速辅助, 理由: " + reason + ", isAssisting: " + f6130g);
        HardwareErrorHandler.b.i();
        z();
        if (f()) {
            if (z) {
                AbsAssistant.s(this, 2, 2, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr$stop$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        CtrSpeedAssistMgr.f6128e.b0(reason);
                    }
                }, null, 8, null);
            } else {
                b0(reason);
            }
        }
    }
}
