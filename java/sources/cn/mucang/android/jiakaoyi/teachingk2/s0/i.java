package cn.mucang.android.jiakaoyi.teachingk2.s0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class i extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k, SimpleTeachingConfig> {
    private int A;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public Wheel w;
    public cn.mucang.android.jiakaoyi.signal.pos.c x;
    public boolean y;
    private long z;

    class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            i.this.z = System.currentTimeMillis();
        }
    }

    public i(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k> cVar) {
        this(list, cVar, false);
    }

    private void J(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar) {
        this.m = null;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.r)) {
            this.m = kVar.r;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.s)) {
            this.m = kVar.s;
        }
        Line line = this.m;
        this.s = line == kVar.r;
        this.t = line == kVar.s;
    }

    private void K(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar) {
        Line line = kVar.i;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = kVar.l;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos, pos2, line2.start, line2.end))) {
            Pos pos3 = carPos.wheelRightFront;
            Line line3 = kVar.s;
            double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end);
            Pos pos4 = carPos.wheelRightBack;
            Line line4 = kVar.s;
            int iMin = (int) Math.min(dK, cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line4.start, line4.end));
            if (iMin > 25 && iMin <= 35) {
                iMin = 30;
            } else if (iMin > 35 && iMin <= 45) {
                iMin = 40;
            } else if (iMin > 45 && iMin <= 55) {
                iMin = 50;
            }
            if (iMin == 30) {
                String strA = k0.a(R.string.teachingk2_right_30_continue);
                if (!strA.equals(TtsManager.g(2)) && System.currentTimeMillis() - this.z > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                    AbsTtsDataProvider absTtsDataProvider = (AbsTtsDataProvider) DataProviderRegister.f3433a.a(AbsTtsDataProvider.class, null);
                    a aVar = new a();
                    if (absTtsDataProvider != null) {
                        absTtsDataProvider.startSpeechLow(strA, TtsGrade.TeachDeduct, aVar);
                    } else {
                        TtsManager.C(strA, TtsGrade.TeachError, aVar);
                    }
                }
                this.A = 0;
                return;
            }
            if (iMin != 40 && iMin != 50) {
                this.A = 0;
                return;
            }
            String str = String.format(k0.a(R.string.teachingk2_right_side_distance), Integer.valueOf(iMin));
            if (str.equals(TtsManager.g(2)) || this.A == iMin) {
                return;
            }
            this.A = iMin;
            AbsTtsDataProvider absTtsDataProvider2 = (AbsTtsDataProvider) DataProviderRegister.f3433a.a(AbsTtsDataProvider.class, null);
            if (absTtsDataProvider2 != null) {
                absTtsDataProvider2.startSpeechLow(str, TtsGrade.TeachError);
            } else {
                TtsManager.z(str, TtsGrade.TeachError);
            }
        }
    }

    private void L(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, kVar.r);
        this.w = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = kVar.r;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, kVar.s);
        this.w = wheelR2;
        if (wheelR2 != wheel) {
            this.l = kVar.s;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar) {
        Line lineL = kVar.l();
        if (kVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, kVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
            Line line = kVar.m;
            Pos pos = line.start;
            Pos pos2 = line.end;
            Line line2 = kVar.n;
            this.x = new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.start, line2.end);
        }
        J(carPos, kVar);
        L(carPos, kVar);
        if (eVar.d().c()) {
            K(carPos, kVar);
        }
        this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.x, carPos.carRect.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.x, carPos.carRect.c);
        Pos pos3 = carPos.wheelRightFront;
        Line line3 = kVar.s;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end);
        Pos pos4 = carPos.wheelRightBack;
        Line line4 = kVar.s;
        int iMax = (int) Math.max(dK, cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line4.start, line4.end));
        this.v = iMax;
        this.v = Math.max(0, iMax - 3);
        if (!this.y) {
            this.y = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.i);
        }
        if (this.r == SubStep.Step1) {
            if (this.f3695f && !this.j) {
                w.O();
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, kVar.j)) {
                this.b = true;
                this.c = true;
                cn.mucang.android.jiakaoyi.framework.log.f.o("ShangPoTeachingChecker isEnd");
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.w = Wheel.None;
        this.r = SubStep.None;
    }

    public i(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k> cVar, boolean z) {
        super(list, null, cVar, z);
        this.u = false;
        this.v = 0;
        this.w = Wheel.None;
        this.A = 0;
    }
}
