package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import cn.mucang.jiakaoyi.uilib.manager.SignalValueManager;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$onCreate$2$1", f = "SignalReverseActivity.kt", l = {42}, m = "invokeSuspend")
final class SignalReverseActivity$onCreate$2$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
    final /* synthetic */ SignalReverseViewModel $viewModel;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$onCreate$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$onCreate$2$1$1", f = "SignalReverseActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
        final /* synthetic */ boolean $result;
        final /* synthetic */ SignalReverseViewModel $viewModel;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(cn.mucang.android.account.ui.a aVar, boolean z, SignalReverseViewModel signalReverseViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$loadingDialog = aVar;
            this.$result = z;
            this.$viewModel = signalReverseViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$loadingDialog, this.$result, this.$viewModel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$loadingDialog.dismiss();
            if (this.$result) {
                cn.mucang.android.core.utils.u.h("车型默认信号更新成功！");
                this.$viewModel.b();
            } else {
                cn.mucang.android.core.utils.u.h("获取数据失败");
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SignalReverseActivity$onCreate$2$1(cn.mucang.android.account.ui.a aVar, SignalReverseViewModel signalReverseViewModel, Continuation<? super SignalReverseActivity$onCreate$2$1> continuation) {
        super(2, continuation);
        this.$loadingDialog = aVar;
        this.$viewModel = signalReverseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new SignalReverseActivity$onCreate$2$1(this.$loadingDialog, this.$viewModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((SignalReverseActivity$onCreate$2$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            boolean zB = SignalValueManager.f9459a.b();
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$loadingDialog, zB, this.$viewModel, null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
