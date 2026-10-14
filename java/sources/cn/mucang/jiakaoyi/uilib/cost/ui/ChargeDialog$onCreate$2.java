package cn.mucang.jiakaoyi.uilib.cost.ui;

import android.graphics.Bitmap;
import cn.mucang.jiakaoyi.uilib.api.ChargeApi;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogChargeBinding;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.t;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$onCreate$2", f = "ChargeDialog.kt", l = {}, m = "invokeSuspend")
final class ChargeDialog$onCreate$2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ DialogChargeBinding $viewBinding;
    int label;
    final /* synthetic */ ChargeDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$onCreate$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$onCreate$2$1", f = "ChargeDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Ref$ObjectRef<Bitmap> $createQRImage;
        final /* synthetic */ DialogChargeBinding $viewBinding;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DialogChargeBinding dialogChargeBinding, Ref$ObjectRef<Bitmap> ref$ObjectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$viewBinding = dialogChargeBinding;
            this.$createQRImage = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$viewBinding, this.$createQRImage, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.$viewBinding.progress.setVisibility(8);
            if (this.$createQRImage.element == null) {
                this.$viewBinding.tvError.setVisibility(0);
            } else {
                this.$viewBinding.tvError.setVisibility(8);
                this.$viewBinding.imgQrCode.setImageBitmap(this.$createQRImage.element);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChargeDialog$onCreate$2(ChargeDialog chargeDialog, DialogChargeBinding dialogChargeBinding, Continuation<? super ChargeDialog$onCreate$2> continuation) {
        super(2, continuation);
        this.$viewBinding = dialogChargeBinding;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ChargeDialog$onCreate$2(this.this$0, this.$viewBinding, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ChargeDialog$onCreate$2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            ChargeDialog chargeDialog = this.this$0;
            String string = UUID.randomUUID().toString();
            r.d(string, "randomUUID().toString()");
            String strX = t.x(string, "-", "", false, 4, null);
            if (strX == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = strX.toLowerCase();
            r.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            chargeDialog.f9197a = lowerCase;
            new ChargeApi();
            this.this$0.e();
            throw null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return v.f15822a;
        }
    }
}
