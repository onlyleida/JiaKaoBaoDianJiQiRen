package cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachGpsCheck;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachRouteCheck;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachSignalCheck;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachStopCheck;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.CheckStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import cn.mucang.jiakaoyi.uilib.socket.util.NetworkErrorUtil;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.z, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001b\u001a\u00020\u0007J\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0007R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "isAutoTeach", "", "onChecked", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "", "(ZLkotlin/jvm/functions/Function1;)V", "checkList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;", "indexOfRouteCheck", "", "lastVoice", "", "speakTime", "", "statusModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "play", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;", "playVoice", "resetRearCheck", TtmlNode.START, "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AssistTeachPreChecker implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1<cn.mucang.android.jiakaoyi.hpmap.a.a.b, kotlin.v> f6343a;
    private final int b;
    private final List<BaseTeachCheck> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TeachStatusModel f6344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6346f;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.z$a */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker$play$1", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CheckStatusModel f6347a;

        a(CheckStatusModel checkStatusModel) {
            this.f6347a = checkStatusModel;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            this.f6347a.h(System.currentTimeMillis());
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            TtsListener.a.c(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            this.f6347a.h(System.currentTimeMillis());
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakPaused() {
            TtsListener.a.e(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakResumed() {
            TtsListener.a.g(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AssistTeachPreChecker(boolean z, Function1<? super cn.mucang.android.jiakaoyi.hpmap.a.a.b, kotlin.v> onChecked) {
        kotlin.jvm.internal.r.e(onChecked, "onChecked");
        this.f6343a = onChecked;
        this.b = 2;
        AssistTeachManager assistTeachManager = AssistTeachManager.f6339a;
        List<BaseTeachCheck> listP = kotlin.collections.u.p(new TeachStopCheck(), new TeachGpsCheck(), assistTeachManager.b(), new TeachSignalCheck(z));
        this.c = listP;
        this.f6344d = new TeachStatusModel();
        if (z) {
            listP.add(2, new TeachRouteCheck(assistTeachManager.c()));
        }
    }

    private final void a(CheckStatusModel checkStatusModel) {
        RobotTips.X(checkStatusModel.getB(), null, TtsGrade.AutoTeach, 0, new a(checkStatusModel));
        this.f6346f = checkStatusModel.getB();
    }

    private final void b(CheckStatusModel checkStatusModel) {
        if (n0.g(checkStatusModel.getB())) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!kotlin.jvm.internal.r.a(this.f6346f, checkStatusModel.getB())) {
                a(checkStatusModel);
                this.f6345e = -1L;
            } else if (checkStatusModel.getF6349d() > 0 && jCurrentTimeMillis - this.f6345e > checkStatusModel.getF6349d()) {
                a(checkStatusModel);
                this.f6345e = jCurrentTimeMillis;
            } else {
                if (checkStatusModel.getF6349d() != 0 || this.f6345e < 0) {
                    return;
                }
                a(checkStatusModel);
                this.f6345e = -1L;
            }
        }
    }

    public final void c() {
        for (BaseTeachCheck baseTeachCheck : this.c) {
            if (baseTeachCheck instanceof TeachSignalCheck) {
                ((TeachSignalCheck) baseTeachCheck).d();
            } else {
                baseTeachCheck.b();
            }
        }
    }

    public final void d() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    public final void e() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        this.f6346f = null;
        this.f6345e = 0L;
        Iterator<T> it = this.c.iterator();
        while (it.hasNext()) {
            ((BaseTeachCheck) it.next()).b();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (NetworkErrorUtil.c().e() || ModuleStatusMonitor.d() || BrakeGlobalMonitor.f()) {
            return;
        }
        CheckStatusModel checkStatusModelA = null;
        Iterator<T> it = this.c.iterator();
        while (it.hasNext() && (checkStatusModelA = ((BaseTeachCheck) it.next()).a(signalGetter)) == null) {
        }
        if (checkStatusModelA == null) {
            this.f6343a.invoke(AssistTeachManager.f6339a.b().getF6281f());
            e();
            return;
        }
        if (checkStatusModelA.getF6348a() == AutoTeachStatus.CheckGps || checkStatusModelA.getF6348a() == AutoTeachStatus.CheckStop) {
            c();
        }
        this.f6344d.state = checkStatusModelA.getF6348a().getType();
        this.f6344d.data = JSON.toJSONString(checkStatusModelA.getC());
        b(checkStatusModelA);
        cn.mucang.android.jiakaoyi.unity.c.d.e(this.f6344d);
    }
}
