package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.d1;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OperateResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.v0;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends v0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f8591d;
    private boolean j;
    SimpleTtsListener l;
    SimpleTtsListener m;
    private long b = 0;
    private long c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8592e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8593f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8594g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8595h = false;
    private boolean i = false;
    private cn.mucang.android.jiakaoyi.hpmap.a.a.g.c k = null;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.d1.a$a, reason: collision with other inner class name */
    class C0146a extends SimpleTtsListener {
        C0146a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            a.this.f8591d = System.currentTimeMillis();
            a.this.j = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            a.this.f8591d = System.currentTimeMillis();
            a.this.j = true;
        }
    }

    class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            a.this.b = System.currentTimeMillis();
            a.this.f8592e = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            a.this.b = System.currentTimeMillis();
            a.this.f8592e = true;
        }
    }

    class c extends SimpleTtsListener {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            a.this.c = System.currentTimeMillis();
            a.this.f8593f = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            a.this.c = System.currentTimeMillis();
            a.this.f8593f = true;
        }
    }

    public a() {
        new C0146a();
        this.l = new b();
        this.m = new c();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.a, cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public void a(boolean z) {
        super.a(z);
        if (z) {
            return;
        }
        this.f8594g = true;
        this.k = null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public OperateResultModel b(e eVar, String str) {
        j jVar;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar;
        CarPos carPosC = eVar.c();
        CarModel carModelD = eVar.d();
        if (!this.f8667a || (jVar = n.b().c) == null) {
            return null;
        }
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list = jVar.f4725f;
        if (!g.b(list) && carPosC != null && (cVar = carPosC.carRect) != null && cVar.f5822e != null) {
            OperateResultModel operateResultModel = new OperateResultModel();
            operateResultModel.projectId = str;
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar2 = this.k;
            if (cVar2 == null) {
                for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar3 : list) {
                    if (cVar3.m(carPosC)) {
                        this.k = cVar3;
                        break;
                    }
                }
            } else if (cVar2.v(carPosC)) {
                this.k = null;
            }
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar4 = this.k;
            if (cVar4 != null) {
                operateResultModel.inside = 1;
                int i = (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, cVar4.o) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, cVar4.p)) ? 1 : 0;
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, cVar4.m)) {
                    i = 5;
                }
                if (this.f8595h && carModelD.c() && carModelD.F.isForward() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPosC, cVar4.k)) {
                    i = 4;
                }
                if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPosC, cVar4.w)) {
                    operateResultModel.state = 0;
                } else if (carPosC.center.vectorTo(carPosC.carRect.c).dot(carPosC.center.vectorTo(cVar4.o.start)) > 0.0d) {
                    operateResultModel.state = 1;
                    if (!this.f8595h) {
                        this.f8595h = true;
                    }
                }
                if (this.f8595h && i != 1 && carModelD.c() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPosC, cVar4.w)) {
                    Pos posMeanWith = carModelD.F.isForward() ? new Pos(carPosC.carRect.b).meanWith(carPosC.carRect.c) : new Pos(carPosC.carRect.f5820a).meanWith(carPosC.carRect.f5821d);
                    Line line = cVar4.o;
                    double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(posMeanWith, line.start, line.end);
                    Line line2 = cVar4.p;
                    double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(posMeanWith, line2.start, line2.end) - dK;
                    double d2 = Double.parseDouble(String.format("%.1f", Double.valueOf(Math.abs(dK2))));
                    operateResultModel.diffDistance = d2;
                    if (d2 > 25.0d && this.f8593f && System.currentTimeMillis() - this.c >= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                        String strA = dK2 > 0.0d ? k0.a(R.string.teachbase_body_left_tip) : k0.a(R.string.teachbase_body_right_tip);
                        this.f8593f = false;
                        TtsManager.C(strA, TtsGrade.TeachError, this.m);
                    }
                }
                if (i == 1 && this.f8592e && !this.i && System.currentTimeMillis() - this.b >= 3000) {
                    this.f8592e = false;
                    TtsManager.C(k0.a(R.string.teachbase_car_press_line), TtsGrade.TeachError, this.l);
                }
                operateResultModel.pressState = i;
                this.f8594g = true;
                return operateResultModel;
            }
            if (this.f8594g) {
                this.f8594g = false;
                this.f8595h = false;
                operateResultModel.inside = 0;
                operateResultModel.pressState = 0;
                return operateResultModel;
            }
        }
        return null;
    }
}
