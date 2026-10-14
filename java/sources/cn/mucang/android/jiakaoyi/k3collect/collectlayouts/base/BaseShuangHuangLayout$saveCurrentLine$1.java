package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.k3collect.g0.j;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.b0;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout$saveCurrentLine$1", f = "BaseShuangHuangLayout.kt", l = {219}, m = "invokeSuspend")
final class BaseShuangHuangLayout$saveCurrentLine$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function1<K3SrcData, v> $callback;
    final /* synthetic */ long $examSiteId;
    int label;
    final /* synthetic */ BaseShuangHuangLayout this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout$saveCurrentLine$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout$saveCurrentLine$1$1", f = "BaseShuangHuangLayout.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Function1<K3SrcData, v> $callback;
        int label;
        final /* synthetic */ BaseShuangHuangLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super K3SrcData, v> function1, BaseShuangHuangLayout baseShuangHuangLayout, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.this$0 = baseShuangHuangLayout;
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
            K3SrcData k3SrcDataCopy = this.this$0.X().copy();
            r.d(k3SrcDataCopy, "srcData.copy()");
            function1.invoke(k3SrcDataCopy);
            this.this$0.q();
            this.this$0.q.clear();
            this.this$0.r.clear();
            this.this$0.o.clear();
            this.this$0.p.clear();
            this.this$0.d0(CollectState.None);
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BaseShuangHuangLayout$saveCurrentLine$1(BaseShuangHuangLayout baseShuangHuangLayout, long j, Function1<? super K3SrcData, v> function1, Continuation<? super BaseShuangHuangLayout$saveCurrentLine$1> continuation) {
        super(2, continuation);
        this.this$0 = baseShuangHuangLayout;
        this.$examSiteId = j;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new BaseShuangHuangLayout$saveCurrentLine$1(this.this$0, this.$examSiteId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((BaseShuangHuangLayout$saveCurrentLine$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x01da  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            ShuangHuangSrcData shuangHuangSrcDataX = this.this$0.X();
            BaseShuangHuangLayout baseShuangHuangLayout = this.this$0;
            shuangHuangSrcDataX.curveList1 = baseShuangHuangLayout.Y(baseShuangHuangLayout.X().curveList1, this.this$0.X().id == null && this.this$0.X().isCurve);
            ShuangHuangSrcData shuangHuangSrcDataX2 = this.this$0.X();
            BaseShuangHuangLayout baseShuangHuangLayout2 = this.this$0;
            shuangHuangSrcDataX2.curveList2 = baseShuangHuangLayout2.Y(baseShuangHuangLayout2.X().curveList2, this.this$0.X().id == null && this.this$0.X().isCurve);
            this.this$0.X().isCurve = false;
            if (this.this$0.X().curveList1 == null || this.this$0.X().curveList2 == null || this.this$0.X().curveList1.size() < 2 || this.this$0.X().curveList2.size() < 2) {
                u.h("线1点个数 " + this.this$0.X().curveList1.size() + " 线2点个数 " + this.this$0.X().curveList2.size());
            } else {
                this.this$0.X().isCurve = this.this$0.X().curveList1.size() > 2 || this.this$0.X().curveList2.size() > 2;
                this.this$0.X().line1Start = this.this$0.X().curveList1.get(0);
                this.this$0.X().line1End = this.this$0.X().curveList1.get(this.this$0.X().curveList1.size() - 1);
                this.this$0.X().line2Start = this.this$0.X().curveList2.get(0);
                this.this$0.X().line2End = this.this$0.X().curveList2.get(this.this$0.X().curveList2.size() - 1);
                if (this.this$0.X().line1Start.distanceTo(this.this$0.X().line2Start) > this.this$0.X().line1Start.distanceTo(this.this$0.X().line2End)) {
                    Gps gps = this.this$0.X().line2Start;
                    this.this$0.X().line2Start = this.this$0.X().line2End;
                    this.this$0.X().line2End = gps;
                    if (this.this$0.X().isCurve) {
                        List<Gps> list = this.this$0.X().curveList2;
                        r.d(list, "srcData.curveList2");
                        b0.P(list);
                    }
                }
                if (this.this$0.X().id != null) {
                    Long l = this.this$0.X().id;
                    r.d(l, "srcData.id");
                    if (l.longValue() > 0) {
                        cn.mucang.android.jiakaoyi.k3collect.db.a.c().g(this.this$0.X());
                    } else {
                        cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.X());
                    }
                } else {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.X());
                }
                j<?> jVarE = this.this$0.e();
                if (jVarE != null) {
                    jVarE.j = this.this$0.X().id;
                }
                BaseShuangHuangLayout baseShuangHuangLayout3 = this.this$0;
                baseShuangHuangLayout3.w(baseShuangHuangLayout3.getF3809e().g(this.this$0.X(), this.this$0.i(), this.this$0.f()));
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
