package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.k3collect.g0.j;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.List;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout$saveCurrentLine$1", f = "SingleLineLayout.kt", l = {162}, m = "invokeSuspend")
final class SingleLineLayout$saveCurrentLine$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function1<K3SrcData, v> $callback;
    final /* synthetic */ long $examSiteId;
    int label;
    final /* synthetic */ SingleLineLayout this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout$saveCurrentLine$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout$saveCurrentLine$1$1", f = "SingleLineLayout.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Function1<K3SrcData, v> $callback;
        int label;
        final /* synthetic */ SingleLineLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super K3SrcData, v> function1, SingleLineLayout singleLineLayout, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.this$0 = singleLineLayout;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.this$0, continuation);
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
            K3SrcData k3SrcDataCopy = this.this$0.T().copy();
            r.d(k3SrcDataCopy, "srcData.copy()");
            function1.invoke(k3SrcDataCopy);
            this.this$0.q();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SingleLineLayout$saveCurrentLine$1(SingleLineLayout singleLineLayout, long j, Function1<? super K3SrcData, v> function1, Continuation<? super SingleLineLayout$saveCurrentLine$1> continuation) {
        super(2, continuation);
        this.this$0 = singleLineLayout;
        this.$examSiteId = j;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SingleLineLayout$saveCurrentLine$1(this.this$0, this.$examSiteId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SingleLineLayout$saveCurrentLine$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0093  */
    /* JADX WARN: Code duplicated, block: B:34:0x0137  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean z;
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.this$0.T().lineList.size() <= 2) {
                z = false;
            } else {
                if (this.this$0.T().id == null && this.this$0.T().isCurve) {
                    this.this$0.T().lineList = cn.mucang.android.jiakaoyi.k3collect.l0.a.c(this.this$0.T().lineList, this.this$0.f());
                }
                List<Gps> listA = cn.mucang.android.jiakaoyi.k3collect.l0.a.a(this.this$0.T().lineList, this.this$0.f());
                t.a("K3Collect", r.m("压缩曲线用时：", kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis() - jCurrentTimeMillis)));
                if (listA.size() > 1) {
                    this.this$0.T().lineList = listA;
                    z = true;
                } else {
                    z = false;
                }
            }
            if (this.this$0.T().lineList == null || this.this$0.T().lineList.size() < 2) {
                u.h("数组不足两个点，无法保存");
            } else {
                this.this$0.T().isCurve = this.this$0.T().lineList != null && this.this$0.T().lineList.size() > 2;
                this.this$0.T().start = this.this$0.T().lineList.get(0);
                this.this$0.T().end = this.this$0.T().lineList.get(this.this$0.T().lineList.size() - 1);
                if (this.this$0.T().id != null) {
                    Long l = this.this$0.T().id;
                    r.d(l, "srcData.id");
                    if (l.longValue() > 0) {
                        cn.mucang.android.jiakaoyi.k3collect.db.a.c().g(this.this$0.T());
                    } else {
                        cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.T());
                    }
                } else {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.T());
                }
                j<?> jVarE = this.this$0.e();
                if (jVarE != null) {
                    jVarE.j = this.this$0.T().id;
                }
                if (z) {
                    SingleLineLayout singleLineLayout = this.this$0;
                    singleLineLayout.w(singleLineLayout.getF3809e().g(this.this$0.T(), this.this$0.i(), this.this$0.f()));
                }
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, this.this$0, null);
                this.label = 1;
                if (f.c(d2VarC, anonymousClass1, this) == objD) {
                    return objD;
                }
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
