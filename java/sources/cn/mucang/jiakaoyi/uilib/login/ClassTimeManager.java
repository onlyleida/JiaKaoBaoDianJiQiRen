package cn.mucang.jiakaoyi.uilib.login;

import android.util.SparseBooleanArray;
import androidx.lifecycle.z;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;", "", "()V", "hasSpeak", "Landroid/util/SparseBooleanArray;", "job", "Lkotlinx/coroutines/Job;", "noClass", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Pair;", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "", "getNoClass", "()Landroidx/lifecycle/MutableLiveData;", "time", "Lcn/mucang/jiakaoyi/uilib/login/AppointClassEntity;", "getTime", TtmlNode.END, "", TtmlNode.START, "timeOutCallback", "Lcn/mucang/jiakaoyi/uilib/login/TimeOutCallback;", "ClassTimeTip", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ClassTimeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ClassTimeManager f9354a = new ClassTimeManager();
    private static final z<AppointClassEntity> b = new z<>();
    private static final z<Pair<LoginType, Boolean>> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final SparseBooleanArray f9355d = new SparseBooleanArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static t1 f9356e;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;", "", "tip", "", "time", "", "gap", "", "(Ljava/lang/String;ILjava/lang/String;JI)V", "getTime", "()J", "getTip", "()Ljava/lang/String;", "nearTime", "", "remainTime", "Ten", "Five", "NearOver", "Over", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public enum ClassTimeTip {
        Ten("预约课时将在10分钟后结束，请在驾考宝典续约!", 600000, 2000),
        Five("预约课时将在5分钟后结束，请在驾考宝典续约!", DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS, 2000),
        NearOver("预约课时即将结束，将退出登录，如需使用请续约!", 30000, 2000),
        Over("", 0, 2000);

        private final int gap;
        private final long time;
        private final String tip;

        ClassTimeTip(String str, long j, int i) {
            this.tip = str;
            this.time = j;
            this.gap = i;
        }

        public final long getTime() {
            return this.time;
        }

        public final String getTip() {
            return this.tip;
        }

        public final boolean nearTime(long remainTime) {
            long j = this.time;
            return remainTime <= j && j - ((long) this.gap) <= remainTime;
        }
    }

    private ClassTimeManager() {
    }

    public static final void b() {
        t1 t1Var = f9356e;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        f9355d.clear();
        b.l(null);
    }

    public static final void e(TimeOutCallback timeOutCallback) {
        r.e(timeOutCallback, "timeOutCallback");
        z<AppointClassEntity> zVar = b;
        if (zVar.e() == null) {
            return;
        }
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        AppointClassEntity appointClassEntityE = zVar.e();
        r.c(appointClassEntityE);
        ref$LongRef.element = appointClassEntityE.getF9429a();
        t1 t1Var = f9356e;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        f9356e = kotlinx.coroutines.g.b(j0.b(), null, null, new ClassTimeManager$start$1(ref$LongRef, timeOutCallback, null), 3, null);
    }

    public final z<Pair<LoginType, Boolean>> c() {
        return c;
    }

    public final z<AppointClassEntity> d() {
        return b;
    }
}
