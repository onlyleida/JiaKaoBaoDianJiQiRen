package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.jiakaoyi.uilib.login.model.QrCodeLoginData;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$onCallback$1", f = "AbnormalLoginDialog.kt", l = {}, m = "invokeSuspend")
final class AbnormalLoginDialog$onCallback$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ QrAuthUser $qrAuthUser;
    final /* synthetic */ int $scanLoginStatus;
    int label;
    final /* synthetic */ AbnormalLoginDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbnormalLoginDialog$onCallback$1(int i, AbnormalLoginDialog abnormalLoginDialog, QrAuthUser qrAuthUser, Continuation<? super AbnormalLoginDialog$onCallback$1> continuation) {
        super(2, continuation);
        this.$scanLoginStatus = i;
        this.$qrAuthUser = qrAuthUser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new AbnormalLoginDialog$onCallback$1(this.$scanLoginStatus, this.this$0, this.$qrAuthUser, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((AbnormalLoginDialog$onCallback$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        int i = this.$scanLoginStatus;
        if (i == 20040 || i == 3) {
            this.this$0.g().scanLayout.qrCodeErrorFl.setVisibility(0);
        } else if (i == 1 || i == 0) {
            this.this$0.g().scanLayout.qrCodeErrorFl.setVisibility(8);
        } else if (i == 2) {
            this.this$0.g().scanLayout.qrCodeErrorFl.setVisibility(0);
            AbnormalLoginDialog abnormalLoginDialog = this.this$0;
            QrAuthUser qrAuthUser = this.$qrAuthUser;
            abnormalLoginDialog.e(new QrCodeLoginData(qrAuthUser == null ? null : qrAuthUser.getAuthToken()));
        }
        return kotlin.v.f15822a;
    }
}
