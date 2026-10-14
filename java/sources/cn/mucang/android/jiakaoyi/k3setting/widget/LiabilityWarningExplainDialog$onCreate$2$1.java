package cn.mucang.android.jiakaoyi.k3setting.widget;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.jiakaoyi.uilib.api.PrivacyAgreementApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.widget.LiabilityWarningExplainDialog$onCreate$2$1", f = "LiabilityWarningExplainDialog.kt", l = {57}, m = "invokeSuspend")
final class LiabilityWarningExplainDialog$onCreate$2$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    int label;
    final /* synthetic */ LiabilityWarningExplainDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.widget.LiabilityWarningExplainDialog$onCreate$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.widget.LiabilityWarningExplainDialog$onCreate$2$1$1", f = "LiabilityWarningExplainDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        final /* synthetic */ boolean $readSubScreenWaring;
        int label;
        final /* synthetic */ LiabilityWarningExplainDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JLoadingDialog jLoadingDialog, LiabilityWarningExplainDialog liabilityWarningExplainDialog, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
            this.$readSubScreenWaring = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$jLoadingDialog, this.this$0, this.$readSubScreenWaring, continuation);
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
            this.$jLoadingDialog.dismiss();
            this.this$0.dismiss();
            if (!this.$readSubScreenWaring) {
                u.h("记录阅读状态失败");
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LiabilityWarningExplainDialog$onCreate$2$1(JLoadingDialog jLoadingDialog, LiabilityWarningExplainDialog liabilityWarningExplainDialog, Continuation<? super LiabilityWarningExplainDialog$onCreate$2$1> continuation) {
        super(2, continuation);
        this.$jLoadingDialog = jLoadingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LiabilityWarningExplainDialog$onCreate$2$1(this.$jLoadingDialog, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LiabilityWarningExplainDialog$onCreate$2$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            boolean zN = new PrivacyAgreementApi().n();
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$jLoadingDialog, this.this$0, zN, null);
            this.label = 1;
            if (f.c(d2VarC, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
        }
        return v.f15822a;
    }
}
