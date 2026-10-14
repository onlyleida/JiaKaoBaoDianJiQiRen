package cn.mucang.jiakaoyi.sundial.service;

import android.app.Application;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.library.Sundial;
import cn.mucang.sundial.library.util.ActivityUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.connect.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.p2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0011J\b\u0010\u0015\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\"\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;", "", "()V", "isInit", "", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "<set-?>", "Lcn/mucang/jiakaoyi/sundial/service/SundialSpeaker;", "speaker", "getSpeaker", "()Lcn/mucang/jiakaoyi/sundial/service/SundialSpeaker;", "Lcn/mucang/jiakaoyi/sundial/service/JkySundialDevice;", "sundialDevice", "getSundialDevice", "()Lcn/mucang/jiakaoyi/sundial/service/JkySundialDevice;", "destroy", "", "init", "isStart", TtmlNode.START, "timerSend", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkySundialService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i0 f9163a;
    private boolean b;
    private JkySundialDevice c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SundialSpeaker f9164d;

    private final void f() {
        i0 i0Var = this.f9163a;
        if (i0Var == null) {
            return;
        }
        g.b(i0Var, null, null, new JkySundialService$timerSend$1(null), 3, null);
    }

    public final void a() {
        ActivityUtil.finishAll();
        i0 i0Var = this.f9163a;
        if (i0Var != null) {
            j0.d(i0Var, null, 1, null);
        }
        this.f9163a = null;
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "Service:计时器服务销毁");
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final JkySundialDevice getC() {
        return this.c;
    }

    public final void c() {
        if (this.b) {
            return;
        }
        this.b = true;
        this.f9163a = j0.a(p2.b(null, 1, null).plus(w0.b()));
        this.c = new JkySundialDevice();
        this.f9164d = new SundialSpeaker();
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        JkySundialDevice jkySundialDevice = this.c;
        r.c(jkySundialDevice);
        SundialSpeaker sundialSpeaker = this.f9164d;
        r.c(sundialSpeaker);
        Sundial.init(context, jkySundialDevice, sundialSpeaker, true);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getB() {
        return this.b;
    }

    public final void e() {
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "Service:计时器服务启动成功");
        c();
        f();
    }
}
