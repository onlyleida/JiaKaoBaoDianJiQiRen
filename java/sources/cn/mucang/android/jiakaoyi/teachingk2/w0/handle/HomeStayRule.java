package cn.mucang.android.jiakaoyi.teachingk2.w0.handle;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipSpeaker;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsArguments;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsRule;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.t;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.w0.b.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0018\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0010R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/HomeStayRule;", "", "isK2", "", "tipSpeaker", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "tipsValue", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "arguments", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "(ZLcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V", "homeStayCheckTask", "Ljava/lang/Runnable;", "openExamTip", "openTrainTip", "onPageEnter", "", "onPageOut", "runTask", "task", "delay", "", "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HomeStayRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8758a;
    private final TipSpeaker b;
    private final t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TipsArguments f8759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f8762g = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.w0.b.a
        @Override // java.lang.Runnable
        public final void run() {
            HomeStayRule.a(this.f8752a);
        }
    };

    public HomeStayRule(boolean z, TipSpeaker tipSpeaker, t tVar, TipsArguments tipsArguments) {
        this.f8758a = z;
        this.b = tipSpeaker;
        this.c = tVar;
        this.f8759d = tipsArguments;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(HomeStayRule this$0) {
        r.e(this$0, "this$0");
        t tVar = this$0.c;
        if (tVar == null) {
            return;
        }
        if (tVar.j < 600000) {
            if (this$0.f8760e) {
                return;
            }
            this$0.f8760e = true;
            TipSpeaker tipSpeaker = this$0.b;
            if (tipSpeaker == null) {
                return;
            }
            TipSpeaker.g(tipSpeaker, this$0.f8758a ? TipsRule.GUIDE_100106 : TipsRule.GUIDE_130106, false, false, false, null, 26, null);
            return;
        }
        if (this$0.f8761f) {
            return;
        }
        this$0.f8761f = true;
        TipSpeaker tipSpeaker2 = this$0.b;
        if (tipSpeaker2 == null) {
            return;
        }
        TipSpeaker.g(tipSpeaker2, this$0.f8758a ? TipsRule.GUIDE_100107 : TipsRule.GUIDE_130107, false, false, false, null, 26, null);
    }

    private final void e(Runnable runnable, long j) {
        u.e(runnable);
        u.d(runnable, j);
    }

    public final void c() {
        TipsArguments tipsArguments = this.f8759d;
        if (tipsArguments == null) {
            return;
        }
        if (this.f8760e && this.f8761f) {
            return;
        }
        e(this.f8762g, tipsArguments.getParamTimeMs(this.f8758a ? TipsRule.GUIDE_100106.getRuleCode() : TipsRule.GUIDE_130106.getRuleCode(), DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS));
    }

    public final void d() {
        u.e(this.f8762g);
    }

    public final void f() {
        u.e(this.f8762g);
    }
}
