package cn.mucang.android.jiakaoyi.teachingk2.autoshuttle;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationPathModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "it", "", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class AutoDriveMgr$startAutoDrive$1 extends Lambda implements Function1<List<? extends NavigationPathModel>, v> {
    public static final AutoDriveMgr$startAutoDrive$1 INSTANCE = new AutoDriveMgr$startAutoDrive$1();

    AutoDriveMgr$startAutoDrive$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-2, reason: not valid java name */
    public static final void m34invoke$lambda2(List it, final JLoadingDialog loadingDialog) {
        kotlin.jvm.internal.r.e(it, "$it");
        kotlin.jvm.internal.r.e(loadingDialog, "$loadingDialog");
        AutoDriveMgr autoDriveMgr = AutoDriveMgr.f6233a;
        AutoDriveMgr.f6235e = ((NavigationPathModel) kotlin.collections.s.c0(it)).getPosList();
        if (AutoDriveMgr.f6235e != null) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.h(AutoDriveHelper.f6264a.b(AutoDriveMgr.f6235e), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.f
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoDriveMgr$startAutoDrive$1.m35invoke$lambda2$lambda1(loadingDialog, (Boolean) obj);
                }
            });
            return;
        }
        autoDriveMgr.z("drivePath = null !!!");
        loadingDialog.dismiss();
        String strA = k0.a(R.string.teachbase_get_driving_route_fail);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…e_get_driving_route_fail)");
        autoDriveMgr.C(false, strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-2$lambda-1, reason: not valid java name */
    public static final void m35invoke$lambda2$lambda1(final JLoadingDialog loadingDialog, final Boolean bool) {
        kotlin.jvm.internal.r.e(loadingDialog, "$loadingDialog");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.g
            @Override // java.lang.Runnable
            public final void run() {
                AutoDriveMgr$startAutoDrive$1.m36invoke$lambda2$lambda1$lambda0(loadingDialog, bool);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-2$lambda-1$lambda-0, reason: not valid java name */
    public static final void m36invoke$lambda2$lambda1$lambda0(JLoadingDialog loadingDialog, Boolean ret) {
        kotlin.jvm.internal.r.e(loadingDialog, "$loadingDialog");
        loadingDialog.dismiss();
        kotlin.jvm.internal.r.d(ret, "ret");
        if (!ret.booleanValue()) {
            AutoDriveMgr autoDriveMgr = AutoDriveMgr.f6233a;
            String strA = k0.a(R.string.teachbase_send_driving_route_fail);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…_send_driving_route_fail)");
            autoDriveMgr.C(false, strA);
            return;
        }
        AutoDriveMgr autoDriveMgr2 = AutoDriveMgr.f6233a;
        AutoDriveMgr.b = 0;
        String strA2 = k0.a(R.string.teachbase_send_driving_route_success);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teach…nd_driving_route_success)");
        autoDriveMgr2.C(true, strA2);
        autoDriveMgr2.A();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(List<? extends NavigationPathModel> list) {
        invoke2((List<NavigationPathModel>) list);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final List<NavigationPathModel> it) {
        kotlin.jvm.internal.r.e(it, "it");
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b(k0.a(R.string.teachbase_send_driving_route));
        jLoadingDialog.setCancelable(false);
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.f6211a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.h
            @Override // java.lang.Runnable
            public final void run() {
                AutoDriveMgr$startAutoDrive$1.m34invoke$lambda2(it, jLoadingDialog);
            }
        });
    }
}
