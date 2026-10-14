package cn.mucang.android.jiakaoyi.k3collect;

import android.widget.LinearLayout;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initMapSelectListener$1$1$1", f = "K3PosCollectActivity.kt", l = {Videoio.CAP_PROP_XI_EXPOSURE}, m = "invokeSuspend")
final class K3PosCollectActivity$initMapSelectListener$1$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Ref$ObjectRef<cn.mucang.android.jiakaoyi.k3collect.g0.j<?>> $selectLayer;
    int label;
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initMapSelectListener$1$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initMapSelectListener$1$1$1$1", f = "K3PosCollectActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Ref$BooleanRef $showDeletePos;
        int label;
        final /* synthetic */ K3PosCollectActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(K3PosCollectActivity k3PosCollectActivity, Ref$BooleanRef ref$BooleanRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = k3PosCollectActivity;
            this.$showDeletePos = ref$BooleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$showDeletePos, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            boolean z;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.this$0.H0();
            if (this.this$0.t instanceof SingleLineSrcData) {
                K3SrcData k3SrcData = this.this$0.t;
                Objects.requireNonNull(k3SrcData, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData");
                z = ((SingleLineSrcData) k3SrcData).isCurve;
            } else if (this.this$0.t instanceof ShuangHuangSrcData) {
                K3SrcData k3SrcData2 = this.this$0.t;
                Objects.requireNonNull(k3SrcData2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData");
                z = ((ShuangHuangSrcData) k3SrcData2).isCurve;
            } else {
                z = false;
            }
            ((LinearLayout) this.this$0.findViewById(R.id.llDeletePos)).setVisibility((this.$showDeletePos.element && z) ? 0 : 8);
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$initMapSelectListener$1$1$1(K3PosCollectActivity k3PosCollectActivity, Ref$ObjectRef<cn.mucang.android.jiakaoyi.k3collect.g0.j<?>> ref$ObjectRef, Continuation<? super K3PosCollectActivity$initMapSelectListener$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = k3PosCollectActivity;
        this.$selectLayer = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$initMapSelectListener$1$1$1(this.this$0, this.$selectLayer, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$initMapSelectListener$1$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            if (this.this$0.u.size() > 0) {
                long jLongValue = ((Number) kotlin.collections.s.o0(this.this$0.u)).longValue();
                K3PosCollectActivity k3PosCollectActivity = this.this$0;
                K3HpMapEntity k3HpMapEntityE = cn.mucang.android.jiakaoyi.k3collect.db.a.c().e(kotlin.coroutines.jvm.internal.a.e(jLongValue));
                k3PosCollectActivity.t = k3HpMapEntityE == null ? null : k3HpMapEntityE.parseSrcData();
                if (this.this$0.t != null && this.$selectLayer.element != null) {
                    K3PosCollectActivity k3PosCollectActivity2 = this.this$0;
                    K3SrcData k3SrcData = k3PosCollectActivity2.t;
                    r.c(k3SrcData);
                    if (k3PosCollectActivity2.I0(k3SrcData)) {
                        ref$BooleanRef.element = this.$selectLayer.element.i() != null;
                    }
                }
            }
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, ref$BooleanRef, null);
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
