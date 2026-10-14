package cn.mucang.android.jiakaoyi.k3setting.exam;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExam;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LightExam.LightExamCallback f4283a;
    private final cn.mucang.android.jiakaoyi.framework.h.c<Boolean> b;
    private final List<LightExamModel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final K3DengGuangStepConfig f4284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Integer, Deduct> f4285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LightExam f4286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4287g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LightExam.LightExamCallback f4288h = new a();

    class a implements LightExam.LightExamCallback {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onClickClose() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFailure(LightExamModel lightExamModel, Deduct deduct) {
            h1.this.f4283a.onFailure(lightExamModel, deduct);
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFinish() {
            h1.this.f4283a.onFinish();
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onStart(LightExamModel lightExamModel) {
        }
    }

    public h1(androidx.fragment.app.d dVar, List<LightExamModel> list, K3DengGuangStepConfig k3DengGuangStepConfig, Map<Integer, Deduct> map, LightExam.LightExamCallback lightExamCallback, cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar, boolean z) {
        this.f4283a = lightExamCallback;
        this.b = cVar;
        this.c = list;
        this.f4284d = k3DengGuangStepConfig;
        this.f4285e = map;
        this.f4287g = z;
    }

    public void b() {
        if (this.f4286f == null) {
            this.f4286f = new LightExam(this.c, this.f4284d, this.f4288h, this.f4285e, this.b, this.f4287g);
            this.f4283a.onStart(this.c.get(0));
            this.f4286f.start();
        }
    }

    public void c() {
        LightExam lightExam = this.f4286f;
        if (lightExam != null) {
            lightExam.stop();
            this.f4286f = null;
        }
    }
}
