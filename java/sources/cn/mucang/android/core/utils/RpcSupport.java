package cn.mucang.android.core.utils;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.system.Os;
import cn.mucang.android.core.config.MucangConfig;
import com.iflytek.cloud.SpeechConstant;
import com.tencent.tauth.AuthActivity;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: renamed from: cn.mucang.android.core.utils.h0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000[\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0013\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0007J0\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0010 \u001a\u00060!j\u0002`\"H\u0002J\b\u0010#\u001a\u00020\u0016H\u0003J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&H\u0007J\u0010\u0010'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006("}, d2 = {"Lcn/mucang/android/core/utils/RpcSupport;", "", "()V", "KEY_ACTION", "", "KEY_DIRECT_EXECUTED", "KEY_DIRECT_EXECUTED_RESULT", "KEY_HANDLED", "KEY_PENDING_EXECUTED_NAME", "KEY_PENDING_EXECUTED_RESULT", "KEY_RPC_FROM_PID", "KEY_RPC_KEY", "TAG", "actionMap", "Ljava/util/HashMap;", "Lcn/mucang/android/core/utils/RpcRegInfo;", "init", "", "queryBroadcastReceiver", "cn/mucang/android/core/utils/RpcSupport$queryBroadcastReceiver$1", "Lcn/mucang/android/core/utils/RpcSupport$queryBroadcastReceiver$1;", "callRpcAction", "", "key", SpeechConstant.PARAMS, "Landroid/os/Bundle;", "callback", "Lcn/mucang/android/core/utils/RpcActionCallback;", "callbackTimeOutMs", "", "handleExecutedResult", "directCalledResultBundle", "timeOutStack", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "initIfNeed", "registerRpcAction", AuthActivity.ACTION_KEY, "Lcn/mucang/android/core/utils/RpcAction;", "unregisterRpcAction", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RpcSupport {
    private static boolean c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RpcSupport f2650a = new RpcSupport();
    private static final HashMap<String, RpcRegInfo> b = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final c f2651d = new c();

    /* JADX INFO: renamed from: cn.mucang.android.core.utils.h0$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/utils/RpcSupport$callRpcAction$2", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RpcActionCallback f2652a;
        final /* synthetic */ long b;
        final /* synthetic */ RuntimeException c;

        a(RpcActionCallback rpcActionCallback, long j, RuntimeException runtimeException) {
            this.f2652a = rpcActionCallback;
            this.b = j;
            this.c = runtimeException;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            Bundle directCalledResultBundle = getResultExtras(true);
            RpcSupport rpcSupport = RpcSupport.f2650a;
            kotlin.jvm.internal.r.d(directCalledResultBundle, "directCalledResultBundle");
            rpcSupport.e(directCalledResultBundle, this.f2652a, this.b, this.c);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.utils.h0$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/utils/RpcSupport$handleExecutedResult$pendingReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef<Runnable> f2653a;
        final /* synthetic */ RpcActionCallback b;

        b(Ref$ObjectRef<Runnable> ref$ObjectRef, RpcActionCallback rpcActionCallback) {
            this.f2653a = ref$ObjectRef;
            this.b = rpcActionCallback;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            Runnable runnable = this.f2653a.element;
            if (runnable != null) {
                u.e(runnable);
            }
            MucangConfig.getContext().unregisterReceiver(this);
            boolean booleanExtra = intent.getBooleanExtra("__rpc_support_direct_pending_execute_result__", false);
            RpcActionCallback rpcActionCallback = this.b;
            if (rpcActionCallback != null) {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    extras = Bundle.EMPTY;
                }
                kotlin.jvm.internal.r.d(extras, "intent.extras ?: Bundle.EMPTY");
                rpcActionCallback.a(extras, booleanExtra);
            }
            t.d("rpcSupport", '[' + Os.getpid() + "]receive pending callback success with result:" + booleanExtra);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.utils.h0$c */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/utils/RpcSupport$queryBroadcastReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z;
            Object next;
            Map.Entry entry;
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            HashMap map = RpcSupport.b;
            if (map == null || map.isEmpty()) {
                return;
            }
            int intExtra = intent.getIntExtra("__rpc_support_rpc_from_pid__", Os.getpid());
            Set setEntrySet = RpcSupport.b.entrySet();
            kotlin.jvm.internal.r.d(setEntrySet, "actionMap.entries");
            if (!(setEntrySet instanceof Collection) || !setEntrySet.isEmpty()) {
                Iterator it = setEntrySet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else {
                        if (((RpcRegInfo) ((Map.Entry) it.next()).getValue()).getF2649a() == intExtra) {
                            z = true;
                            break;
                        }
                    }
                }
            } else {
                z = false;
                break;
            }
            if (z) {
                return;
            }
            if (getResultExtras(true).getBoolean("__rpc_support_handled__", false)) {
                t.d("rpcSupport", '[' + Os.getpid() + "] handled by other process");
                return;
            }
            String stringExtra = intent.getStringExtra("__rpc_support_rpc_key__");
            InnerRpcActionCallback innerRpcActionCallback = new InnerRpcActionCallback();
            Set setEntrySet2 = RpcSupport.b.entrySet();
            kotlin.jvm.internal.r.d(setEntrySet2, "actionMap.entries");
            Iterator it2 = setEntrySet2.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it2.next();
                    entry = (Map.Entry) next;
                }
            } while (!(kotlin.jvm.internal.r.a(entry.getKey(), stringExtra) && ((RpcRegInfo) entry.getValue()).getB().a(intent.getExtras(), innerRpcActionCallback)));
            if (next != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("__rpc_support_handled__", true);
                bundle.putAll(innerRpcActionCallback.getF2666a());
                Boolean boolC = innerRpcActionCallback.getB();
                innerRpcActionCallback.e(boolC != null);
                if (boolC != null) {
                    bundle.putBoolean("__rpc_support_direct_executed__", true);
                    bundle.putBoolean("__rpc_support_direct_executed_result__", boolC.booleanValue());
                } else {
                    bundle.putBoolean("__rpc_support_direct_executed__", false);
                    bundle.putString("__rpc_support_direct_pending_execute_name__", innerRpcActionCallback.getF2667d());
                }
                setResultExtras(bundle);
            }
        }
    }

    private RpcSupport() {
    }

    public static final void c(String key, Bundle bundle, RpcActionCallback rpcActionCallback, long j) {
        kotlin.jvm.internal.r.e(key, "key");
        g();
        RuntimeException runtimeException = new RuntimeException("executeRpcTimeOutStack");
        Application context = MucangConfig.getContext();
        Intent intent = new Intent("__rpc_support_action__");
        intent.putExtra("__rpc_support_rpc_key__", key);
        intent.putExtra("__rpc_support_rpc_from_pid__", Os.getpid());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        kotlin.v vVar = kotlin.v.f15822a;
        context.sendOrderedBroadcast(intent, MultiProcessBroadcastManager.f2679a.b(), new a(rpcActionCallback, j, runtimeException), null, 0, null, null);
    }

    public static /* synthetic */ void d(String str, Bundle bundle, RpcActionCallback rpcActionCallback, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            rpcActionCallback = null;
        }
        if ((i & 8) != 0) {
            j = 10000;
        }
        c(str, bundle, rpcActionCallback, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, cn.mucang.android.core.utils.c] */
    public final void e(Bundle bundle, final RpcActionCallback rpcActionCallback, long j, final RuntimeException runtimeException) {
        if (!bundle.getBoolean("__rpc_support_handled__", false)) {
            if (rpcActionCallback == null) {
                return;
            }
            Bundle EMPTY = Bundle.EMPTY;
            kotlin.jvm.internal.r.d(EMPTY, "EMPTY");
            rpcActionCallback.a(EMPTY, false);
            return;
        }
        boolean z = bundle.getBoolean("__rpc_support_direct_executed__", false);
        boolean z2 = bundle.getBoolean("__rpc_support_direct_executed_result__", false);
        if (z) {
            if (rpcActionCallback != null) {
                rpcActionCallback.a(bundle, z2);
            }
            t.d("rpcSupport", '[' + Os.getpid() + "]receive direct callback with result:" + z2);
            return;
        }
        String string = bundle.getString("__rpc_support_direct_pending_execute_name__", null);
        if (string == null || kotlin.text.t.r(string)) {
            if (rpcActionCallback != null) {
                Bundle EMPTY2 = Bundle.EMPTY;
                kotlin.jvm.internal.r.d(EMPTY2, "EMPTY");
                rpcActionCallback.a(EMPTY2, false);
            }
            t.d("rpcSupport", "FATAL error found:received pending execution without name");
            return;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final b bVar = new b(ref$ObjectRef, rpcActionCallback);
        MucangConfig.getContext().registerReceiver(bVar, new IntentFilter(string));
        ?? r6 = new Runnable() { // from class: cn.mucang.android.core.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                RpcSupport.f(bVar, rpcActionCallback, runtimeException);
            }
        };
        ref$ObjectRef.element = r6;
        u.d((Runnable) r6, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(b pendingReceiver, RpcActionCallback rpcActionCallback, RuntimeException timeOutStack) {
        kotlin.jvm.internal.r.e(pendingReceiver, "$pendingReceiver");
        kotlin.jvm.internal.r.e(timeOutStack, "$timeOutStack");
        MucangConfig.getContext().unregisterReceiver(pendingReceiver);
        if (rpcActionCallback != null) {
            Bundle EMPTY = Bundle.EMPTY;
            kotlin.jvm.internal.r.d(EMPTY, "EMPTY");
            rpcActionCallback.a(EMPTY, false);
        }
        timeOutStack.printStackTrace();
        t.d("rpcSupport", '[' + Os.getpid() + "]FATAL pending callback timeout,checkout stack for detail.");
    }

    private static final synchronized void g() {
        if (c) {
            return;
        }
        MucangConfig.getContext().registerReceiver(f2651d, new IntentFilter("__rpc_support_action__"), MultiProcessBroadcastManager.f2679a.b(), null);
        c = true;
    }

    public static final void i(String key, RpcAction action) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(action, "action");
        g();
        b.put(key, new RpcRegInfo(Os.getpid(), action));
    }
}
