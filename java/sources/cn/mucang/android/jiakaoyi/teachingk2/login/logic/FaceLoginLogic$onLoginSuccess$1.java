package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class FaceLoginLogic$onLoginSuccess$1 extends Lambda implements Function0<v> {
    final /* synthetic */ LoginData $loginData;
    final /* synthetic */ XyUserModel $user;
    final /* synthetic */ FaceLoginLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginLogic$onLoginSuccess$1(FaceLoginLogic faceLoginLogic, XyUserModel xyUserModel, LoginData loginData) {
        super(0);
        this.this$0 = faceLoginLogic;
        this.$user = xyUserModel;
        this.$loginData = loginData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m46invoke$lambda0(FaceLoginLogic this$0, XyUserModel user, LoginData loginData) throws InterruptedException {
        r.e(this$0, "this$0");
        r.e(user, "$user");
        r.e(loginData, "$loginData");
        LoginManager.D(this$0.c(), user, LoginType.FACE, loginData, true);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ v invoke() {
        invoke2();
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        TextView textView = this.this$0.d().btnFaceCheck;
        r.d(textView, "binding.btnFaceCheck");
        textView.setVisibility(8);
        u uVar = new u(this.this$0.c());
        final FaceLoginLogic faceLoginLogic = this.this$0;
        final XyUserModel xyUserModel = this.$user;
        final LoginData loginData = this.$loginData;
        uVar.i(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.i
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws InterruptedException {
                FaceLoginLogic$onLoginSuccess$1.m46invoke$lambda0(faceLoginLogic, xyUserModel, loginData);
            }
        }, k0.a(R.string.teachbase_logging_in), k0.a(R.string.teachbase_login_fail), null);
    }
}
