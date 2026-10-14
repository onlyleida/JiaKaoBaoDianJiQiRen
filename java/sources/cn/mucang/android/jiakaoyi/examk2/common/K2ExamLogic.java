package cn.mucang.android.jiakaoyi.examk2.common;

import android.os.SystemClock;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.r;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.collision.QiDianChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.examk2.event.ShangPoTimeDownEvent;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.countdown.CountDownLogic;
import cn.mucang.android.jiakaoyi.hpmap.model.ReportStepModel;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.ExamModelUtils;
import cn.mucang.jiakaoyi.uilib.record.UploadRecordManager;
import cn.mucang.jiakaoyi.uilib.ui.dialog.m0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class K2ExamLogic implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    public long D;
    public n F;
    private cn.mucang.android.jiakaoyi.framework.h.b<c> b;
    private K2GlobalConfig c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q f3297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CountDownDialog f3298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private p f3299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PlayStartVoiceUtil f3300g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JCommonDialog f3301h;
    private m0 i;
    private final cn.mucang.android.jiakaoyi.examk2.a.b j;
    private final CountDownLogic k;
    private int s;
    private boolean v;
    private boolean w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Step f3296a = null;
    private final List<cn.mucang.android.jiakaoyi.engine.model.a> l = new ArrayList();
    private final List<cn.mucang.android.jiakaoyi.engine.f.b> m = new ArrayList();
    private final List<cn.mucang.android.jiakaoyi.engine.f.a> n = new ArrayList();
    private final Map<Step, Boolean> o = new HashMap();
    private final List<String> p = new ArrayList();
    private int q = 100;
    private int r = 4;
    private int t = 0;
    private long u = 0;
    private boolean x = false;
    private boolean y = false;
    private boolean z = true;
    private boolean A = false;
    private boolean B = false;
    private Long C = 0L;
    public boolean E = false;
    public final ArrayList<String> G = new ArrayList<>();
    public cn.mucang.android.jiakaoyi.engine.f.b H = new a();
    public cn.mucang.android.jiakaoyi.engine.f.a I = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.examk2.common.d
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
            this.f3319a.B(bVar, cVar);
        }
    };
    private final Runnable K = new b();

    public enum PostFunction {
        StartCost,
        StopExam,
        PauseExam,
        Other
    }

    class a implements cn.mucang.android.jiakaoyi.engine.f.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
            K2ExamLogic k2ExamLogic = K2ExamLogic.this;
            if (k2ExamLogic.E) {
                k2ExamLogic.l.add(aVar);
                UploadRecordManager.a(aVar);
                K2ExamLogic.this.r(aVar);
                Iterator it = K2ExamLogic.this.m.iterator();
                while (it.hasNext()) {
                    ((cn.mucang.android.jiakaoyi.engine.f.b) it.next()).onOneError(aVar);
                }
                if (aVar.f3102a.step != Step.K2_QiDianQuYu || K2ExamLogic.this.A) {
                    return;
                }
                K2ExamLogic.this.A = true;
                LiveBus.c(new ReportStepModel(aVar.f3102a.step));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f fVar) {
            String strA;
            int i;
            if (fVar.b) {
                if (K2ExamLogic.this.c != null) {
                    strA = (String) K2ExamLogic.this.c.p401134.value;
                    i = K2ExamLogic.this.c.p401134.ruleId;
                } else {
                    strA = k0.a(R.string.exam_pass);
                    i = 0;
                }
            } else if (K2ExamLogic.this.c != null) {
                strA = (String) K2ExamLogic.this.c.p401135.value;
                i = K2ExamLogic.this.c.p401135.ruleId;
            } else {
                strA = k0.a(R.string.exam_fail);
                i = 0;
            }
            K2ExamLogic.this.q = 100;
            K2ExamLogic.e(K2ExamLogic.this);
            K2ExamLogic.this.j.reset();
            if (TtsManager.l()) {
                TtsManager.H();
            }
            if (i != 0) {
                TtsManager.t(strA, TtsGrade.ExamDeduct, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
            } else {
                TtsManager.r(strA, TtsGrade.ExamDeduct);
            }
            if (((cn.mucang.jiakaoyi.uilib.e) MucangConfig.i().getApplication()).R()) {
                if (K2ExamLogic.this.f3297d != null) {
                    K2ExamLogic.this.f3297d.a(K2ExamLogic.this.i, ((Boolean) K2ExamLogic.this.c.p401133.value).booleanValue() ? K2ExamLogic.this.l : new ArrayList<>(), fVar.f3124a, fVar.b);
                } else {
                    K2ExamLogic.this.i.b = false;
                }
            }
            UploadRecordManager.f9474a.h(fVar);
            Iterator it = K2ExamLogic.this.m.iterator();
            while (it.hasNext()) {
                ((cn.mucang.android.jiakaoyi.engine.f.b) it.next()).onResult(fVar);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            K2ExamLogic k2ExamLogic = K2ExamLogic.this;
            if (!k2ExamLogic.E || k2ExamLogic.j.getEngine() == null) {
                return;
            }
            K2ExamLogic.this.q = 100;
            TtsManager.H();
            TtsManager.r((String) K2ExamLogic.this.c.p401177.value, TtsGrade.ExamDeduct);
            if (K2ExamLogic.this.b != null) {
                K2ExamLogic.this.b.callback(new c(PostFunction.PauseExam));
                Iterator it = K2ExamLogic.this.l.iterator();
                while (it.hasNext()) {
                    K2ExamLogic.this.j.getEngine().b((cn.mucang.android.jiakaoyi.engine.model.a) it.next());
                }
            }
            K2ExamLogic.this.j.getEngine().p();
            K2ExamLogic.this.D = System.currentTimeMillis();
            if (!((Boolean) K2ExamLogic.this.c.p401159.value).booleanValue()) {
                TtsManager.r(k0.a(R.string.restart_current_step), TtsGrade.ExamDeduct);
                K2ExamLogic.this.j.e().b();
                if (((Boolean) K2ExamLogic.this.c.p401126.value).booleanValue()) {
                    K2ExamLogic.this.F.f();
                    K2ExamLogic.this.F.h();
                    return;
                }
                return;
            }
            K2ExamLogic.this.j.e().b();
            K2ExamLogic.this.s();
            if (!((Boolean) K2ExamLogic.this.c.p401126.value).booleanValue() || K2ExamLogic.this.f3296a == null) {
                TtsManager.r(k0.a(R.string.enter_next_step), TtsGrade.ExamDeduct);
                if (K2ExamLogic.this.f3296a != null) {
                    K2ExamLogic.this.j.e().a(K2ExamLogic.this.f3296a);
                    return;
                }
                return;
            }
            ArrayList<Step> arrayListD = K2ExamLogic.this.F.d();
            int iIndexOf = arrayListD.indexOf(K2ExamLogic.this.f3296a) + 1;
            List<Step> listSubList = arrayListD.subList(0, iIndexOf);
            List<Step> listSubList2 = arrayListD.subList(iIndexOf, arrayListD.size());
            ArrayList<Step> arrayList = new ArrayList<>();
            arrayList.addAll(listSubList2);
            arrayList.addAll(listSubList);
            for (Step step : K2ExamLogic.this.j.c().b) {
                if (!arrayList.contains(step)) {
                    K2ExamLogic.this.j.getEngine().i().a(step);
                }
            }
            K2ExamLogic.this.F.l(arrayList);
            K2ExamLogic.this.F.h();
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3304a;
        public PostFunction b;
        public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f3305d;

        public c(PostFunction postFunction) {
            this(false, null, postFunction, false, 0);
        }

        public c(PostFunction postFunction, boolean z) {
            this(false, null, postFunction, false, 0);
        }

        public c(boolean z, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, PostFunction postFunction, boolean z2, int i) {
            this.f3304a = z;
            this.c = bVar;
            this.b = postFunction;
            this.f3305d = z2;
        }
    }

    public K2ExamLogic(cn.mucang.android.jiakaoyi.examk2.a.b bVar) {
        this.j = bVar;
        M();
        this.k = new CountDownLogic(Arrays.asList(Step.K2_ShangPoQiBu, Step.K2_ZhiJiaoZhuanWan, Step.K2_SQuXian, Step.K2_ZhaiLuDiaoTou));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        if (this.E) {
            p(bVar);
            Iterator<cn.mucang.android.jiakaoyi.engine.f.a> it = this.n.iterator();
            while (it.hasNext()) {
                it.next().onStep(bVar, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(cn.mucang.android.jiakaoyi.hpmap.model.b bVar) {
        K2GlobalConfig k2GlobalConfig = this.c;
        if (k2GlobalConfig == null || !((Boolean) k2GlobalConfig.p401147.value).booleanValue()) {
            return;
        }
        u.h(bVar.f3712a);
        TtsManager.r(bVar.f3712a, TtsGrade.ExamDeduct);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F(View view) {
        this.C = 0L;
        this.f3301h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void H(View view) {
        this.f3298e = null;
        if (this.b != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("GPS信号中断手动点结束");
            this.b.callback(new c(PostFunction.StopExam));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void J(Boolean bool) {
        if (bool.booleanValue()) {
            this.f3298e.dismiss();
            this.f3298e = null;
            if (this.b != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("GPS信号中断10秒后考试结束");
                this.b.callback(new c(PostFunction.StopExam));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void L(int i) {
        if (this.E) {
            if (i != 0) {
                TtsManager.r(k0.a(R.string.enter_qidian_area), TtsGrade.ExamTip);
            }
            QiDianChecker.B = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void U() {
        u.d(this.K, ((Integer) this.c.p401158.value).intValue());
    }

    static /* synthetic */ int e(K2ExamLogic k2ExamLogic) {
        int i = k2ExamLogic.t;
        k2ExamLogic.t = i + 1;
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void p(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        Step step = bVar.f3142e;
        if (step == Step.K2_Global || step == Step.K2_XiaCheJianCha) {
            return;
        }
        this.k.d(bVar);
        if (!bVar.j()) {
            if (bVar.l()) {
                if (i0.d("charge_mode", 2) == 1) {
                    i0.i(cn.mucang.jiakaoyi.uilib.k.a.f9342a, true);
                }
                if (this.x && this.j.e().d(this.f3296a)) {
                    this.j.e().c(this.f3296a);
                } else {
                    this.f3296a = bVar.f3142e;
                }
                this.u = System.currentTimeMillis();
                if (((Boolean) this.c.p401152.value).booleanValue()) {
                    this.j.e().a(bVar.f3142e);
                }
                cn.mucang.android.jiakaoyi.framework.h.b<c> bVar2 = this.b;
                if (bVar2 != null) {
                    bVar2.callback(new c(true, bVar, PostFunction.Other, true, 100));
                }
                if (((Boolean) this.c.p401126.value).booleanValue()) {
                    this.F.j(bVar);
                    return;
                }
                return;
            }
            return;
        }
        if (bVar.f3142e == Step.K2_ShangPoQiBu) {
            ShangPoTimeDownEvent shangPoTimeDownEvent = new ShangPoTimeDownEvent();
            shangPoTimeDownEvent.f3348a = 0L;
            LiveBus.d(ShangPoTimeDownEvent.class).l(shangPoTimeDownEvent);
        }
        if (this.G.size() > 0) {
            N(bVar);
        }
        int iB = o.b(this.c, bVar, this.x, this.l, this.u);
        if (this.y) {
            ArrayList<Step> arrayListD = this.F.d();
            if (arrayListD.indexOf(bVar.f3142e) != arrayListD.size() - 1) {
                this.F.i(bVar, true);
            }
            this.y = false;
        } else {
            this.F.i(bVar, false);
        }
        if (!this.x) {
            this.f3296a = null;
        }
        cn.mucang.android.jiakaoyi.framework.h.b<c> bVar3 = this.b;
        if (bVar3 != null) {
            bVar3.callback(new c(false, bVar, PostFunction.Other, 100 - iB >= ((Integer) this.c.p401148.value).intValue(), iB));
        }
        this.u = 0L;
        if (bVar.f3142e == Step.K2_QiDianQuYu) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("起点区域项目做完，考试结束");
            cn.mucang.android.jiakaoyi.framework.h.b<c> bVar4 = this.b;
            if (bVar4 != null) {
                bVar4.callback(new c(PostFunction.StopExam, true));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void r(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        boolean zA = ExamModelUtils.f4701a.a();
        this.q -= aVar.f3102a.deductScore;
        K2GlobalConfig k2GlobalConfig = this.c;
        if (((Integer) (zA ? k2GlobalConfig.p401131 : k2GlobalConfig.p401132).value).intValue() == 2) {
            if (this.q < ((Integer) this.c.p401144.value).intValue()) {
                if (!((Boolean) this.c.p401157.value).booleanValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("考试不及格,没有补考机会,考试结束");
                    this.x = false;
                    cn.mucang.android.jiakaoyi.framework.h.b<c> bVar = this.b;
                    if (bVar != null) {
                        bVar.callback(new c(PostFunction.StopExam));
                        return;
                    }
                    return;
                }
                if (this.x) {
                    if (this.j.getEngine().j()) {
                        return;
                    }
                    this.f3296a = null;
                    this.x = false;
                    cn.mucang.android.jiakaoyi.framework.log.f.o("两次考试机会都用完,考试结束");
                    cn.mucang.android.jiakaoyi.framework.h.b<c> bVar2 = this.b;
                    if (bVar2 != null) {
                        bVar2.callback(new c(PostFunction.StopExam));
                        return;
                    }
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("考试不及格,进入补考机会");
                this.j.getEngine().l();
                this.x = true;
                U();
                n nVar = this.F;
                if (nVar != null) {
                    nVar.m();
                }
                if (this.f3296a != null) {
                    this.y = true;
                    o.a(this.c, this.j.getEngine().h().m.getStepConfig(this.f3296a).stepConfig);
                    this.j.getEngine().u(this.f3296a);
                    LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, true, null));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void w() {
        String str = (String) this.c.p401109.value;
        if ("0".equals(str)) {
            return;
        }
        this.G.clear();
        for (String str2 : str.split("-")) {
            if (y.a(str2) && (!cn.mucang.android.jiakaoyi.signal.utils.f.b() || !String.valueOf(Step.K2_ShangPoQiBu.number).equals(str2))) {
                this.G.add(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(Boolean bool) {
        this.x = false;
        cn.mucang.android.jiakaoyi.framework.log.f.o("考试模式不按顺序进项目导致考试结束");
        cn.mucang.android.jiakaoyi.framework.h.b<c> bVar = this.b;
        if (bVar != null) {
            bVar.callback(new c(PostFunction.StopExam, true));
        }
    }

    public void M() {
        if (MucangConfig.i() instanceof r) {
            LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.model.b.class).h((r) MucangConfig.i(), new a0() { // from class: cn.mucang.android.jiakaoyi.examk2.common.c
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    this.f3318a.D((cn.mucang.android.jiakaoyi.hpmap.model.b) obj);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void N(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        this.G.remove(String.valueOf(bVar.f3142e.number));
        if (this.G.size() == 0) {
            final int iIntValue = ((Integer) this.c.p401110.value).intValue();
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.examk2.common.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3322a.L(iIntValue);
                }
            }, ((long) iIntValue) * 1000);
        }
    }

    public void O() {
        TtsManager.r(k0.a(R.string.gps_weak), TtsGrade.ExamDeduct);
    }

    public void P() {
        TtsManager.r(k0.a(R.string.qibu_pass), TtsGrade.ExamDeduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void Q(cn.mucang.android.jiakaoyi.signal.c.e eVar, boolean z) {
        if (this.f3300g == null) {
            this.f3300g = new PlayStartVoiceUtil();
        }
        if (this.E || ((Integer) this.c.p401153.value).intValue() == 0 || this.i.b) {
            return;
        }
        if (z || AppUtils.k()) {
            this.f3300g.q(eVar, this.c, this.j, this.b);
        }
    }

    public void R(q qVar) {
        this.f3297d = qVar;
    }

    public void S(cn.mucang.android.jiakaoyi.framework.h.b<c> bVar) {
        this.b = bVar;
    }

    public void T() {
        p pVar = this.f3299f;
        if (pVar != null) {
            pVar.f();
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void V() {
        this.k.j();
        this.E = true;
        this.z = true;
        this.B = false;
        this.x = false;
        s();
        this.f3299f.e(this);
        if (((Boolean) this.c.p401126.value).booleanValue()) {
            this.F.f();
            this.F.h();
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("K2ExamLogic Start");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void W() {
        this.i.b = true;
        this.w = false;
        this.f3300g = null;
        this.k.k();
        u.e(this.K);
        if (this.F != null) {
            if (((Boolean) this.c.p401126.value).booleanValue()) {
                this.F.g();
            }
            this.F.m();
        }
        this.E = false;
    }

    public void n(cn.mucang.android.jiakaoyi.engine.f.a aVar) {
        this.n.add(aVar);
    }

    public void o(cn.mucang.android.jiakaoyi.engine.f.b bVar) {
        this.m.add(bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.E && !AppUtils.k()) {
            if (((cn.mucang.jiakaoyi.uilib.e) MucangConfig.i().getApplication()).R()) {
                this.C = 0L;
            } else {
                if (this.C.longValue() == 0) {
                    this.C = Long.valueOf(SystemClock.elapsedRealtime());
                }
                if (this.f3301h == null && SystemClock.elapsedRealtime() - this.C.longValue() > 10000) {
                    JCommonDialog jCommonDialog = new JCommonDialog(MucangConfig.i(), new JCommonDialog.DialogParams(k0.a(R.string.uilib_end_exam_warning_title), k0.a(R.string.uilib_end_exam_warning_desc), (String) null, (View.OnClickListener) null, k0.a(R.string.uilib_dialog_confirm), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.examk2.common.b
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f3317a.F(view);
                        }
                    }, false, (View.OnClickListener) null, false));
                    this.f3301h = jCommonDialog;
                    jCommonDialog.show();
                    if (this.b != null) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("APP被退到后台10秒后考试结束");
                        this.b.callback(new c(PostFunction.StopExam));
                    }
                }
            }
        }
        if (!cn.mucang.android.jiakaoyi.framework.utils.n.a() && this.E) {
            if (this.f3296a == Step.K2_SuiDao || cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(eVar.getCurrentPosition().f5282h)) {
                this.z = true;
                CountDownDialog countDownDialog = this.f3298e;
                if (countDownDialog != null && countDownDialog.isShowing()) {
                    if (TtsManager.m(k0.a(R.string.gps_disconnect))) {
                        TtsManager.H();
                    }
                    TtsManager.r(k0.a(R.string.gps_reconnect), TtsGrade.ExamTip);
                    this.f3298e.dismiss();
                    this.f3298e = null;
                }
            } else if (this.z) {
                this.z = false;
                if (!AppUtils.k()) {
                    if (this.f3298e == null) {
                        TtsManager.r(k0.a(R.string.gps_disconnect), TtsGrade.ExamTip);
                    }
                    CountDownDialog countDownDialog2 = new CountDownDialog(MucangConfig.i(), new CountDownDialog.DialogParams(10, k0.a(R.string.end_exam_countdown), k0.a(R.string.gps_disconnect_end_exam), k0.a(R.string.continue_exam), null, k0.a(R.string.end_exam), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.examk2.common.f
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f3321a.H(view);
                        }
                    }, false, null, false, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.examk2.common.e
                        @Override // cn.mucang.android.jiakaoyi.framework.h.b
                        public final void callback(Object obj) {
                            this.f3320a.J((Boolean) obj);
                        }
                    }));
                    this.f3298e = countDownDialog2;
                    countDownDialog2.show();
                }
            }
        }
        if (((Boolean) this.c.p401156.value).booleanValue() || ((Integer) this.c.p401153.value).intValue() == 4 || this.t <= 1) {
            Q(eVar, this.v);
        }
        if (this.E) {
            if (((Boolean) this.c.p401170.value).booleanValue() && this.G.size() == 1) {
                for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.h hVar : this.j.c().k) {
                    if (hVar.m != null && !this.B && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), hVar.m)) {
                        this.B = true;
                        StringValue stringValue = this.c.p401171;
                        String str = (String) stringValue.value;
                        TtsGrade ttsGrade = TtsGrade.SpecialVoice;
                        int i = stringValue.ruleId;
                        TtsManager.t(str, ttsGrade, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
                        break;
                    }
                }
            }
            if (!this.w && ((Boolean) this.c.p401102.value).booleanValue() && eVar.d().c >= ((Float) this.c.p401103.value).floatValue()) {
                this.w = true;
                if (this.l.isEmpty()) {
                    P();
                }
            }
            this.k.h(eVar);
        }
        int i2 = eVar.getCurrentPosition().f5282h;
        if (cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(this.r) && !cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(i2)) {
            if (this.s % 5 == 0) {
                if (this.E && this.f3296a == Step.K2_SuiDao) {
                    return;
                } else {
                    O();
                }
            }
            this.s++;
        }
        this.r = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void q(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        boolean z;
        boolean zA = ExamModelUtils.f4701a.a();
        int iIntValue = zA ? ((Integer) this.c.p401131.value).intValue() : ((Integer) this.c.p401132.value).intValue();
        if (((zA && iIntValue == 3) || (!zA && iIntValue == 0)) && bVar.j()) {
            this.o.put(bVar.f3142e, Boolean.TRUE);
            Iterator<Boolean> it = this.o.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (!it.next().booleanValue()) {
                    z = false;
                    break;
                }
            }
            if (z) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(zA + ";同类项目已经做完");
                cn.mucang.android.jiakaoyi.framework.h.b<c> bVar2 = this.b;
                if (bVar2 != null) {
                    bVar2.callback(new c(PostFunction.StopExam, true));
                }
            }
        }
        if (zA && iIntValue == 0 && this.p.isEmpty()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("考试模式线上所有的项目已经做完");
            cn.mucang.android.jiakaoyi.framework.h.b<c> bVar3 = this.b;
            if (bVar3 != null) {
                bVar3.callback(new c(PostFunction.StopExam, true));
            }
        }
    }

    public void s() {
        this.l.clear();
    }

    public int t() {
        return this.q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean u(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return 100 - o.b(this.c, bVar, this.x, this.l, this.u) >= ((Integer) this.c.p401148.value).intValue();
    }

    public void v(cn.mucang.android.jiakaoyi.engine.c cVar) {
        this.i = new m0();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        K2GlobalConfig k2GlobalConfig = (K2GlobalConfig) cVar.h().m.getConfig(Step.K2_Global);
        this.c = k2GlobalConfig;
        this.f3299f = new p(k2GlobalConfig);
        this.F = new n(this.j, cVar, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.examk2.common.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f3316a.z((Boolean) obj);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.o("K2ExamLogic初始化成功");
    }

    public void x() {
        this.o.clear();
        this.p.clear();
        cn.mucang.android.jiakaoyi.mapcollect.c.j jVarC = this.j.c();
        if (jVarC != null) {
            for (Step step : jVarC.b) {
                if (step != null && (!cn.mucang.android.jiakaoyi.signal.utils.f.b() || step != Step.K2_ShangPoQiBu)) {
                    this.o.put(step, Boolean.FALSE);
                }
            }
            for (String str : jVarC.c) {
                if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
                    Iterator<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k> it = jVarC.f4727h.iterator();
                    do {
                        if (it.hasNext()) {
                        }
                    } while (!it.next().f3655a.equals(str));
                }
                this.p.add(str);
            }
        }
        w();
    }
}
