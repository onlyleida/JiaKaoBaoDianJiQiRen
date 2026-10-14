package cn.mucang.android.jiakaoyi.teachingk2.autoteach.check;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TypeChooseDialog;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.TeachRouteManager;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.CheckStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;", "routeManager", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;", "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;)V", "chooseDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TypeChooseDialog;", "initStatus", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;", "selectType", "", "waiting", "checkStatus", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "reset", "", "showDialog", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachRouteCheck extends BaseTeachCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TeachRouteManager f6266a;
    private final CheckStatusModel b;
    private final CheckStatusModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TypeChooseDialog f6267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6268e;

    public TeachRouteCheck(TeachRouteManager routeManager) {
        r.e(routeManager, "routeManager");
        this.f6266a = routeManager;
        CheckStatusModel checkStatusModel = new CheckStatusModel(AutoTeachStatus.CheckType);
        checkStatusModel.i(k0.a(R.string.teachbase_select_teach_type));
        v vVar = v.f15822a;
        this.b = checkStatusModel;
        this.c = new CheckStatusModel(AutoTeachStatus.Waiting);
    }

    private final void g() {
        if (this.f6267d == null) {
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            TypeChooseDialog typeChooseDialog = new TypeChooseDialog(activityI, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachRouteCheck$showDialog$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(Integer num) {
                    invoke(num.intValue());
                    return v.f15822a;
                }

                public final void invoke(int i) {
                    this.this$0.f6268e = i;
                    this.this$0.f6266a.k(this.this$0.f6268e);
                }
            });
            this.f6267d = typeChooseDialog;
            if (typeChooseDialog != null) {
                typeChooseDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.c
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        TeachRouteCheck.h(this.f6276a, dialogInterface);
                    }
                });
            }
            TypeChooseDialog typeChooseDialog2 = this.f6267d;
            if (typeChooseDialog2 == null) {
                return;
            }
            typeChooseDialog2.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(TeachRouteCheck this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        this$0.f6267d = null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public CheckStatusModel a(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (this.f6266a.getF6309h()) {
            return null;
        }
        if (this.f6268e == 2) {
            return this.c;
        }
        if (!RobotAccount.h() || !this.f6266a.l() || this.f6268e != 0) {
            return null;
        }
        g();
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public void b() {
        TypeChooseDialog typeChooseDialog = this.f6267d;
        if (typeChooseDialog != null) {
            DialogExtensionKt.b(typeChooseDialog);
        }
        this.f6268e = 0;
        this.f6266a.w(false);
    }
}
