package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.g0.j;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseDoubleLineLayout$saveCurrentLine$1", f = "BaseDoubleLineLayout.kt", l = {234}, m = "invokeSuspend")
final class BaseDoubleLineLayout$saveCurrentLine$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function1<K3SrcData, v> $callback;
    final /* synthetic */ long $examSiteId;
    int label;
    final /* synthetic */ BaseDoubleLineLayout this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseDoubleLineLayout$saveCurrentLine$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseDoubleLineLayout$saveCurrentLine$1$1", f = "BaseDoubleLineLayout.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Function1<K3SrcData, v> $callback;
        int label;
        final /* synthetic */ BaseDoubleLineLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super K3SrcData, v> function1, BaseDoubleLineLayout baseDoubleLineLayout, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.this$0 = baseDoubleLineLayout;
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
            K3SrcData k3SrcDataCopy = this.this$0.W().copy();
            r.d(k3SrcDataCopy, "srcData.copy()");
            function1.invoke(k3SrcDataCopy);
            this.this$0.q();
            this.this$0.q.clear();
            this.this$0.r.clear();
            this.this$0.o.clear();
            this.this$0.p.clear();
            this.this$0.c0(CollectState.None);
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BaseDoubleLineLayout$saveCurrentLine$1(BaseDoubleLineLayout baseDoubleLineLayout, long j, Function1<? super K3SrcData, v> function1, Continuation<? super BaseDoubleLineLayout$saveCurrentLine$1> continuation) {
        super(2, continuation);
        this.this$0 = baseDoubleLineLayout;
        this.$examSiteId = j;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new BaseDoubleLineLayout$saveCurrentLine$1(this.this$0, this.$examSiteId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((BaseDoubleLineLayout$saveCurrentLine$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x01d5  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<Pos> listF;
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            CommonSrcData commonSrcDataW = this.this$0.W();
            BaseDoubleLineLayout baseDoubleLineLayout = this.this$0;
            commonSrcDataW.points = baseDoubleLineLayout.X(baseDoubleLineLayout.W().points, this.this$0.W().id == null && this.this$0.W().points.size() > 2);
            if (MucangConfig.v() && this.this$0.W().points != null && ((this.this$0.W().points2 == null || this.this$0.W().points2.size() == 0) && (listF = o.f(this.this$0.getF3807a().j(), this.this$0.W().points)) != null && listF.size() >= 2)) {
                ArrayList arrayList = new ArrayList();
                int size = listF.size();
                if (1 < size) {
                    int i2 = 1;
                    while (true) {
                        int i3 = i2 + 1;
                        Line lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(listF.get(i2 - 1), listF.get(i2), 25.0d);
                        if (i2 == 1) {
                            Pos pos = lineQ.start;
                            r.d(pos, "lineAtRight.start");
                            arrayList.add(pos);
                            Pos pos2 = lineQ.end;
                            r.d(pos2, "lineAtRight.end");
                            arrayList.add(pos2);
                        } else {
                            Pos pos3 = lineQ.end;
                            r.d(pos3, "lineAtRight.end");
                            arrayList.add(pos3);
                        }
                        if (i3 >= size) {
                            break;
                        }
                        i2 = i3;
                    }
                }
                if (arrayList.size() >= 2) {
                    this.this$0.W().points2 = o.e(this.this$0.getF3807a().j(), arrayList);
                }
            }
            CommonSrcData commonSrcDataW2 = this.this$0.W();
            BaseDoubleLineLayout baseDoubleLineLayout2 = this.this$0;
            commonSrcDataW2.points2 = baseDoubleLineLayout2.X(baseDoubleLineLayout2.W().points2, this.this$0.W().id == null && this.this$0.W().points2.size() > 2);
            if (this.this$0.W().points == null || this.this$0.W().points == null || this.this$0.W().points2.size() < 2 || this.this$0.W().points2.size() < 2) {
                u.h("线1点个数 " + this.this$0.W().points.size() + " 线2点个数 " + this.this$0.W().points2.size());
            } else {
                Gps gps = this.this$0.W().points.get(0);
                if (gps.distanceTo(this.this$0.W().points2.get(0)) > gps.distanceTo(this.this$0.W().points2.get(this.this$0.W().points2.size() - 1))) {
                    List<Gps> list = this.this$0.W().points2;
                    r.d(list, "srcData.points2");
                    b0.P(list);
                }
                if (this.this$0.W().id != null) {
                    Long l = this.this$0.W().id;
                    r.d(l, "srcData.id");
                    if (l.longValue() > 0) {
                        cn.mucang.android.jiakaoyi.k3collect.db.a.c().g(this.this$0.W());
                    } else {
                        cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.W());
                    }
                } else {
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(this.$examSiteId), this.this$0.W());
                }
                j<?> jVarE = this.this$0.e();
                if (jVarE != null) {
                    jVarE.j = this.this$0.W().id;
                }
                BaseDoubleLineLayout baseDoubleLineLayout3 = this.this$0;
                baseDoubleLineLayout3.w(baseDoubleLineLayout3.getF3809e().g(this.this$0.W(), this.this$0.i(), this.this$0.f()));
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
