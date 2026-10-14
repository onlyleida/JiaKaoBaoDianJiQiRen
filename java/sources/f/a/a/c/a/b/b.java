package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.b, SimpleTeachingConfig> {
    public b(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.b> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.b> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.b bVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(bVar.p, carPos.center);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.b bVar) {
        return (bVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.l())) || super.f(eVar, carPos, bVar) || H(eVar, carPos, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.b bVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
        }
        if (this.r == SubStep.Step1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.k(carPos, bVar.m)) {
            this.b = true;
            this.c = true;
            if (this.j) {
                return;
            }
            w.O();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) || H(eVar, carPos, (cn.mucang.android.jiakaoyi.hpmap.a.a.f.b) bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.r = SubStep.None;
    }

    public b(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.b> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.b> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
