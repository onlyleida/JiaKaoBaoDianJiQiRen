package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import cn.mucang.android.jiakaoyi.k3collect.g0.j;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout$save$1", f = "BaseLineLayout.kt", l = {97}, m = "invokeSuspend")
final class BaseLineLayout$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function1<K3SrcData, v> $callback;
    final /* synthetic */ String $examSiteId;
    final /* synthetic */ K3SrcData $srcData;
    int label;
    final /* synthetic */ BaseLineLayout this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout$save$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout$save$1$1", f = "BaseLineLayout.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Function1<K3SrcData, v> $callback;
        final /* synthetic */ K3SrcData $srcData;
        int label;
        final /* synthetic */ BaseLineLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super K3SrcData, v> function1, K3SrcData k3SrcData, BaseLineLayout baseLineLayout, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.$srcData = k3SrcData;
            this.this$0 = baseLineLayout;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.$srcData, this.this$0, continuation);
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
            Function1<K3SrcData, v> function1 = this.$callback;
            K3SrcData k3SrcDataCopy = this.$srcData.copy();
            r.d(k3SrcDataCopy, "srcData.copy()");
            function1.invoke(k3SrcDataCopy);
            this.this$0.q();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BaseLineLayout$save$1(K3SrcData k3SrcData, String str, BaseLineLayout baseLineLayout, Function1<? super K3SrcData, v> function1, Continuation<? super BaseLineLayout$save$1> continuation) {
        super(2, continuation);
        this.$srcData = k3SrcData;
        this.$examSiteId = str;
        this.this$0 = baseLineLayout;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new BaseLineLayout$save$1(this.$srcData, this.$examSiteId, this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((BaseLineLayout$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            Long l = this.$srcData.id;
            if (l != null) {
                r.d(l, "srcData.id");
                if (l.longValue() > 0) {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().g(this.$srcData);
                } else {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(this.$examSiteId.toString(), this.$srcData);
                }
            } else {
                cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(this.$examSiteId.toString(), this.$srcData);
            }
            j<?> jVarE = this.this$0.e();
            if (jVarE != null) {
                jVarE.j = this.$srcData.id;
            }
            this.this$0.getF3809e().g(this.$srcData, this.this$0.i(), this.this$0.f());
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, this.$srcData, this.this$0, null);
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
