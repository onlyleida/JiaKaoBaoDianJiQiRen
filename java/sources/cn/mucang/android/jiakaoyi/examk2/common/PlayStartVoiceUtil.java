package cn.mucang.android.jiakaoyi.examk2.common;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PlayStartVoiceUtil {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.pos.c f3309f;
    private cn.mucang.android.jiakaoyi.signal.c.e m;
    private K2GlobalConfig n;
    private cn.mucang.android.jiakaoyi.examk2.a.b o;
    private cn.mucang.android.jiakaoyi.framework.h.b<K2ExamLogic.c> p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3306a = false;
    private boolean b = false;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3307d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WayState f3308e = WayState.StepNone;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.g.b f3310g = new cn.mucang.android.jiakaoyi.engine.g.b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f3311h = "";
    private String i = "";
    private final List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> j = new ArrayList();
    private final SimpleTtsListener k = new a();
    private final SimpleTtsListener l = new b();

    public enum WayState {
        StepNone,
        Step1,
        Step2,
        Step3
    }

    class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            PlayStartVoiceUtil.this.f3308e = WayState.StepNone;
        }
    }

    class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            PlayStartVoiceUtil.this.f3308e = WayState.StepNone;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            PlayStartVoiceUtil.this.f3310g.g();
        }
    }

    class c extends SimpleTtsListener {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            PlayStartVoiceUtil.this.f3308e = WayState.Step2;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            PlayStartVoiceUtil.this.f3310g.b();
            PlayStartVoiceUtil.this.f3310g.g();
        }
    }

    class d extends SimpleTtsListener {
        d() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            PlayStartVoiceUtil.this.f3308e = WayState.StepNone;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            PlayStartVoiceUtil.this.f3310g.b();
            PlayStartVoiceUtil.this.f3310g.g();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean c() {
        if (this.m.c().carRect == null) {
            if (!this.f3306a) {
                this.f3306a = true;
                cn.mucang.android.jiakaoyi.framework.log.f.o("无法获取车身数据");
                u.h(k0.a(R.string.car_pos_fail));
            }
            return false;
        }
        cn.mucang.android.jiakaoyi.mapcollect.c.j jVarC = this.o.c();
        if (this.j.isEmpty()) {
            if (((Boolean) this.n.p401126.value).booleanValue()) {
                for (String str : ((String) this.n.p401127.value).split("-")) {
                    if (y.a(str)) {
                        List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list = jVarC.f4723d.get(Step.findWithK2Number(Integer.parseInt(str)));
                        if (cn.mucang.android.core.utils.g.d(list)) {
                            this.j.addAll(list);
                        }
                    }
                }
            } else {
                for (Step step : Step.k2Steps()) {
                    if (step != Step.K2_BianXianShiBie && step != Step.K2_QiDianQuYu && step != Step.K2_Global && (step != Step.K2_ShangPoQiBu || !cn.mucang.android.jiakaoyi.signal.utils.f.b())) {
                        List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list2 = jVarC.f4723d.get(step);
                        if (cn.mucang.android.core.utils.g.d(list2)) {
                            this.j.addAll(list2);
                        }
                    }
                }
            }
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : this.j) {
            if (this.m.d().F.isForward() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(this.m.c(), bVar.f().middle()) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(this.m.c(), bVar.f())) {
                return true;
            }
        }
        this.f3307d = true;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(Boolean bool) {
        if (bool.booleanValue()) {
            TtsManager.u(this.i, TtsGrade.GlobalTip, this.k);
        } else {
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(Boolean bool) {
        if (bool.booleanValue()) {
            TtsManager.u(this.i, TtsGrade.GlobalTip, this.k);
        } else {
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(Boolean bool) {
        if (bool.booleanValue()) {
            TtsManager.u(this.i, TtsGrade.GlobalTip, this.k);
        } else {
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(Boolean bool) {
        if (bool.booleanValue()) {
            TtsManager.u(this.i, TtsGrade.GlobalTip, this.k);
        } else {
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.k);
        }
    }

    private void l(boolean z, boolean z2, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        if (!z && !z2) {
            WayState wayState = this.f3308e;
            if (wayState == WayState.StepNone || wayState == WayState.Step1) {
                this.f3308e = WayState.Step2;
                if (bVar != null) {
                    bVar.callback(Boolean.TRUE);
                    return;
                }
                return;
            }
            return;
        }
        WayState wayState2 = this.f3308e;
        if (wayState2 == WayState.StepNone) {
            this.f3308e = WayState.Step1;
            if (bVar != null) {
                bVar.callback(Boolean.FALSE);
                return;
            }
            return;
        }
        if (wayState2 == WayState.Step2 && z2) {
            t(WayState.Step3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void m() {
        boolean z = this.m.d().f5270h;
        if (!((Boolean) this.n.p401141.value).booleanValue()) {
            v(z, null);
            return;
        }
        this.i = k0.a(R.string.start_engine);
        this.f3311h = k0.a(R.string.stop_engine);
        if (!((Boolean) this.n.p401154.value).booleanValue()) {
            v(z, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.examk2.common.j
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f3325a.e((Boolean) obj);
                }
            });
            return;
        }
        if (!z) {
            w();
            return;
        }
        WayState wayState = this.f3308e;
        WayState wayState2 = WayState.StepNone;
        if (wayState == wayState2) {
            this.f3308e = WayState.Step1;
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.l);
        } else if (wayState == WayState.Step1) {
            u(wayState2);
        } else if (wayState == WayState.Step2) {
            t(WayState.Step3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void n() {
        boolean z = this.m.d().l;
        if (!((Boolean) this.n.p401141.value).booleanValue()) {
            v(z, null);
            return;
        }
        this.i = k0.a(R.string.push_honk);
        this.f3311h = k0.a(R.string.release_honk);
        if (!((Boolean) this.n.p401154.value).booleanValue()) {
            v(z, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.examk2.common.k
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f3326a.g((Boolean) obj);
                }
            });
            return;
        }
        if (!z) {
            w();
            return;
        }
        WayState wayState = this.f3308e;
        WayState wayState2 = WayState.StepNone;
        if (wayState == wayState2) {
            this.f3308e = WayState.Step1;
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.l);
        } else if (wayState == WayState.Step1) {
            u(wayState2);
        } else if (wayState == WayState.Step2) {
            t(WayState.Step3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void o() {
        boolean zJ = this.m.d().j(Light.TurnLeftLight);
        boolean zJ2 = this.m.d().j(Light.TurnRightLight);
        if (!((Boolean) this.n.p401141.value).booleanValue()) {
            l(zJ, zJ2, null);
            return;
        }
        this.i = k0.a(R.string.open_right_light);
        this.f3311h = k0.a(R.string.close_light);
        if (!((Boolean) this.n.p401154.value).booleanValue()) {
            l(zJ, zJ2, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.examk2.common.l
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f3327a.i((Boolean) obj);
                }
            });
            return;
        }
        if (!zJ && !zJ2) {
            w();
            return;
        }
        WayState wayState = this.f3308e;
        WayState wayState2 = WayState.StepNone;
        if (wayState == wayState2) {
            this.f3308e = WayState.Step1;
            TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.l);
            return;
        }
        if (wayState == WayState.Step1) {
            u(wayState2);
            return;
        }
        WayState wayState3 = WayState.Step2;
        if (wayState != wayState3) {
            if (wayState == WayState.Step3) {
                u(wayState3);
            }
        } else if (zJ2) {
            t(wayState2);
        } else {
            if (TtsManager.m(this.i)) {
                return;
            }
            this.f3310g.b();
            this.f3308e = WayState.Step3;
            TtsManager.u(this.i, TtsGrade.GlobalTip, new c());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void p() {
        WayState wayState;
        if (this.m.c().carRect == null) {
            if (this.f3306a) {
                return;
            }
            this.f3306a = true;
            cn.mucang.android.jiakaoyi.framework.log.f.o("无法获取车身数据");
            u.h(k0.a(R.string.car_pos_fail));
            return;
        }
        if (this.o.c().k.isEmpty()) {
            return;
        }
        if (!this.b) {
            for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.h hVar : this.o.c().k) {
                if (hVar.o == null) {
                    Line line = hVar.i;
                    Pos pos = line.start;
                    Pos pos2 = line.end;
                    Line line2 = hVar.k;
                    hVar.o = new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.start, line2.end);
                }
                boolean zP = cn.mucang.android.jiakaoyi.hpmap.a.b.a.p(this.m.c().carRect, hVar.o);
                this.b = zP;
                if (zP) {
                    this.f3309f = hVar.o;
                    break;
                }
            }
        }
        if (!((Boolean) this.n.p401141.value).booleanValue()) {
            r(this.m, null);
            return;
        }
        this.i = k0.a(R.string.exit_qidian_area);
        this.f3311h = k0.a(R.string.enter_qidian_area);
        if (!((Boolean) this.n.p401154.value).booleanValue()) {
            r(this.m, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.examk2.common.m
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f3328a.k((Boolean) obj);
                }
            });
            return;
        }
        if (!this.b && (wayState = this.f3308e) != WayState.Step2) {
            WayState wayState2 = WayState.StepNone;
            if (wayState == wayState2) {
                this.f3308e = WayState.Step1;
                TtsManager.u(this.f3311h, TtsGrade.GlobalTip, this.l);
                return;
            } else {
                if (wayState == WayState.Step1) {
                    u(wayState2);
                    return;
                }
                return;
            }
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3309f;
        if (cVar != null) {
            WayState wayState3 = this.f3308e;
            WayState wayState4 = WayState.Step2;
            if (wayState3 == wayState4 && !cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, this.m.c().wheelLeftFront) && !cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.f3309f, this.m.c().wheelRightFront)) {
                if (this.f3308e == wayState4) {
                    this.b = false;
                    t(WayState.Step3);
                    return;
                }
                return;
            }
        }
        w();
    }

    private void r(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        WayState wayState;
        if (!this.b && (wayState = this.f3308e) != WayState.Step2) {
            if (wayState == WayState.StepNone) {
                this.f3308e = WayState.Step1;
                if (bVar != null) {
                    bVar.callback(Boolean.FALSE);
                    return;
                }
                return;
            }
            return;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3309f;
        if (cVar != null && !cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, eVar.c().wheelLeftFront) && !cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.f3309f, eVar.c().wheelRightFront)) {
            if (this.f3308e == WayState.Step2) {
                t(WayState.Step3);
                return;
            }
            return;
        }
        WayState wayState2 = this.f3308e;
        if (wayState2 == WayState.StepNone || wayState2 == WayState.Step1) {
            this.f3308e = WayState.Step2;
            if (bVar != null) {
                bVar.callback(Boolean.TRUE);
            }
        }
    }

    private void s() {
        if (this.f3309f != null) {
            this.f3309f = null;
        }
        cn.mucang.android.jiakaoyi.engine.g.b bVar = this.f3310g;
        if (bVar != null) {
            bVar.b();
        }
        this.f3306a = false;
        this.f3311h = "";
        this.f3311h = "";
        this.f3308e = WayState.StepNone;
    }

    private void t(WayState wayState) {
        s();
        cn.mucang.android.jiakaoyi.framework.h.b<K2ExamLogic.c> bVar = this.p;
        if (bVar != null) {
            bVar.callback(new K2ExamLogic.c(K2ExamLogic.PostFunction.StartCost));
        }
        this.f3308e = wayState;
    }

    private void u(WayState wayState) {
        cn.mucang.android.jiakaoyi.engine.g.b bVar = this.f3310g;
        if (bVar == null || !bVar.d()) {
            return;
        }
        this.f3310g.b();
        this.f3308e = wayState;
    }

    private void v(boolean z, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        if (!z) {
            WayState wayState = this.f3308e;
            if (wayState == WayState.StepNone || wayState == WayState.Step1) {
                this.f3308e = WayState.Step2;
                if (bVar != null) {
                    bVar.callback(Boolean.TRUE);
                    return;
                }
                return;
            }
            return;
        }
        WayState wayState2 = this.f3308e;
        if (wayState2 != WayState.StepNone) {
            if (wayState2 == WayState.Step2) {
                t(WayState.Step3);
            }
        } else {
            this.f3308e = WayState.Step1;
            if (bVar != null) {
                bVar.callback(Boolean.FALSE);
            }
        }
    }

    private void w() {
        WayState wayState = this.f3308e;
        WayState wayState2 = WayState.Step2;
        if (wayState != wayState2) {
            this.f3310g.b();
            if (!TtsManager.m(this.i)) {
                this.f3308e = wayState2;
                TtsManager.u(this.i, TtsGrade.GlobalTip, new d());
            }
        }
        u(WayState.StepNone);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void q(cn.mucang.android.jiakaoyi.signal.c.e eVar, K2GlobalConfig k2GlobalConfig, cn.mucang.android.jiakaoyi.examk2.a.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<K2ExamLogic.c> bVar2) {
        this.m = eVar;
        this.n = k2GlobalConfig;
        this.o = bVar;
        this.p = bVar2;
        T t = k2GlobalConfig.p401155.value;
        if (t != 0 && ((Integer) t).intValue() != this.f3310g.c()) {
            this.f3310g = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) k2GlobalConfig.p401155.value).longValue());
        }
        int iIntValue = ((Integer) k2GlobalConfig.p401153.value).intValue();
        if (iIntValue == 1) {
            o();
            return;
        }
        if (iIntValue == 2) {
            m();
            return;
        }
        if (iIntValue == 3) {
            p();
            return;
        }
        if (iIntValue != 4) {
            if (iIntValue != 5) {
                return;
            }
            n();
        } else if (!this.c && c() && this.f3307d) {
            this.c = true;
            t(WayState.StepNone);
        }
    }
}
