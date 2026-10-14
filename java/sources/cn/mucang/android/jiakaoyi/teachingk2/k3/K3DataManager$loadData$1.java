package cn.mucang.android.jiakaoyi.teachingk2.k3;

import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.k3setting.order.LightApi;
import cn.mucang.android.jiakaoyi.k3setting.route.RouteApi;
import cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachDataLoader;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager$loadData$1", f = "K3DataManager.kt", l = {58, 78}, m = "invokeSuspend")
final class K3DataManager$loadData$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager$loadData$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager$loadData$1$1", f = "K3DataManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Ref$ObjectRef<List<LightAssembleModel>> $assembles;
        final /* synthetic */ Ref$ObjectRef<List<LightExamModel>> $lights;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<List<LightExamModel>> ref$ObjectRef, Ref$ObjectRef<List<LightAssembleModel>> ref$ObjectRef2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$lights = ref$ObjectRef;
            this.$assembles = ref$ObjectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$lights, this.$assembles, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [T, java.util.List] */
        /* JADX WARN: Type inference failed for: r4v7, types: [T, java.util.List] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            try {
                LightApi lightApi = new LightApi();
                this.$lights.element = LightApi.y(lightApi, null, 1, null);
                this.$assembles.element = lightApi.v("").b();
            } catch (Exception e2) {
                f.o(r.m("拉取灯光数据失败:", e2));
            }
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager$loadData$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager$loadData$1$2", f = "K3DataManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Ref$ObjectRef<List<LocalRoute>> $routes;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref$ObjectRef<List<LocalRoute>> ref$ObjectRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$routes = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$routes, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, java.util.ArrayList, java.util.Collection] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            try {
                Ref$ObjectRef<List<LocalRoute>> ref$ObjectRef = this.$routes;
                List<OnlineRoute> listR = new RouteApi().r();
                ?? arrayList = new ArrayList(kotlin.collections.v.u(listR, 10));
                Iterator<T> it = listR.iterator();
                while (it.hasNext()) {
                    arrayList.add(((OnlineRoute) it.next()).toLocalRoute());
                }
                ref$ObjectRef.element = arrayList;
            } catch (Exception e2) {
                f.o(r.m("拉取路线数据失败:", e2));
            }
            return v.f15822a;
        }
    }

    K3DataManager$loadData$1(Continuation<? super K3DataManager$loadData$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        K3DataManager$loadData$1 k3DataManager$loadData$1 = new K3DataManager$loadData$1(continuation);
        k3DataManager$loadData$1.L$0 = obj;
        return k3DataManager$loadData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((K3DataManager$loadData$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00de  */
    /* JADX WARN: Code duplicated, block: B:30:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:37:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:? A[LOOP:0: B:28:0x00f8->B:38:?, LOOP_END, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        i0 i0Var;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        long j;
        long j2;
        Ref$ObjectRef ref$ObjectRef3;
        String strC;
        Iterator it;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                j = this.J$0;
                ref$ObjectRef2 = (Ref$ObjectRef) this.L$2;
                ref$ObjectRef = (Ref$ObjectRef) this.L$1;
                i0Var = (i0) this.L$0;
                k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j2 = this.J$0;
                ref$ObjectRef3 = (Ref$ObjectRef) this.L$1;
                k.b(obj);
            }
            if (com.blankj.utilcode.util.b.b((Collection) ref$ObjectRef3.element)) {
                List list = K3DataManager.f7234d;
                T t = ref$ObjectRef3.element;
                r.c(t);
                list.addAll((Collection) t);
                strC = LocalRouteUtil.c();
                it = K3DataManager.f7234d.iterator();
                while (it.hasNext()) {
                    if (r.a(((LocalRoute) it.next()).getRouteId(), strC)) {
                    }
                }
                LocalRouteUtil.e((LocalRoute) s.c0(K3DataManager.f7234d));
            }
            K3TeachDataLoader.d(K3TeachDataLoader.f4690a, String.valueOf(j2), null, 2, null);
            return v.f15822a;
        }
        k.b(obj);
        i0Var = (i0) this.L$0;
        long jH = ExamSiteUtil.h(0L);
        Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef5 = new Ref$ObjectRef();
        CoroutineDispatcher coroutineDispatcherB = w0.b();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef4, ref$ObjectRef5, null);
        this.L$0 = i0Var;
        this.L$1 = ref$ObjectRef4;
        this.L$2 = ref$ObjectRef5;
        this.J$0 = jH;
        this.label = 1;
        if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
            return objD;
        }
        ref$ObjectRef = ref$ObjectRef4;
        ref$ObjectRef2 = ref$ObjectRef5;
        j = jH;
        if (com.blankj.utilcode.util.b.b((Collection) ref$ObjectRef.element)) {
            List<LightExamModel> listD = K3DataManager.f7233a.d();
            T t2 = ref$ObjectRef.element;
            r.c(t2);
            listD.addAll((Collection) t2);
        } else {
            List<LightExamModel> listD2 = K3DataManager.f7233a.d();
            List<LightExamModel> allTopics = LightDataCreator.allTopics;
            r.d(allTopics, "allTopics");
            listD2.addAll(allTopics);
        }
        if (com.blankj.utilcode.util.b.b((Collection) ref$ObjectRef2.element)) {
            List<LightAssembleModel> listC = K3DataManager.f7233a.c();
            T t3 = ref$ObjectRef2.element;
            r.c(t3);
            listC.addAll((Collection) t3);
        }
        Ref$ObjectRef ref$ObjectRef6 = new Ref$ObjectRef();
        CoroutineDispatcher coroutineDispatcherB2 = w0.b();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(ref$ObjectRef6, null);
        this.L$0 = i0Var;
        this.L$1 = ref$ObjectRef6;
        this.L$2 = null;
        this.J$0 = j;
        this.label = 2;
        if (kotlinx.coroutines.f.c(coroutineDispatcherB2, anonymousClass2, this) == objD) {
            return objD;
        }
        j2 = j;
        ref$ObjectRef3 = ref$ObjectRef6;
        if (com.blankj.utilcode.util.b.b((Collection) ref$ObjectRef3.element)) {
            List list2 = K3DataManager.f7234d;
            T t4 = ref$ObjectRef3.element;
            r.c(t4);
            list2.addAll((Collection) t4);
            strC = LocalRouteUtil.c();
            it = K3DataManager.f7234d.iterator();
            while (it.hasNext()) {
                if (r.a(((LocalRoute) it.next()).getRouteId(), strC)) {
                }
            }
            LocalRouteUtil.e((LocalRoute) s.c0(K3DataManager.f7234d));
        }
        K3TeachDataLoader.d(K3TeachDataLoader.f4690a, String.valueOf(j2), null, 2, null);
        return v.f15822a;
    }
}
