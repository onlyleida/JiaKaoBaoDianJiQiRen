package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Activity;
import android.app.Dialog;
import cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogAbnormalLoginBinding;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.tencent.connect.common.Constants;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\b\u0010\u0017\u001a\u00020\u0013H\u0002J\b\u0010\u0018\u001a\u00020\u0013H\u0002J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00132\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;", "Landroid/app/Dialog;", "Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "context", "Landroid/content/Context;", "(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Landroid/content/Context;)V", "abnormalCount", "", "binding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;", "getBinding", "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;", "binding$delegate", "Lkotlin/Lazy;", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "checkIsSameUser", "", "data", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "initView", "loadQrCode", "login", "onCallback", "scanLoginStatus", "qrAuthUser", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AbnormalLoginDialog extends Dialog implements ScanLoginStatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LoginType f7349a;
    private final Lazy b;
    private kotlinx.coroutines.i0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7350d;

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(final LoginData loginData) {
        Activity activityA = ActivityUtils.a(getContext());
        if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
            return;
        }
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activityA).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e(this) { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.a

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ AbnormalLoginDialog f7366a;

            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                AbnormalLoginDialog.f(this.f7366a, loginData);
            }
        }, "", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(AbnormalLoginDialog this$0, LoginData data) {
        Object objM139constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(data, "$data");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(LoginManager.y(this$0.f7349a, data));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null && (thM142exceptionOrNullimpl instanceof ApiException)) {
            if (this$0.f7349a == LoginType.MOBILE_OR_IDCARD) {
                kotlinx.coroutines.i0 i0Var = this$0.c;
                if (i0Var != null) {
                    kotlinx.coroutines.g.b(i0Var, null, null, new AbnormalLoginDialog$checkIsSameUser$1$1$user$2$1(this$0, thM142exceptionOrNullimpl, null), 3, null);
                }
            } else {
                cn.mucang.android.core.utils.u.h(thM142exceptionOrNullimpl.getMessage());
            }
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        XyUserModel xyUserModel = (XyUserModel) objM139constructorimpl;
        kotlinx.coroutines.i0 i0Var2 = this$0.c;
        if (i0Var2 == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var2, null, null, new AbnormalLoginDialog$checkIsSameUser$1$1$1(xyUserModel, this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogAbnormalLoginBinding g() {
        return (DialogAbnormalLoginBinding) this.b.getValue();
    }
}
