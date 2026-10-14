package cn.mucang.android.core.utils;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.utils.g0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/core/utils/RpcRegInfo;", "", "pid", "", "rpcAction", "Lcn/mucang/android/core/utils/RpcAction;", "(ILcn/mucang/android/core/utils/RpcAction;)V", "getPid", "()I", "getRpcAction", "()Lcn/mucang/android/core/utils/RpcAction;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
final class RpcRegInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2649a;
    private final RpcAction b;

    public RpcRegInfo(int i, RpcAction rpcAction) {
        kotlin.jvm.internal.r.e(rpcAction, "rpcAction");
        this.f2649a = i;
        this.b = rpcAction;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF2649a() {
        return this.f2649a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final RpcAction getB() {
        return this.b;
    }
}
