package cn.mucang.android.jiakaoyi.k3collect;

import androidx.lifecycle.BusLiveData;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.q0;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$showMap$1", f = "K3PosCollectActivity.kt", l = {958, 964}, m = "invokeSuspend")
final class K3PosCollectActivity$showMap$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$showMap$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$showMap$1$1", f = "K3PosCollectActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        int label;
        final /* synthetic */ K3PosCollectActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(K3PosCollectActivity k3PosCollectActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = k3PosCollectActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
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
            this.this$0.f0();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$showMap$1(K3PosCollectActivity k3PosCollectActivity, Continuation<? super K3PosCollectActivity$showMap$1> continuation) {
        super(2, continuation);
        this.this$0 = k3PosCollectActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$showMap$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$showMap$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:70:0x01e2 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<Gps> listCenter;
        d2 d2VarC;
        AnonymousClass1 anonymousClass1;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                kotlin.k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        }
        kotlin.k.b(obj);
        cn.mucang.android.jiakaoyi.k3collect.db.a aVarC = cn.mucang.android.jiakaoyi.k3collect.db.a.c();
        ExamSiteModel examSiteModel = this.this$0.q;
        if (examSiteModel == null) {
            r.u("examSiteModel");
            throw null;
        }
        List<K3HpMapEntity> listD = aVarC.d(String.valueOf(examSiteModel.examSiteId));
        if (listD == null || listD.isEmpty()) {
            cn.mucang.android.core.utils.u.h("线路为空");
            this.this$0.f0();
            return kotlin.v.f15822a;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<K3HpMapEntity> it = listD.iterator();
        while (it.hasNext()) {
            K3SrcData srcData = it.next().parseSrcData();
            if (srcData != null && srcData.isComplete() && (listCenter = srcData.center()) != null) {
                arrayList.addAll(listCenter);
                this.this$0.r.add(srcData);
            }
        }
        if (arrayList.size() > 0 && this.this$0.r.size() > 0) {
            if (cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
                BusLiveData busLiveDataD = LiveBus.d(SetInitDebugGps.class);
                Object obj2 = arrayList.get(arrayList.size() - 1);
                r.d(obj2, "gpsList[gpsList.size - 1]");
                busLiveDataD.l(new SetInitDebugGps((Gps) obj2));
            }
            this.this$0.getP().b(((q0) this.this$0).c);
            for (K3SrcData k3SrcData : this.this$0.r) {
                cn.mucang.android.jiakaoyi.k3collect.k0.p.b bVarA = cn.mucang.android.jiakaoyi.k3collect.k0.p.a(k3SrcData.type);
                if (bVarA != null) {
                    bVarA.b(k3SrcData, ((q0) this.this$0).f4813d);
                    cn.mucang.android.jiakaoyi.k3collect.g0.j jVarA = bVarA.a(((q0) this.this$0).c);
                    if (jVarA != null) {
                        ((q0) this.this$0).c.u.g(jVarA);
                    }
                }
            }
            if (this.this$0.B == null || this.this$0.C == null) {
                this.this$0.s.clear();
                List list = this.this$0.s;
                List<Pos> listF = cn.mucang.android.jiakaoyi.k3collect.k0.o.f(((q0) this.this$0).f4813d, arrayList);
                r.d(listF, "transCurve(converter, gpsList)");
                list.addAll(listF);
                this.this$0.getP().e(((q0) this.this$0).c, this.this$0.s);
            } else {
                cn.mucang.android.jiakaoyi.k3collect.k0.n p = this.this$0.getP();
                MapView mapView = ((q0) this.this$0).c;
                Pos pos = this.this$0.B;
                r.c(pos);
                float f2 = (float) pos.x;
                Pos pos2 = this.this$0.B;
                r.c(pos2);
                float f3 = (float) pos2.y;
                Float f4 = this.this$0.C;
                r.c(f4);
                p.j(mapView, f2, f3, f4.floatValue());
            }
            this.label = 1;
            if (s0.a(100L, this) == objD) {
                return objD;
            }
        }
        d2VarC = w0.c();
        anonymousClass1 = new AnonymousClass1(this.this$0, null);
        this.label = 2;
        if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
            return objD;
        }
        return kotlin.v.f15822a;
        K3PosCollectActivity k3PosCollectActivity = this.this$0;
        MapView mapView2 = ((q0) k3PosCollectActivity).c;
        k3PosCollectActivity.y = mapView2 == null ? 0.02f : mapView2.getCurrentZoom();
        K3PosCollectActivity k3PosCollectActivity2 = this.this$0;
        k3PosCollectActivity2.z = k3PosCollectActivity2.y <= 0.02f ? this.this$0.y : 0.02f;
        MapView mapView3 = ((q0) this.this$0).c;
        if (mapView3 != null) {
            mapView3.setMinZoom(this.this$0.z);
        }
        d2VarC = w0.c();
        anonymousClass1 = new AnonymousClass1(this.this$0, null);
        this.label = 2;
        if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
            return objD;
        }
        return kotlin.v.f15822a;
    }
}
