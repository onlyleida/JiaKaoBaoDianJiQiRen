package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import cn.mucang.android.account.qrcode.QrCodeHelper;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.logic.ScanLoginLogic$loadQrCode$1$1$1", f = "ScanLoginLogic.kt", l = {75}, m = "invokeSuspend")
final class ScanLoginLogic$loadQrCode$1$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ ScanLoginLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScanLoginLogic$loadQrCode$1$1$1(ScanLoginLogic scanLoginLogic, Continuation<? super ScanLoginLogic$loadQrCode$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = scanLoginLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ScanLoginLogic$loadQrCode$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ScanLoginLogic$loadQrCode$1$1$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            this.label = 1;
            if (s0.a(2500L, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        QrCodeHelper.f2245f.a().h(this.this$0);
        return v.f15822a;
    }
}
