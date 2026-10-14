package cn.mucang.android.jiakaoyi.teachingk2.autoshuttle;

import android.app.Activity;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotError;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotMode;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.AutoPilotState;
import cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.model.CarCheckResult;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationApi;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationPathModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0016J\r\u0010\u001f\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010 J9\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00132'\u0010#\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020%0\u0012¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u001c0$H\u0002J3\u0010)\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00132!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\u001c0$H\u0016J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u000bH\u0002J\b\u0010.\u001a\u00020\u001cH\u0002J\u001a\u0010/\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00132\b\u00100\u001a\u0004\u0018\u00010\rH\u0016J\u0018\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u0002032\u0006\u0010-\u001a\u00020\u000bH\u0002J\b\u00104\u001a\u00020\u001cH\u0016J\b\u00105\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/IAutoDriveMgr;", "()V", "AUTO_DRIVE_END", "", "AUTO_DRIVE_IDLE", "AUTO_DRIVE_ING", "AUTO_DRIVE_PAUSE_BRAKE", "AUTO_DRIVE_PAUSE_GPS", "AUTO_DRIVE_START", "TAG", "", "driveCallBack", "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/IAutoDriveCallBack;", "driveErrorCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseError;", "drivePath", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "driveState", "driveStateCallback", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseState;", "naviApi", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationApi;", "checkPreCondition", "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/model/CarCheckResult;", "errorCall", "", "errorMsg", "getAutoDriveState", "getDistanceXpath", "()Ljava/lang/Integer;", "getDrivePath", "dest", "driveAction", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "paths", "getDrivePathLength", "call", "length", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "registerDriveObserver", "startAutoDrive", "callBack", "startCall", "state", "", "stopAutoDrive", "unregisterDriveObserver", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoDriveMgr {
    private static volatile int b = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static IAutoDriveCallBack f6234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile List<? extends Pos> f6235e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoDriveMgr f6233a = new AutoDriveMgr();
    private static final NavigationApi c = new NavigationApi();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c> f6236f = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.d
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            AutoDriveMgr.i((cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c) obj);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b> f6237g = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.j
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            AutoDriveMgr.h((cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b) obj);
        }
    };

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6238a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[AutoPilotMode.values().length];
            iArr[AutoPilotMode.Running.ordinal()] = 1;
            iArr[AutoPilotMode.Manual.ordinal()] = 2;
            iArr[AutoPilotMode.Pending.ordinal()] = 3;
            f6238a = iArr;
            int[] iArr2 = new int[AutoPilotError.values().length];
            iArr2[AutoPilotError.Normal.ordinal()] = 1;
            iArr2[AutoPilotError.DriveEnd.ordinal()] = 2;
            iArr2[AutoPilotError.RadarBrake.ordinal()] = 3;
            iArr2[AutoPilotError.GPS.ordinal()] = 4;
            iArr2[AutoPilotError.GPSRecover.ordinal()] = 5;
            iArr2[AutoPilotError.RadarBrakeRecover.ordinal()] = 6;
            b = iArr2;
        }
    }

    private AutoDriveMgr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        Tiger.j(f6236f, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c.class);
        Tiger.j(f6237g, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(final boolean z, final String str) {
        u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.a
            @Override // java.lang.Runnable
            public final void run() {
                AutoDriveMgr.D(str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(String msg, boolean z) {
        kotlin.jvm.internal.r.e(msg, "$msg");
        f6233a.z(msg);
        com.blankj.utilcode.util.k.m(msg, new Object[0]);
        IAutoDriveCallBack iAutoDriveCallBack = f6234d;
        if (iAutoDriveCallBack == null) {
            return;
        }
        iAutoDriveCallBack.c(z, msg);
    }

    private final void F() {
        Tiger.l(f6236f, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c.class);
        Tiger.l(f6237g, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b bVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("自动驾驶异常回调：", bVar.b.desc));
        AutoPilotError autoPilotError = bVar.b;
        switch (autoPilotError == null ? -1 : a.b[autoPilotError.ordinal()]) {
            case 1:
                break;
            case 2:
                f6233a.E();
                b = 4;
                IAutoDriveCallBack iAutoDriveCallBack = f6234d;
                if (iAutoDriveCallBack != null) {
                    iAutoDriveCallBack.b();
                    break;
                }
                break;
            case 3:
                b = 2;
                String msg = k0.a(R.string.teachbase_brake_wait_leave_continue);
                IAutoDriveCallBack iAutoDriveCallBack2 = f6234d;
                if (iAutoDriveCallBack2 != null) {
                    kotlin.jvm.internal.r.d(msg, "msg");
                    iAutoDriveCallBack2.d(msg);
                    break;
                }
                break;
            case 4:
                b = 1;
                String msg2 = k0.a(R.string.teachbase_gps_weak_stop_auto_drive);
                IAutoDriveCallBack iAutoDriveCallBack3 = f6234d;
                if (iAutoDriveCallBack3 != null) {
                    kotlin.jvm.internal.r.d(msg2, "msg");
                    iAutoDriveCallBack3.d(msg2);
                    break;
                }
                break;
            case 5:
            case 6:
                b = 3;
                IAutoDriveCallBack iAutoDriveCallBack4 = f6234d;
                if (iAutoDriveCallBack4 != null) {
                    iAutoDriveCallBack4.a(bVar.b.desc);
                    break;
                }
                break;
            default:
                AutoDriveMgr autoDriveMgr = f6233a;
                autoDriveMgr.E();
                AutoPilotError autoPilotError2 = bVar.b;
                String msg3 = autoPilotError2.desc;
                if (autoPilotError2 == AutoPilotError.OtherBrake && BrakeGlobalMonitor.a().getReason() != BrakeReason.None) {
                    msg3 = BrakeGlobalMonitor.a().getReason().getTitle();
                }
                if (bVar.b == AutoPilotError.P0Error) {
                    ModuleStatusMonitor moduleStatusMonitor = ModuleStatusMonitor.f7799a;
                    CheckModuleStatus checkModuleStatusA = moduleStatusMonitor.a();
                    if (n0.g(checkModuleStatusA == null ? null : checkModuleStatusA.getTitle())) {
                        CheckModuleStatus checkModuleStatusA2 = moduleStatusMonitor.a();
                        msg3 = checkModuleStatusA2 == null ? null : checkModuleStatusA2.getTitle();
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("P0故障：", msg3));
                    }
                }
                kotlin.jvm.internal.r.d(msg3, "msg");
                autoDriveMgr.j(msg3);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c cVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("自动驾驶状态回调：", cVar.b.desc));
        AutoPilotMode autoPilotMode = cVar.b;
        if ((autoPilotMode == null ? -1 : a.f6238a[autoPilotMode.ordinal()]) != 1) {
            return;
        }
        b = 3;
        IAutoDriveCallBack iAutoDriveCallBack = f6234d;
        if (iAutoDriveCallBack == null) {
            return;
        }
        iAutoDriveCallBack.e();
    }

    private final void j(final String str) {
        u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.c
            @Override // java.lang.Runnable
            public final void run() {
                AutoDriveMgr.k(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(String errorMsg) {
        kotlin.jvm.internal.r.e(errorMsg, "$errorMsg");
        f6233a.z(errorMsg);
        com.blankj.utilcode.util.k.m(errorMsg, new Object[0]);
        IAutoDriveCallBack iAutoDriveCallBack = f6234d;
        if (iAutoDriveCallBack == null) {
            return;
        }
        iAutoDriveCallBack.onError(errorMsg);
    }

    private final void n(final Pos pos, final Function1<? super List<NavigationPathModel>, v> function1) {
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b(k0.a(R.string.teachbase_planning_route));
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.e
            @Override // java.lang.Runnable
            public final void run() {
                AutoDriveMgr.o(pos, jLoadingDialog, function1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(Pos dest, JLoadingDialog loadingDialog, final Function1 driveAction) {
        kotlin.jvm.internal.r.e(dest, "$dest");
        kotlin.jvm.internal.r.e(loadingDialog, "$loadingDialog");
        kotlin.jvm.internal.r.e(driveAction, "$driveAction");
        try {
            try {
                Pos start = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
                f6233a.z("获取导航路线：起点(" + start.x + ',' + start.y + ") 终点(" + dest.x + ',' + dest.y + ')');
                NavigationApi navigationApi = c;
                kotlin.jvm.internal.r.d(start, "start");
                final List<NavigationPathModel> listM = navigationApi.m(start, dest);
                u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutoDriveMgr.p(listM, driveAction);
                    }
                });
            } catch (Exception e2) {
                AutoDriveMgr autoDriveMgr = f6233a;
                String strD = q0.d(e2);
                kotlin.jvm.internal.r.d(strD, "getStackTrace(e)");
                autoDriveMgr.z(strD);
                if (e2 instanceof ApiException) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                    String strA = k0.a(R.string.teachbase_planning_route_fail_msg);
                    kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…_planning_route_fail_msg)");
                    String str = String.format(strA, Arrays.copyOf(new Object[]{((ApiException) e2).getApiResponse().getMessage()}, 1));
                    kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
                    autoDriveMgr.C(false, str);
                } else {
                    String strA2 = k0.a(R.string.teachbase_planning_route_fail);
                    kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_planning_route_fail)");
                    autoDriveMgr.C(false, strA2);
                }
            }
        } finally {
            loadingDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(List list, Function1 driveAction) {
        kotlin.jvm.internal.r.e(driveAction, "$driveAction");
        if (!(list == null || list.isEmpty())) {
            driveAction.invoke(list);
            return;
        }
        AutoDriveMgr autoDriveMgr = f6233a;
        String strA = k0.a(R.string.teachbase_no_navigation_route);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_no_navigation_route)");
        autoDriveMgr.C(false, strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Pos dest, Function1 call) {
        kotlin.jvm.internal.r.e(dest, "$dest");
        kotlin.jvm.internal.r.e(call, "$call");
        try {
            Pos start = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
            NavigationApi navigationApi = c;
            kotlin.jvm.internal.r.d(start, "start");
            List<NavigationPathModel> listM = navigationApi.m(start, dest);
            if (listM == null || listM.isEmpty()) {
                call.invoke(-1);
            } else {
                List<Pos> posList = ((NavigationPathModel) kotlin.collections.s.c0(listM)).getPosList();
                call.invoke(Integer.valueOf(AutoDriveHelper.e(AutoDriveHelper.f6264a, posList.get(0), posList, 0.0d, 4, null)));
            }
        } catch (Exception e2) {
            call.invoke(-1);
            AutoDriveMgr autoDriveMgr = f6233a;
            String strD = q0.d(e2);
            kotlin.jvm.internal.r.d(strD, "getStackTrace(e)");
            autoDriveMgr.z(strD);
            if (e2 instanceof ApiException) {
                autoDriveMgr.z(kotlin.jvm.internal.r.m("路线获取失败: ", ((ApiException) e2).getApiResponse().getMessage()));
            } else {
                autoDriveMgr.z("路线获取失败");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("AutoDriveMgr: ", str));
    }

    public void B(Pos dest, IAutoDriveCallBack iAutoDriveCallBack) {
        kotlin.jvm.internal.r.e(dest, "dest");
        f6234d = iAutoDriveCallBack;
        CarCheckResult carCheckResultG = g();
        if (carCheckResultG.getF6265a()) {
            n(dest, AutoDriveMgr$startAutoDrive$1.INSTANCE);
            return;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_cant_start_auto_drive);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…se_cant_start_auto_drive)");
        String b2 = carCheckResultG.getB();
        kotlin.jvm.internal.r.c(b2);
        String str = String.format(strA, Arrays.copyOf(new Object[]{b2}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        C(false, str);
    }

    public void E() {
        F();
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, null);
        b = -1;
        f6235e = null;
    }

    public CarCheckResult g() {
        return AutoDriveHelper.f6264a.a();
    }

    public int l() {
        return b;
    }

    public Integer m() {
        int iE;
        if (f6235e != null) {
            AutoDriveHelper autoDriveHelper = AutoDriveHelper.f6264a;
            Pos pos = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
            kotlin.jvm.internal.r.d(pos, "signal().carPos.center");
            List<? extends Pos> list = f6235e;
            kotlin.jvm.internal.r.c(list);
            iE = AutoDriveHelper.e(autoDriveHelper, pos, list, 0.0d, 4, null);
            z("剩余路线长度：" + iE + "厘米");
        } else {
            iE = -1;
        }
        return Integer.valueOf(iE);
    }

    public void q(final Pos dest, final Function1<? super Integer, v> call) {
        kotlin.jvm.internal.r.e(dest, "dest");
        kotlin.jvm.internal.r.e(call, "call");
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.i
            @Override // java.lang.Runnable
            public final void run() {
                AutoDriveMgr.r(dest, call);
            }
        });
    }
}
