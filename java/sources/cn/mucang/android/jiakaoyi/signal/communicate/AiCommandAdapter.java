package cn.mucang.android.jiakaoyi.signal.communicate;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaVerResult;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u0006H\u0007J\b\u0010\u000b\u001a\u00020\fH\u0007J\u001c\u0010\r\u001a\u00020\f2\u0012\b\u0002\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u0007J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0007J\b\u0010\u0015\u001a\u00020\fH\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R2\u0010\u0007\u001a&\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00060\u0006 \t*\u0012\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/AiCommandAdapter;", "", "()V", "callback", "Ljava/lang/ref/WeakReference;", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "version", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "kotlin.jvm.PlatformType", "getVersion", "init", "", "requestAiVersion", "saveVersion", "setStudentId", "studentId", "", "setUploadInfo", "hardwareNumber", "deviceNumber", "startOta", "ReportDeviceApi", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AiCommandAdapter {
    private static WeakReference<cn.mucang.android.jiakaoyi.framework.h.b<String>> b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AiCommandAdapter f5394a = new AiCommandAdapter();
    private static final r0<String> c = r0.i("key.aiVersionInfo", "");

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.n$a */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/AiCommandAdapter$ReportDeviceApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "reportDeviceInfo", "", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.framework.p002e.n {
        public final void m() throws Exception {
            httpGet("/api/open/device/report-device-info.htm");
        }
    }

    private AiCommandAdapter() {
    }

    public static final void a() {
        LiveBus.d(AIOtaVerResult.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AiCommandAdapter.b((AIOtaVerResult) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.c.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AiCommandAdapter.c((cn.mucang.android.jiakaoyi.signal.ai.c) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(AIOtaVerResult aIOtaVerResult) {
        AiCommandAdapter aiCommandAdapter = f5394a;
        String version = aIOtaVerResult.getVersion();
        kotlin.jvm.internal.r.d(version, "it.version");
        aiCommandAdapter.j(version);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(cn.mucang.android.jiakaoyi.signal.ai.c cVar) {
        f5394a.j(String.valueOf(cVar.b));
    }

    public static final void i(cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        b = new WeakReference<>(bVar);
        if (cn.mucang.android.jiakaoyi.signal.ai.h.a.a()) {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AiRequestVersion, new byte[]{0, 1});
        } else {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AiQueryInfo, new byte[]{0, 0});
        }
    }

    private final void j(String str) {
        cn.mucang.android.jiakaoyi.framework.h.b<String> bVar;
        c.j(str);
        WeakReference<cn.mucang.android.jiakaoyi.framework.h.b<String>> weakReference = b;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            bVar.callback(str);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("获取到 AI 版本：", str));
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("aiVersion", str);
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.a
            @Override // java.lang.Runnable
            public final void run() {
                AiCommandAdapter.k();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k() {
        try {
            Result.Companion companion = Result.INSTANCE;
            new a().m();
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    public static final void l(final long j) {
        if (cn.mucang.android.jiakaoyi.signal.ai.h.a.b()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("AI 发送学员 ID:", Long.valueOf(j)));
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.AiSetStudentId, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.e
                @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
                public final byte[] a() {
                    return AiCommandAdapter.m(j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] m(long j) {
        v vVar = new v(true);
        vVar.g(j);
        return vVar.b();
    }

    public static final void n(String hardwareNumber, String deviceNumber) {
        kotlin.jvm.internal.r.e(hardwareNumber, "hardwareNumber");
        kotlin.jvm.internal.r.e(deviceNumber, "deviceNumber");
        if (cn.mucang.android.jiakaoyi.signal.ai.h.a.a()) {
            return;
        }
        Charset UTF_8 = StandardCharsets.UTF_8;
        kotlin.jvm.internal.r.d(UTF_8, "UTF_8");
        final byte[] bytes = hardwareNumber.getBytes(UTF_8);
        kotlin.jvm.internal.r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        Charset UTF_9 = StandardCharsets.UTF_8;
        kotlin.jvm.internal.r.d(UTF_9, "UTF_8");
        final byte[] bytes2 = deviceNumber.getBytes(UTF_9);
        kotlin.jvm.internal.r.d(bytes2, "(this as java.lang.String).getBytes(charset)");
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.AiSetHardwareId, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.d
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return AiCommandAdapter.o(bytes, bytes2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] o(byte[] hBytes, byte[] dBytes) {
        kotlin.jvm.internal.r.e(hBytes, "$hBytes");
        kotlin.jvm.internal.r.e(dBytes, "$dBytes");
        v vVar = new v(true);
        vVar.f(hBytes.length);
        vVar.d(hBytes);
        vVar.f(dBytes.length);
        vVar.d(dBytes);
        return vVar.b();
    }

    public static final void p() {
        if (cn.mucang.android.jiakaoyi.signal.ai.h.a.a()) {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AiStartOrder, new byte[]{0, 1});
        } else {
            cn.mucang.android.core.utils.u.h("V2 版本 Ai 协议不支持手动升级");
        }
    }
}
