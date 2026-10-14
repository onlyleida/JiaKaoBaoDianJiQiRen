package cn.mucang.android.jiakaoyi.k3collect;

import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveMapData$1$1$2$1", f = "K3PosCollectActivity.kt", l = {310}, m = "invokeSuspend")
final class K3PosCollectActivity$saveMapData$1$1$2$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function1<Boolean, kotlin.v> $callback;
    final /* synthetic */ List<K3HpMapEntity> $list;
    int label;
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveMapData$1$1$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveMapData$1$1$2$1$1", f = "K3PosCollectActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Function1<Boolean, kotlin.v> $callback;
        final /* synthetic */ boolean $success;
        int label;
        final /* synthetic */ K3PosCollectActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(K3PosCollectActivity k3PosCollectActivity, boolean z, Function1<? super Boolean, kotlin.v> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = k3PosCollectActivity;
            this.$success = z;
            this.$callback = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$success, this.$callback, continuation);
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
            JLoadingDialog jLoadingDialog = this.this$0.w;
            if (jLoadingDialog != null) {
                jLoadingDialog.dismiss();
            }
            if (this.$success) {
                this.this$0.E = false;
            } else {
                cn.mucang.android.core.utils.u.h("保存失败");
            }
            Function1<Boolean, kotlin.v> function1 = this.$callback;
            if (function1 != null) {
                function1.invoke(kotlin.coroutines.jvm.internal.a.a(this.$success));
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    K3PosCollectActivity$saveMapData$1$1$2$1(K3PosCollectActivity k3PosCollectActivity, List<K3HpMapEntity> list, Function1<? super Boolean, kotlin.v> function1, Continuation<? super K3PosCollectActivity$saveMapData$1$1$2$1> continuation) {
        super(2, continuation);
        this.this$0 = k3PosCollectActivity;
        this.$list = list;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$saveMapData$1$1$2$1(this.this$0, this.$list, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$saveMapData$1$1$2$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            K3PosCollectActivity k3PosCollectActivity = this.this$0;
            List<K3HpMapEntity> list = this.$list;
            r.d(list, "list");
            boolean zQ1 = k3PosCollectActivity.q1(list);
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, zQ1, this.$callback, null);
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
