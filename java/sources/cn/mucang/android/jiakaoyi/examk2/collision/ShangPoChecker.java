package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ShangPoChecker extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<k, K2ShangPoQiBuConfig> {
    private VoiceState A;
    public boolean B;
    public boolean C;
    public Boolean D;
    private final cn.mucang.android.jiakaoyi.engine.g.b E;
    public Wheel s;
    public int t;
    public boolean u;
    public StopPosition v;
    private boolean w;
    private boolean x;
    private long y;
    private boolean z;

    public enum StopPosition {
        Middle,
        Less50,
        More50
    }

    public enum VoiceState {
        Start,
        Starting
    }

    class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            ShangPoChecker.this.A = VoiceState.Start;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            ShangPoChecker.this.E.b();
            ShangPoChecker.this.E.g();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3289a;
        public String b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f3290d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f3291e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f3292f;

        public String toString() {
            return this.b + "\n" + this.c + "\n" + this.f3290d + "\n" + this.f3289a + "\n" + this.f3291e + "\n" + this.f3292f;
        }
    }

    public ShangPoChecker(List<k> list, K2ShangPoQiBuConfig k2ShangPoQiBuConfig) {
        super(list, k2ShangPoQiBuConfig);
        this.s = Wheel.None;
        this.u = false;
        this.A = VoiceState.Start;
        this.B = false;
        this.C = false;
        this.E = new cn.mucang.android.jiakaoyi.engine.g.b(3000L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void J(ExamProcessor examProcessor) {
        if (examProcessor.f3104a.p == 1 && this.r == SubStep.Step2 && !this.z) {
            if (this.A == VoiceState.Start) {
                this.E.b();
                if (!TtsManager.m((String) ((K2ShangPoQiBuConfig) this.f3693d).p404137.value)) {
                    this.A = VoiceState.Starting;
                    String str = (String) ((K2ShangPoQiBuConfig) this.f3693d).p404137.value;
                    TtsGrade ttsGrade = TtsGrade.GlobalTip;
                    a aVar = new a();
                    C c = this.f3693d;
                    D(str, ttsGrade, aVar, ((K2ShangPoQiBuConfig) c).p404137.ruleId, l.d(((K2ShangPoQiBuConfig) c).p404137.ruleId));
                }
            }
            K();
        }
    }

    private void K() {
        cn.mucang.android.jiakaoyi.engine.g.b bVar = this.E;
        if (bVar == null || !bVar.d()) {
            return;
        }
        this.E.b();
        this.A = VoiceState.Start;
    }

    private void L(CarPos carPos, k kVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, kVar.r);
        this.s = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = kVar.r;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, kVar.s);
        this.s = wheelR2;
        if (wheelR2 != wheel) {
            this.l = kVar.s;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404138.value).intValue() == 0) {
            return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        }
        return ((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404138.value).intValue() == 1 ? DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS : BaseActivity.INTERVAL;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:101:0x02db  */
    /* JADX WARN: Code duplicated, block: B:21:0x0074  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, k kVar, ExamProcessor examProcessor) {
        boolean zB;
        boolean z;
        int iK;
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
        }
        this.v = null;
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.r)) {
            cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.s);
        }
        L(carPos, kVar);
        this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.s);
        if (this.r == SubStep.Step1) {
            if (((Boolean) ((K2ShangPoQiBuConfig) this.f3693d).p404131.value).booleanValue() && eVar.d().f5269g && this.D == null) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, kVar.m) > 50.0d) {
                    Line line = kVar.i;
                    Pos pos = line.start;
                    Pos pos2 = line.end;
                    Line line2 = kVar.m;
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.start, line2.end))) {
                        this.D = Boolean.FALSE;
                    } else {
                        this.D = Boolean.TRUE;
                    }
                } else {
                    this.D = Boolean.TRUE;
                }
            }
            if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404138.value).intValue() == 0 || ((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404138.value).intValue() == 1) {
                z = this.f3695f;
            } else {
                z = ((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404138.value).intValue() == 2 ? !eVar.d().f5268f : examProcessor.s.f3128a;
            }
            if (z) {
                y(SubStep.Step2);
                Pos pos3 = carPos.wheelRightFront;
                Line line3 = kVar.k;
                int iK2 = (int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end);
                Pos pos4 = carPos.wheelRightBack;
                Line line4 = kVar.k;
                int iK3 = (int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line4.start, line4.end);
                int iMax = Math.max(0, iK2 - 2);
                int iMax2 = Math.max(0, iK3 - 2);
                if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404121.value).intValue() == 0) {
                    this.t = Math.max(iMax, iMax2);
                } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404121.value).intValue() == 1) {
                    this.t = iMax;
                } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404121.value).intValue() == 2) {
                    this.t = iMax2;
                } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404121.value).intValue() == 3) {
                    this.t = (iMax + iMax2) / 2;
                } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404121.value).intValue() == 4) {
                    this.t = Math.min(iMax, iMax2);
                }
                w.g("右边线距离：" + w.n(this.t) + "cm");
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.n)) {
                    Pos pos5 = carPos.carRect.b;
                    Line line5 = kVar.n;
                    double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos5, line5.start, line5.end);
                    Pos pos6 = carPos.carRect.c;
                    Line line6 = kVar.n;
                    double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos6, line6.start, line6.end);
                    if (dK >= 50.0d || dK2 >= 50.0d) {
                        this.v = StopPosition.More50;
                    } else {
                        this.v = StopPosition.Less50;
                    }
                    iK = ((int) (dK + dK2)) / 2;
                } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.m)) {
                    this.v = StopPosition.Middle;
                    if (((Boolean) ((K2ShangPoQiBuConfig) this.f3693d).p404113.value).booleanValue() && !this.w) {
                        this.w = true;
                        B(k0.a(R.string.stop_right), TtsGrade.ExamDeduct);
                    }
                    iK = 0;
                } else {
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.l)) {
                        this.v = StopPosition.Less50;
                    } else {
                        this.v = StopPosition.More50;
                    }
                    Pos pos7 = carPos.carRect.b;
                    Line line7 = kVar.m;
                    double dK3 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos7, line7.start, line7.end);
                    Pos pos8 = carPos.carRect.c;
                    Line line8 = kVar.m;
                    iK = ((int) (dK3 + cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos8, line8.start, line8.end))) / 2;
                }
                if (this.v != StopPosition.Middle) {
                    String str = "车头到桩杆线的距离：" + iK + "cm";
                    b bVar = new b();
                    bVar.c = str;
                    w.g(str);
                    LiveBus.c(bVar);
                }
                if (((Boolean) ((K2ShangPoQiBuConfig) this.f3693d).p404133.value).booleanValue()) {
                    LiveBus.c(new cn.mucang.android.jiakaoyi.examk2.d.a(this.t));
                }
            }
        }
        if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404128.value).intValue() == 0) {
            zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.k(carPos, kVar.j);
        } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404128.value).intValue() == 1) {
            if (!this.x) {
                this.x = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.j);
            }
            zB = kVar.v(carPos);
        } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404128.value).intValue() != 2) {
            zB = false;
        } else {
            int iIntValue = ((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404132.value).intValue();
            if (iIntValue > 0) {
                Pos pos9 = carPos.carRect.b;
                Line line9 = kVar.j;
                double dK4 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos9, line9.start, line9.end);
                Pos pos10 = carPos.carRect.c;
                Line line10 = kVar.j;
                double dK5 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos10, line10.start, line10.end);
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.j)) {
                    double d2 = iIntValue;
                    if (dK4 >= d2 || dK5 >= d2) {
                        zB = true;
                    } else {
                        zB = false;
                    }
                } else {
                    zB = false;
                }
            } else {
                zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, kVar.j);
            }
        }
        if (zB) {
            this.b = true;
            cn.mucang.android.jiakaoyi.framework.log.f.o("ShangPoChecker isEnd:" + ((K2ShangPoQiBuConfig) this.f3693d).p404128.value);
            if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404128.value).intValue() == 1) {
                this.c = this.x;
            } else {
                this.c = true;
            }
        }
        if (this.r == SubStep.Step2) {
            if (((Boolean) ((K2ShangPoQiBuConfig) this.f3693d).p404114.value).booleanValue() && !this.z) {
                if (this.y <= 0) {
                    this.y = eVar.d().L;
                }
                long j = eVar.d().L;
                long j2 = this.y;
                if (j2 > 0 && j - j2 >= ((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404115.value).intValue() * 1000) {
                    J(examProcessor);
                }
            }
            if (eVar.d().c()) {
                if (!this.z) {
                    w.g("");
                    LiveBus.c(new cn.mucang.android.jiakaoyi.examk2.d.a(0));
                }
                this.z = true;
                if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404139.value).intValue() == 1 && !this.B) {
                    Line line11 = kVar.n;
                    Pos pos11 = line11.start;
                    Pos pos12 = line11.end;
                    this.B = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftFront, carPos.wheelLeftBack, pos11, pos12) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelRightFront, carPos.wheelRightBack, pos11, pos12);
                } else if (((Integer) ((K2ShangPoQiBuConfig) this.f3693d).p404139.value).intValue() == 2 && !this.C) {
                    Line line12 = kVar.o;
                    Pos pos13 = line12.start;
                    Pos pos14 = line12.end;
                    this.C = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftFront, carPos.wheelLeftBack, pos13, pos14) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelRightFront, carPos.wheelRightBack, pos13, pos14);
                }
            }
        }
        if (MucangConfig.v()) {
            b bVar2 = new b();
            StringBuilder sb = new StringBuilder();
            sb.append("距离3、4线的距离:右边=");
            Pos pos15 = carPos.carRect.b;
            Line line13 = kVar.l;
            sb.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos15, line13.start, line13.end));
            sb.append("，左边=");
            Pos pos16 = carPos.carRect.c;
            Line line14 = kVar.l;
            sb.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos16, line14.start, line14.end));
            bVar2.b = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("距离5、6线的距离:右边=");
            Pos pos17 = carPos.carRect.b;
            Line line15 = kVar.m;
            sb2.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos17, line15.start, line15.end));
            sb2.append("，左边=");
            Pos pos18 = carPos.carRect.c;
            Line line16 = kVar.m;
            sb2.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos18, line16.start, line16.end));
            bVar2.c = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("距离7、8线的距离:右边=");
            Pos pos19 = carPos.carRect.b;
            Line line17 = kVar.n;
            sb3.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos19, line17.start, line17.end));
            sb3.append("，左边=");
            Pos pos20 = carPos.carRect.c;
            Line line18 = kVar.n;
            sb3.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos20, line18.start, line18.end));
            bVar2.f3290d = sb3.toString();
            StringBuilder sb4 = new StringBuilder();
            sb4.append("距离9、10线的距离:右边=");
            Pos pos21 = carPos.carRect.b;
            Line line19 = kVar.o;
            sb4.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos21, line19.start, line19.end));
            sb4.append("，左边=");
            Pos pos22 = carPos.carRect.c;
            Line line20 = kVar.o;
            sb4.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos22, line20.start, line20.end));
            bVar2.f3289a = sb4.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append("距离右边线线的距离:前边=");
            Pos pos23 = carPos.carRect.b;
            Line line21 = kVar.s;
            sb5.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos23, line21.start, line21.end));
            sb5.append("，后边=");
            Pos pos24 = carPos.carRect.f5820a;
            Line line22 = kVar.s;
            sb5.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos24, line22.start, line22.end));
            bVar2.f3291e = sb5.toString();
            bVar2.f3292f = "右边线距离:" + this.t;
            LiveBus.d(b.class).l(bVar2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    public boolean p() {
        if (this.b) {
            LiveBus.d(b.class).l(null);
        }
        return super.p();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.s = Wheel.None;
        this.D = null;
        y(SubStep.None);
    }
}
