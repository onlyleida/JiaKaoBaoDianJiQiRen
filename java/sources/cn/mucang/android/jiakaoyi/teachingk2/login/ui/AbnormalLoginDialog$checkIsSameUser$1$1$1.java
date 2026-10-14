package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.jiakaoyi.uilib.login.api.FaceCheckApi;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$checkIsSameUser$1$1$1", f = "AbnormalLoginDialog.kt", l = {}, m = "invokeSuspend")
final class AbnormalLoginDialog$checkIsSameUser$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ XyUserModel $user;
    int label;
    final /* synthetic */ AbnormalLoginDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbnormalLoginDialog$checkIsSameUser$1$1$1(XyUserModel xyUserModel, AbnormalLoginDialog abnormalLoginDialog, Continuation<? super AbnormalLoginDialog$checkIsSameUser$1$1$1> continuation) {
        super(2, continuation);
        this.$user = xyUserModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-1, reason: not valid java name */
    public static final void m47invokeSuspend$lambda1(final XyUserModel xyUserModel) {
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        String strValueOf = String.valueOf(xyUserModel.getStudentId());
        String name = xyUserModel.getName();
        if (name == null) {
            name = "";
        }
        faceLoginManager.u(strValueOf, name);
        boolean zO = new FaceCheckApi().o(String.valueOf(xyUserModel.getXyToken()));
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.b
            @Override // java.lang.Runnable
            public final void run() {
                AbnormalLoginDialog$checkIsSameUser$1$1$1.m48invokeSuspend$lambda1$lambda0(xyUserModel);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.g("删掉学员（" + ((Object) xyUserModel.getName()) + "）人脸数据结果：" + zO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-1$lambda-0, reason: not valid java name */
    public static final void m48invokeSuspend$lambda1$lambda0(XyUserModel xyUserModel) {
        if (LoginHelper.f7296a.b()) {
            FaceLoginManager.f3000a.K(xyUserModel);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new AbnormalLoginDialog$checkIsSameUser$1$1$1(this.$user, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((AbnormalLoginDialog$checkIsSameUser$1$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (this.$user != null && RobotAccount.i().e() != null) {
            String mucangId = this.$user.getMucangId();
            XyUserModel xyUserModelE = RobotAccount.i().e();
            if (kotlin.jvm.internal.r.a(mucangId, xyUserModelE == null ? null : xyUserModelE.getMucangId())) {
                cn.mucang.android.jiakaoyi.framework.log.f.g("异常登录检验：是本人账号");
                final XyUserModel xyUserModel = this.$user;
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbnormalLoginDialog$checkIsSameUser$1$1$1.m47invokeSuspend$lambda1(xyUserModel);
                    }
                });
                this.this$0.dismiss();
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.g("异常登录检验：不是本人账号");
                this.this$0.f7350d++;
                if (this.this$0.f7350d == 2) {
                    cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_login_error_three));
                } else if (this.this$0.f7350d == 3) {
                    RobotAccount.p("checkIsSameUser", null, 2, null);
                    this.this$0.dismiss();
                }
            }
        }
        return kotlin.v.f15822a;
    }
}
