package cn.mucang.android.jiakaoyi.teachingk2.ui.test;

import androidx.lifecycle.r;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTestFenceBinding;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TestFencePage extends BaseViewBindingActivity<ActivityTestFenceBinding> {
    private final cn.mucang.android.jiakaoyi.signal.c.f.a b = new a();
    private MapRender c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f8350d;

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            if (eVar.d().M != 3 || eVar.c() == null || eVar.c().center == null) {
                return;
            }
            double d2 = ((double) eVar.d().b) / 3.6d;
            double d3 = 100.0d * d2;
            List<Pos> listA = cn.mucang.android.jiakaoyi.teachingk2.safe.detector.d.a(eVar, Math.max(10.0d, ((d2 * d3) / 9.8d) + (d3 * 0.2d)));
            TestFencePage.this.f8350d.f3763h.clear();
            TestFencePage.this.f8350d.f3763h.addAll(listA);
            ((ActivityTestFenceBinding) TestFencePage.this.f3424a).map.r();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "测试fence";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        this.c = new MapRender((r) this, ((ActivityTestFenceBinding) this.f3424a).map, false, (cn.mucang.android.jiakaoyi.framework.h.b<Boolean>) null);
        List<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> list = n.b().f7602f;
        if (g.d(list)) {
            for (cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar : list) {
                VB vb = this.f3424a;
                ((ActivityTestFenceBinding) vb).map.u.g(new l(((ActivityTestFenceBinding) vb).map, aVar.c, 15.0f, -16711936));
            }
        }
        l lVar = new l(((ActivityTestFenceBinding) this.f3424a).map, new ArrayList(), 10.0f, -65536);
        this.f8350d = lVar;
        ((ActivityTestFenceBinding) this.f3424a).map.u.g(lVar);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.b);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.c.d();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.b);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.c.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.c.l();
    }
}
