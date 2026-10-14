package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Activity;
import android.graphics.Bitmap;
import cn.mucang.android.account.p001qrcode.model.QrCodeModel;
import cn.mucang.android.account.qrcode.QrCodeHelper;
import cn.mucang.android.jiakaoyi.teachbase.R;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$loadQrCode$1", f = "AbnormalLoginDialog.kt", l = {}, m = "invokeSuspend")
final class AbnormalLoginDialog$loadQrCode$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Activity $activity;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AbnormalLoginDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$loadQrCode$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$loadQrCode$1$1", f = "AbnormalLoginDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Bitmap $bitmap;
        int label;
        final /* synthetic */ AbnormalLoginDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AbnormalLoginDialog abnormalLoginDialog, Bitmap bitmap, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bitmap = bitmap;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$bitmap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.this$0.g().scanLayout.qrCodeErrorFl.setVisibility(8);
            this.this$0.g().scanLayout.qrCodeIv.setImageBitmap(this.$bitmap);
            QrCodeHelper.f2245f.a().h(this.this$0);
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbnormalLoginDialog$loadQrCode$1(Activity activity, AbnormalLoginDialog abnormalLoginDialog, Continuation<? super AbnormalLoginDialog$loadQrCode$1> continuation) {
        super(2, continuation);
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        AbnormalLoginDialog$loadQrCode$1 abnormalLoginDialog$loadQrCode$1 = new AbnormalLoginDialog$loadQrCode$1(this.$activity, this.this$0, continuation);
        abnormalLoginDialog$loadQrCode$1.L$0 = obj;
        return abnormalLoginDialog$loadQrCode$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((AbnormalLoginDialog$loadQrCode$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        kotlinx.coroutines.i0 i0Var = (kotlinx.coroutines.i0) this.L$0;
        QrCodeModel qrCodeModelB = QrCodeHelper.f2245f.a().b();
        Bitmap bitmapB = cn.mucang.android.jiakaoyi.framework.i.a.b(qrCodeModelB == null ? null : qrCodeModelB.getProtocolUrl(), (int) this.$activity.getResources().getDimension(R.dimen.rpx_380));
        if (bitmapB == null) {
            return kotlin.v.f15822a;
        }
        kotlinx.coroutines.g.b(i0Var, w0.c(), null, new AnonymousClass1(this.this$0, bitmapB, null), 2, null);
        return kotlin.v.f15822a;
    }
}
