package cn.mucang.android.jiakaoyi.teachingk2.error;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b&\u0018\u00002\u00020\u0001BI\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0002\u0010\fJ\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001cH&J\b\u0010\u001f\u001a\u00020 H\u0016R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000f\"\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0012¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "", "intent", "Lkotlin/Pair;", "", "", "speakOnce", "", "hasSpeak", "needPause", "driveActionCheck", "key", "(Lkotlin/Pair;ZZZZLjava/lang/String;)V", "canSpeak", "getDriveActionCheck", "()Z", "getHasSpeak", "setHasSpeak", "(Z)V", "getIntent", "()Lkotlin/Pair;", "getKey", "()Ljava/lang/String;", "getNeedPause", "getSpeakOnce", "setSpeakOnce", "isDriving", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "isTriggered", "signal", "reset", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Pair<String, Integer> f7075a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f7076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f7077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f7078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f7079g;

    public BaseCheck(Pair<String, Integer> intent, boolean z, boolean z2, boolean z3, boolean z4, String key) {
        r.e(intent, "intent");
        r.e(key, "key");
        this.f7075a = intent;
        this.b = z;
        this.c = z2;
        this.f7076d = z3;
        this.f7077e = z4;
        this.f7078f = key;
        this.f7079g = i0.b(key, true);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF7079g() {
        return this.f7079g;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getF7077e() {
        return this.f7077e;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getC() {
        return this.c;
    }

    public final Pair<String, Integer> d() {
        return this.f7075a;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getF7076d() {
        return this.f7076d;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getB() {
        return this.b;
    }

    public final boolean g(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        return signalGetter.d().b();
    }

    public abstract boolean h(e eVar);

    public void i() {
    }

    public final void j(boolean z) {
        this.c = z;
    }

    public /* synthetic */ BaseCheck(Pair pair, boolean z, boolean z2, boolean z3, boolean z4, String str, int i, o oVar) {
        this(pair, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? true : z3, (i & 16) != 0 ? false : z4, str);
    }
}
