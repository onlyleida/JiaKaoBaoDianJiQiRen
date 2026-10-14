package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CrossRoadMarkLineLayout$saveCurrentLine$1", f = "CrossRoadMarkLineLayout.kt", l = {144}, m = "invokeSuspend")
final class CrossRoadMarkLineLayout$saveCurrentLine$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function1<K3SrcData, kotlin.v> $callback;
    final /* synthetic */ long $examSiteId;
    int label;
    final /* synthetic */ CrossRoadMarkLineLayout this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CrossRoadMarkLineLayout$saveCurrentLine$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CrossRoadMarkLineLayout$saveCurrentLine$1$1", f = "CrossRoadMarkLineLayout.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Function1<K3SrcData, kotlin.v> $callback;
        int label;
        final /* synthetic */ CrossRoadMarkLineLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super K3SrcData, kotlin.v> function1, CrossRoadMarkLineLayout crossRoadMarkLineLayout, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.this$0 = crossRoadMarkLineLayout;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.this$0, continuation);
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
            Function1<K3SrcData, kotlin.v> function1 = this.$callback;
            K3SrcData k3SrcDataCopy = this.this$0.m.copy();
            kotlin.jvm.internal.r.d(k3SrcDataCopy, "srcData.copy()");
            function1.invoke(k3SrcDataCopy);
            this.this$0.q();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CrossRoadMarkLineLayout$saveCurrentLine$1(CrossRoadMarkLineLayout crossRoadMarkLineLayout, long j, Function1<? super K3SrcData, kotlin.v> function1, Continuation<? super CrossRoadMarkLineLayout$saveCurrentLine$1> continuation) {
        super(2, continuation);
        this.this$0 = crossRoadMarkLineLayout;
        this.$examSiteId = j;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CrossRoadMarkLineLayout$saveCurrentLine$1(this.this$0, this.$examSiteId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CrossRoadMarkLineLayout$saveCurrentLine$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            if (this.this$0.m.id != null) {
                Long l = this.this$0.m.id;
                kotlin.jvm.internal.r.d(l, "srcData.id");
                if (l.longValue() > 0) {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().g(this.this$0.m);
                } else {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.m);
                }
            } else {
                cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.m);
            }
            cn.mucang.android.jiakaoyi.k3collect.g0.j jVarE = this.this$0.e();
            if (jVarE != null) {
                jVarE.j = this.this$0.m.id;
            }
            d2 d2VarC = kotlinx.coroutines.w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, this.this$0, null);
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
