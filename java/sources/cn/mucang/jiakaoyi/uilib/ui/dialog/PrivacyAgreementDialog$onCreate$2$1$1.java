package cn.mucang.jiakaoyi.uilib.ui.dialog;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog$onCreate$2$1$1", f = "PrivacyAgreementDialog.kt", l = {93}, m = "invokeSuspend")
final class PrivacyAgreementDialog$onCreate$2$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ PrivacyAgreementDialog.a $it;
    Object L$0;
    int label;
    final /* synthetic */ PrivacyAgreementDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog$onCreate$2$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog$onCreate$2$1$1$1", f = "PrivacyAgreementDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ PrivacyAgreementDialog.a $it;
        final /* synthetic */ Ref$BooleanRef $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$BooleanRef ref$BooleanRef, PrivacyAgreementDialog.a aVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = ref$BooleanRef;
            this.$it = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.$it, continuation);
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
            this.$result.element = this.$it.a();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PrivacyAgreementDialog$onCreate$2$1$1(PrivacyAgreementDialog.a aVar, PrivacyAgreementDialog privacyAgreementDialog, Continuation<? super PrivacyAgreementDialog$onCreate$2$1$1> continuation) {
        super(2, continuation);
        this.$it = aVar;
        this.this$0 = privacyAgreementDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new PrivacyAgreementDialog$onCreate$2$1$1(this.$it, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PrivacyAgreementDialog$onCreate$2$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$BooleanRef ref$BooleanRef;
        Ref$BooleanRef ref$BooleanRef2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            ref$BooleanRef = new Ref$BooleanRef();
            if (this.$it.isSync()) {
                ref$BooleanRef.element = this.$it.a();
            } else {
                if (this.this$0.f9802g) {
                    cn.mucang.android.core.utils.u.h("正在执行...");
                    return kotlin.v.f15822a;
                }
                this.this$0.f9802g = true;
                CoroutineDispatcher coroutineDispatcherB = w0.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$BooleanRef, this.$it, null);
                this.L$0 = ref$BooleanRef;
                this.label = 1;
                if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                    return objD;
                }
                ref$BooleanRef2 = ref$BooleanRef;
            }
            if (ref$BooleanRef.element) {
                this.this$0.j();
            }
            return kotlin.v.f15822a;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ref$BooleanRef2 = (Ref$BooleanRef) this.L$0;
        kotlin.k.b(obj);
        this.this$0.f9802g = false;
        ref$BooleanRef = ref$BooleanRef2;
        if (ref$BooleanRef.element) {
            this.this$0.j();
        }
        return kotlin.v.f15822a;
    }
}
