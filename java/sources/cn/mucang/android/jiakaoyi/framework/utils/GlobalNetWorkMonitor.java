package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.Application;
import cn.mucang.android.core.config.MucangConfig;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\u0010\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;", "", "()V", "connect", "Lkotlinx/coroutines/flow/Flow;", "", "context", "Landroid/app/Application;", "kotlin.jvm.PlatformType", "listeners", "", "Ljava/lang/ref/WeakReference;", "Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$NetWorkChangeListener;", "addListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "removeListener", "NetWorkChangeListener", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlobalNetWorkMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Application f3586a = MucangConfig.getContext();
    private static List<WeakReference<a>> b = new ArrayList();
    private static final kotlinx.coroutines.flow.c<Boolean> c = kotlinx.coroutines.flow.f.d(new GlobalNetWorkMonitor$connect$1(null));

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor$1", f = "GlobalNetWorkMonitor.kt", l = {76}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor$1$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements kotlinx.coroutines.flow.d<Boolean> {
            @Override // kotlinx.coroutines.flow.d
            public Object emit(Boolean bool, Continuation continuation) {
                if (bool.booleanValue()) {
                    for (WeakReference weakReference : GlobalNetWorkMonitor.b) {
                        a aVar = (a) weakReference.get();
                        if (aVar != null) {
                            aVar.a();
                        }
                        weakReference.clear();
                    }
                }
                return kotlin.v.f15822a;
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                kotlinx.coroutines.flow.c cVar = GlobalNetWorkMonitor.c;
                a aVar = new a();
                this.label = 1;
                if (cVar.d(aVar, this) == objD) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$NetWorkChangeListener;", "", "onNetworkConnected", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a();
    }

    static {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass1(null), 3, null);
    }

    public static final void d(a aVar) {
        Iterator<T> it = b.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.r.a(((WeakReference) it.next()).get(), aVar)) {
                return;
            }
        }
        b.add(new WeakReference<>(aVar));
    }

    public static final void e(a aVar) {
        Iterator<T> it = b.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (kotlin.jvm.internal.r.a(weakReference.get(), aVar)) {
                weakReference.clear();
                return;
            }
        }
    }
}
