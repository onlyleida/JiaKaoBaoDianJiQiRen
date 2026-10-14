package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class f extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.f, SimpleTeachingConfig> {
    public f(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.f> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.f> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.f fVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(fVar.q, carPos.center);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.f fVar) {
        return (fVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, fVar.l())) || super.f(eVar, carPos, fVar) || H(eVar, carPos, fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.f fVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
        }
        if (this.r == SubStep.Step1) {
            if (this.f3695f && !this.j) {
                w.O();
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, fVar.j)) {
                this.b = true;
                this.c = true;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) || H(eVar, carPos, (cn.mucang.android.jiakaoyi.hpmap.a.a.f.f) bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.r = SubStep.None;
    }

    public f(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.f> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.f> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
