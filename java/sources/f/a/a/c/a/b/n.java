package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class n extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.o, SimpleTeachingConfig> {
    public n(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.o> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.o> cVar) {
        this(list, cVar, false);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.o oVar) {
        Line lineL = oVar.l();
        if (oVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, oVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.o oVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
        }
        if (this.r == SubStep.Step1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, oVar.j)) {
            this.b = true;
            this.c = true;
            if (this.j) {
                return;
            }
            w.O();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.r = SubStep.None;
    }

    public n(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.o> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.o> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
