package cn.mucang.android.jiakaoyi.examk2.common;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.ExamModelUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.examk2.a.b f3331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.c f3332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f3333g;
    private Map<Integer, Deduct> i;
    private RouteConfig j;
    private Step k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3329a = 0;
    private int b = 0;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3330d = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<Step> f3334h = new ArrayList<>();
    private final Runnable l = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n.this.f3331e.isStart()) {
                n.this.h();
            } else {
                u.e(this);
            }
        }
    }

    class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (n.this.c) {
                return;
            }
            u.d(n.this.l, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
    }

    public n(cn.mucang.android.jiakaoyi.examk2.a.b bVar, cn.mucang.android.jiakaoyi.engine.c cVar, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar2) {
        this.f3331e = bVar;
        this.f3332f = cVar;
        this.f3333g = bVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void e(int i) {
        Deduct deduct = this.i.get(Integer.valueOf(i));
        if (deduct == null || !deduct.needAutoCheck()) {
            return;
        }
        cn.mucang.android.jiakaoyi.engine.model.a aVar = new cn.mucang.android.jiakaoyi.engine.model.a(deduct, System.currentTimeMillis(), true);
        if (this.f3331e.getEngine() != null) {
            this.f3331e.getEngine().a(aVar);
        }
        this.f3331e.d().H.onOneError(aVar);
        RouteConfig routeConfig = this.j;
        if (routeConfig != null) {
            K2GlobalConfig k2GlobalConfig = (K2GlobalConfig) routeConfig.getConfig(Step.K2_Global);
            if (k2GlobalConfig == null || !((Boolean) k2GlobalConfig.p401100.value).booleanValue()) {
                TtsManager.s(deduct.name, TtsGrade.ExamDeduct, deduct.code);
            } else {
                TtsManager.s(deduct.desc, TtsGrade.ExamDeduct, deduct.code);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String k() {
        StringValue reportVoiceValue;
        if (this.f3334h.isEmpty() || this.f3331e.getEngine() == null || (reportVoiceValue = this.f3331e.getEngine().h().m.getConfig(this.f3334h.get(this.f3329a)).getReportVoiceValue()) == null) {
            return "";
        }
        String str = (String) reportVoiceValue.value;
        this.b = reportVoiceValue.ruleId;
        return str;
    }

    public ArrayList<Step> d() {
        return this.f3334h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void f() {
        cn.mucang.android.jiakaoyi.engine.c cVar;
        try {
            if (this.f3331e == null || (cVar = this.f3332f) == null) {
                return;
            }
            this.f3329a = 0;
            RouteConfig routeConfig = cVar.h().m;
            this.j = routeConfig;
            Step step = Step.K2_Global;
            this.i = routeConfig.getStepConfig(step).deductConfig;
            K2GlobalConfig k2GlobalConfig = (K2GlobalConfig) this.j.getConfig(step);
            cn.mucang.android.jiakaoyi.framework.log.f.o("项目考试顺序设置:" + ((String) k2GlobalConfig.p401127.value));
            String[] strArrSplit = ((String) k2GlobalConfig.p401127.value).split("-");
            if (strArrSplit.length > 0) {
                this.f3334h.clear();
                for (String str : strArrSplit) {
                    if (y.a(str)) {
                        Step stepFindWithK2Number = Step.findWithK2Number(y.f(str).intValue());
                        if ((!cn.mucang.android.jiakaoyi.signal.utils.f.b() || stepFindWithK2Number != Step.K2_ShangPoQiBu) && stepFindWithK2Number != null && !this.f3334h.contains(stepFindWithK2Number)) {
                            this.f3334h.add(stepFindWithK2Number);
                        }
                    }
                }
            }
            for (Step step2 : this.f3331e.c().b) {
                if (!this.f3334h.contains(step2)) {
                    this.f3332f.i().a(step2);
                }
            }
            this.f3330d = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("OrderExamPresenter初始化失败：" + e2.getLocalizedMessage());
        }
    }

    public void g() {
        Deduct deduct;
        if ((this.f3329a == this.f3334h.size() - 1 && this.f3334h.get(this.f3329a) == this.k) || (deduct = this.i.get(300135)) == null || !deduct.needAutoCheck()) {
            return;
        }
        this.f3331e.d().H.onOneError(new cn.mucang.android.jiakaoyi.engine.model.a(deduct, System.currentTimeMillis(), true));
    }

    public void h() {
        if (this.f3330d) {
            u.e(this.l);
            if (TtsManager.l() && k().equals(TtsManager.f())) {
                return;
            }
            String strK = k();
            TtsGrade ttsGrade = TtsGrade.ExamDeduct;
            b bVar = new b();
            int i = this.b;
            TtsManager.w(strK, ttsGrade, bVar, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
        }
    }

    public void i(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        if (this.c) {
            this.c = false;
            if (z) {
                return;
            }
            if (this.f3329a == this.f3334h.size() - 1) {
                this.f3333g.callback(Boolean.TRUE);
            } else {
                this.f3329a++;
                h();
            }
        }
    }

    public void j(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        u.e(this.l);
        this.c = true;
        this.k = bVar.f3142e;
        this.f3331e.e().a(bVar.f3142e);
        int iIndexOf = this.f3334h.indexOf(bVar.f3142e);
        cn.mucang.android.jiakaoyi.framework.log.f.o("项目名：" + bVar.f3142e.zhStepName + "，当前playIndex:" + this.f3329a + ",项目的index：" + iIndexOf);
        if (iIndexOf == -1 || iIndexOf == this.f3329a) {
            return;
        }
        if (ExamModelUtils.f4701a.a()) {
            this.f3333g.callback(Boolean.TRUE);
        } else {
            this.f3329a = iIndexOf;
            for (int i = 0; i < iIndexOf; i++) {
                Step step = this.f3334h.get(i);
                if (!this.f3331e.e().d(step)) {
                    this.f3331e.e().a(step);
                }
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("没有按指定顺序进项目");
        e(300105);
    }

    public void l(ArrayList<Step> arrayList) {
        this.f3329a = 0;
        this.f3334h = arrayList;
    }

    public void m() {
        this.c = false;
        this.f3329a = 0;
        this.k = null;
        u.e(this.l);
    }
}
