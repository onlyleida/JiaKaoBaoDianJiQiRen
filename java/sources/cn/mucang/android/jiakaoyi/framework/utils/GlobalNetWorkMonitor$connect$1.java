package cn.mucang.android.jiakaoyi.framework.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.serenegiant.net.NetworkChangedReceiver;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor$connect$1", f = "GlobalNetWorkMonitor.kt", l = {36}, m = "invokeSuspend")
final class GlobalNetWorkMonitor$connect$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.n<? super Boolean>, Continuation<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$connect$1$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.n<Boolean> f3587a;

        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.channels.n<? super Boolean> nVar) {
            this.f3587a = nVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.f3587a.offer(Boolean.valueOf(cn.mucang.android.core.utils.x.e()));
        }
    }

    GlobalNetWorkMonitor$connect$1(Continuation<? super GlobalNetWorkMonitor$connect$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        GlobalNetWorkMonitor$connect$1 globalNetWorkMonitor$connect$1 = new GlobalNetWorkMonitor$connect$1(continuation);
        globalNetWorkMonitor$connect$1.L$0 = obj;
        return globalNetWorkMonitor$connect$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.channels.n<? super Boolean> nVar, Continuation<? super kotlin.v> continuation) {
        return ((GlobalNetWorkMonitor$connect$1) create(nVar, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.channels.n nVar = (kotlinx.coroutines.channels.n) this.L$0;
            final a aVar = new a(nVar);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE);
            GlobalNetWorkMonitor.f3586a.registerReceiver(aVar, intentFilter);
            Function0<kotlin.v> function0 = new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor$connect$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    GlobalNetWorkMonitor.f3586a.unregisterReceiver(aVar);
                }
            };
            this.label = 1;
            if (ProduceKt.a(nVar, function0, this) == objD) {
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
