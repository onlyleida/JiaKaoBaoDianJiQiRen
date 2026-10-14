package cn.mucang.android.core.utils;

import android.content.Intent;
import android.os.Bundle;
import android.system.Os;
import cn.mucang.android.core.config.MucangConfig;
import java.util.UUID;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.utils.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/core/utils/InnerRpcActionCallback;", "Lcn/mucang/android/core/utils/RpcActionCallback;", "()V", "calledBundle", "Landroid/os/Bundle;", "getCalledBundle", "()Landroid/os/Bundle;", "setCalledBundle", "(Landroid/os/Bundle;)V", "calledResult", "", "getCalledResult", "()Ljava/lang/Boolean;", "setCalledResult", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "directMode", "getDirectMode", "()Z", "setDirectMode", "(Z)V", "pendingName", "", "getPendingName", "()Ljava/lang/String;", "setPendingName", "(Ljava/lang/String;)V", "onRpcResult", "", "bundle", "suc", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
final class InnerRpcActionCallback implements RpcActionCallback {
    private Boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2667d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f2666a = new Bundle();
    private boolean c = true;

    public InnerRpcActionCallback() {
        String string = UUID.randomUUID().toString();
        kotlin.jvm.internal.r.d(string, "randomUUID().toString()");
        this.f2667d = string;
    }

    @Override // cn.mucang.android.core.utils.RpcActionCallback
    public void a(Bundle bundle, boolean z) {
        kotlin.jvm.internal.r.e(bundle, "bundle");
        this.b = Boolean.valueOf(z);
        this.f2666a = bundle;
        if (this.c) {
            t.d("rpcSupport", '[' + Os.getpid() + "]direct callback with result:" + this.b);
            return;
        }
        Intent intent = new Intent(this.f2667d);
        intent.putExtra("__rpc_support_direct_pending_execute_result__", this.b);
        intent.putExtras(this.f2666a);
        MucangConfig.getContext().sendBroadcast(intent);
        t.d("rpcSupport", '[' + Os.getpid() + "]pending callback with result:" + this.b);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Bundle getF2666a() {
        return this.f2666a;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final Boolean getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getF2667d() {
        return this.f2667d;
    }

    public final void e(boolean z) {
        this.c = z;
    }
}
