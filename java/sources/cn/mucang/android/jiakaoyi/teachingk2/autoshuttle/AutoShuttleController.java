package cn.mucang.android.jiakaoyi.teachingk2.autoshuttle;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import android.view.View;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachEndDialog;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleCancelModel;
import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleGetDisModel;
import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleStartModel;
import cn.mucang.jiakaoyi.uilib.socket.u;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0011H\u0002J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0011H\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u0011J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J4\u0010\u001f\u001a\u00020\u001b2\b\b\u0002\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\u001b2\b\b\u0002\u0010!\u001a\u00020\u0004J\u000e\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u0004J\u0010\u0010)\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0010\u0010*\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0006\u0010+\u001a\u00020\u001bJ\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u0018H\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;", "", "()V", "DESC_END", "", "kotlin.jvm.PlatformType", "DESC_ING", "DESC_START", "START_SHUTTLE_FAIL", "", "START_SHUTTLE_SUCCESS", "TAG", "areaId", "", "driveDialog", "Landroid/app/Dialog;", "isDrivingDialogShowing", "", "isInited", "reporter", "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;", "shuttleId", "checkCurActivity", "getDestPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "toast", "init", "", "isAutoDriveState", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "showDialog", "title", SocialConstants.PARAM_APP_DESC, "btn", "tts", "btnClickListener", "Landroid/view/View$OnClickListener;", "showDrivingDialog", "showEndDialog", "reason", "showErrorDialog", "showPauseDialog", "showStartDialog", "startAutoShuttle", "destPos", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoShuttleController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoShuttleController f6239a = new AutoShuttleController();
    private static final String b = k0.a(R.string.teachbase_order_ready_go_destination);
    private static final String c = k0.a(R.string.teachbase_order_going_destination);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Dialog f6240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f6241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f6242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f6243g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f6244h;
    private static AutoShuttleStateReporter i;

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$startAutoShuttle$1", "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/IAutoDriveCallBack;", "onDriving", "", "onEnd", "onError", SocialConstants.PARAM_SEND_MSG, "", "onPause", "onRecover", "onStart", "state", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements IAutoDriveCallBack {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.IAutoDriveCallBack
        public void a(String str) {
            AutoShuttleController autoShuttleController = AutoShuttleController.f6239a;
            autoShuttleController.v(kotlin.jvm.internal.r.m("AutoDrive onRecover: ", str));
            Dialog dialog = AutoShuttleController.f6240d;
            if (dialog != null) {
                dialog.dismiss();
            }
            kotlin.jvm.internal.r.c(str);
            autoShuttleController.y(str);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.IAutoDriveCallBack
        public void b() {
            AutoShuttleController autoShuttleController = AutoShuttleController.f6239a;
            autoShuttleController.v("AutoDrive onEnd");
            String strA = k0.a(R.string.teachbase_order_shuttle_end);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_order_shuttle_end)");
            autoShuttleController.B(strA);
            u.g(AutoShuttleController.f6242f, 0L, (byte) 1, (byte) 0);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.IAutoDriveCallBack
        public void c(boolean z, String msg) {
            kotlin.jvm.internal.r.e(msg, "msg");
            AutoShuttleController autoShuttleController = AutoShuttleController.f6239a;
            autoShuttleController.v("AutoDrive onStart " + z + ", msg: " + msg);
            if (z) {
                u.f(AutoShuttleController.f6242f, (byte) 1);
                AutoShuttleController.i.e(AutoShuttleController.f6242f);
            } else {
                u.f(AutoShuttleController.f6242f, (byte) 0);
                AutoShuttleController.i.f();
                autoShuttleController.C(msg);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.IAutoDriveCallBack
        public void d(String msg) {
            kotlin.jvm.internal.r.e(msg, "msg");
            AutoShuttleController autoShuttleController = AutoShuttleController.f6239a;
            autoShuttleController.v(kotlin.jvm.internal.r.m("AutoDrive onPause: ", msg));
            autoShuttleController.E(msg);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.IAutoDriveCallBack
        public void e() {
            AutoShuttleController autoShuttleController = AutoShuttleController.f6239a;
            autoShuttleController.v("AutoDrive onDriving");
            AutoShuttleController.z(autoShuttleController, null, 1, null);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.IAutoDriveCallBack
        public void onError(String msg) {
            kotlin.jvm.internal.r.e(msg, "msg");
            AutoShuttleController autoShuttleController = AutoShuttleController.f6239a;
            autoShuttleController.v(kotlin.jvm.internal.r.m("AutoDrive onError: ", msg));
            autoShuttleController.B(msg);
            AutoShuttleController.i.f();
            u.d(AutoShuttleController.f6242f);
        }
    }

    static {
        k0.a(R.string.teachbase_order_shuttle_end);
        f6242f = -1L;
        f6243g = -1L;
        i = new AutoShuttleStateReporter();
    }

    private AutoShuttleController() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(String desc, View view) {
        kotlin.jvm.internal.r.e(desc, "$desc");
        f6239a.v("showDrivingDialog: 取消接驳");
        u.d(f6242f);
        AutoDriveMgr.f6233a.E();
        if (TtsManager.m(desc)) {
            TtsManager.H();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(final String str) {
        String strA = k0.a(R.string.teachbase_dialog_button_sure);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_dialog_button_sure)");
        x(this, null, str, strA, str, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoShuttleController.D(str, view);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(String msg, View view) {
        kotlin.jvm.internal.r.e(msg, "$msg");
        if (TtsManager.m(msg)) {
            TtsManager.H();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(final String str) {
        String strA = k0.a(R.string.teachbase_cancel_shuttle);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_cancel_shuttle)");
        x(this, null, str, strA, str, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoShuttleController.F(str, view);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(String msg, View view) {
        kotlin.jvm.internal.r.e(msg, "$msg");
        f6239a.v("showPauseDialog: 取消接驳");
        u.d(f6242f);
        AutoDriveMgr.f6233a.E();
        if (TtsManager.m(msg)) {
            TtsManager.H();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(View view) {
        AutoShuttleController autoShuttleController = f6239a;
        autoShuttleController.v("showStartDialog: 取消接驳");
        AutoDriveMgr.f6233a.E();
        String DESC_START = b;
        kotlin.jvm.internal.r.d(DESC_START, "DESC_START");
        if (TtsManager.m(DESC_START)) {
            TtsManager.H();
        }
        String strA = k0.a(R.string.teachbase_user_cancel);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_user_cancel)");
        autoShuttleController.B(strA);
    }

    private final void I(Pos pos) {
        G();
        AutoDriveMgr.f6233a.B(pos, new a());
    }

    private final boolean h() {
        if (MucangConfig.i() != null) {
            return true;
        }
        v("curActivity == null");
        return false;
    }

    private final Pos i(long j, boolean z) {
        Pos posC = AutoDriveHelper.f6264a.c(j);
        if (posC != null) {
            return posC;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_cant_find_end_data);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_cant_find_end_data)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{Long.valueOf(j)}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        v(str);
        if (!z) {
            return null;
        }
        com.blankj.utilcode.util.k.m(str, new Object[0]);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(AutoShuttleController this$0, AutoShuttleStartModel autoShuttleStartModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AutoShuttleController autoShuttleController = f6239a;
        autoShuttleController.v("收到”自动接驳车“请求, shuttleId=" + autoShuttleStartModel.shuttleId + ", areaId=" + autoShuttleStartModel.areaId);
        if (!LocalConfigManager.f(LocalConfig.AutoTeach)) {
            String msg = k0.a(R.string.teachbase_auto_drive_off);
            kotlin.jvm.internal.r.d(msg, "msg");
            autoShuttleController.v(msg);
            com.blankj.utilcode.util.k.m(msg, new Object[0]);
            u.f(autoShuttleStartModel.shuttleId, (byte) 0);
            return;
        }
        if (autoShuttleController.n()) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_shuttle_auto_driving);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_shuttle_auto_driving)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{Long.valueOf(f6242f), Long.valueOf(f6243g)}, 2));
            kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
            autoShuttleController.v(str);
            com.blankj.utilcode.util.k.m(str, new Object[0]);
            u.f(autoShuttleStartModel.shuttleId, (byte) 0);
            return;
        }
        f6242f = autoShuttleStartModel.shuttleId;
        long j = autoShuttleStartModel.areaId;
        f6243g = j;
        Pos posI = autoShuttleController.i(j, true);
        if (posI != null) {
            autoShuttleController.I(posI);
        } else {
            u.f(f6242f, (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AutoShuttleCancelModel autoShuttleCancelModel) {
        AutoShuttleController autoShuttleController = f6239a;
        autoShuttleController.v(kotlin.jvm.internal.r.m("收到”取消自动接驳车“请求, shuttleId=", Long.valueOf(autoShuttleCancelModel.shuttleId)));
        if (!autoShuttleController.n()) {
            autoShuttleController.v("当前不在自动驾驶中，无需取消");
            return;
        }
        AutoDriveMgr.f6233a.E();
        String strA = k0.a(R.string.teachbase_user_cancel);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_user_cancel)");
        autoShuttleController.B(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(AutoShuttleGetDisModel autoShuttleGetDisModel) {
        AutoShuttleController autoShuttleController = f6239a;
        autoShuttleController.v(kotlin.jvm.internal.r.m("收到”获取车辆和接驳点的路线长度“请求, areaId=", Long.valueOf(autoShuttleGetDisModel.areaId)));
        Pos posI = autoShuttleController.i(autoShuttleGetDisModel.areaId, false);
        if (posI != null) {
            AutoDriveMgr.f6233a.q(posI, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.AutoShuttleController$init$3$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(Integer num) {
                    invoke(num.intValue());
                    return v.f15822a;
                }

                public final void invoke(int i2) {
                    u.e(AutoShuttleController.f6243g, i2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("AutoShuttleController: ", str));
    }

    private final void w(String str, String str2, String str3, String str4, View.OnClickListener onClickListener) {
        if (h()) {
            v(kotlin.jvm.internal.r.m("showDialog = ", str2));
            Dialog dialog = f6240d;
            if (dialog != null) {
                dialog.dismiss();
            }
            Activity activityI = MucangConfig.i();
            kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
            JCommonDialog jCommonDialog = new JCommonDialog(activityI, new JCommonDialog.DialogParams(str, str2, null, null, str3, onClickListener, false));
            f6240d = jCommonDialog;
            if (jCommonDialog != null) {
                jCommonDialog.show();
            }
            if (!TextUtils.isEmpty(str4)) {
                TtsManager.r(str4, TtsGrade.AutoTeach);
            }
            f6241e = TextUtils.equals(c, str4);
        }
    }

    static /* synthetic */ void x(AutoShuttleController autoShuttleController, String str, String str2, String str3, String str4, View.OnClickListener onClickListener, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = k0.a(R.string.teachbase_auto_shuttle);
            kotlin.jvm.internal.r.d(str, "getString(R.string.teachbase_auto_shuttle)");
        }
        autoShuttleController.w(str, str2, str3, str4, onClickListener);
    }

    public static /* synthetic */ void z(AutoShuttleController autoShuttleController, String DESC_ING, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            DESC_ING = c;
            kotlin.jvm.internal.r.d(DESC_ING, "DESC_ING");
        }
        autoShuttleController.y(DESC_ING);
    }

    public final void B(String reason) {
        kotlin.jvm.internal.r.e(reason, "reason");
        v(kotlin.jvm.internal.r.m("showEndDialog reason:", reason));
        Dialog dialog = f6240d;
        if (dialog != null) {
            dialog.dismiss();
        }
        String msg = k0.a(R.string.teachbase_shuttle_end_out);
        TtsManager.r(msg, TtsGrade.AutoTeach);
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_auto_drive_end_reason);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…se_auto_drive_end_reason)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{reason}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        kotlin.jvm.internal.r.d(msg, "msg");
        TeachEndDialog teachEndDialog = new TeachEndDialog(activityI, str, msg, 0);
        f6240d = teachEndDialog;
        if (teachEndDialog == null) {
            return;
        }
        teachEndDialog.show();
    }

    public final void G() {
        String DESC_START = b;
        kotlin.jvm.internal.r.d(DESC_START, "DESC_START");
        String strA = k0.a(R.string.teachbase_cancel_shuttle);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_cancel_shuttle)");
        x(this, null, DESC_START, strA, DESC_START, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoShuttleController.H(view);
            }
        }, 1, null);
    }

    public final void j() {
        if (f6244h) {
            return;
        }
        v("init");
        LiveBus.d(AutoShuttleStartModel.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoShuttleController.k(this.f6258a, (AutoShuttleStartModel) obj);
            }
        });
        LiveBus.d(AutoShuttleCancelModel.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.p
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoShuttleController.l((AutoShuttleCancelModel) obj);
            }
        });
        LiveBus.d(AutoShuttleGetDisModel.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoShuttleController.m((AutoShuttleGetDisModel) obj);
            }
        });
        f6244h = true;
    }

    public final boolean n() {
        int iL = AutoDriveMgr.f6233a.l();
        return iL == 0 || iL == 1 || iL == 2 || iL == 3;
    }

    public final void y(final String desc) {
        kotlin.jvm.internal.r.e(desc, "desc");
        if (f6241e) {
            return;
        }
        String strA = k0.a(R.string.teachbase_cancel_shuttle);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_cancel_shuttle)");
        x(this, null, desc, strA, desc, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoShuttleController.A(desc, view);
            }
        }, 1, null);
    }
}
