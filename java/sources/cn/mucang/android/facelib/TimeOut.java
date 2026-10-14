package cn.mucang.android.facelib;

import com.tencent.connect.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\f\u001a\u00020\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eJ\u0006\u0010\t\u001a\u00020\u000bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/facelib/TimeOut;", "", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "outTime", "", "(Lkotlinx/coroutines/CoroutineScope;J)V", "job", "Lkotlinx/coroutines/Job;", "updateTime", "cancel", "", "execute", "timeout", "Lkotlin/Function0;", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TimeOut {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i0 f3008a;
    private final long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private t1 f3009d;

    public TimeOut(i0 scope, long j) {
        r.e(scope, "scope");
        this.f3008a = scope;
        this.b = j;
        this.c = System.currentTimeMillis();
    }

    public final void d() {
        t1 t1Var = this.f3009d;
        if (t1Var == null) {
            return;
        }
        t1.a.a(t1Var, null, 1, null);
    }

    public final void e(Function0<kotlin.v> timeout) {
        r.e(timeout, "timeout");
        this.c = System.currentTimeMillis();
        t1 t1Var = this.f3009d;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.f3009d = kotlinx.coroutines.g.b(this.f3008a, w0.b(), null, new TimeOut$execute$1(this, timeout, null), 2, null);
    }

    public final void f() {
        this.c = System.currentTimeMillis();
    }
}
