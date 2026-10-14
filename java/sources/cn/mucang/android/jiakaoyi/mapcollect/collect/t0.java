package cn.mucang.android.jiakaoyi.mapcollect.collect;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ZhiJiaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class t0<T extends SourceData<T>, C extends u0<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MapView f4839a;
    private View b;
    private final PosCollectActivity c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C f4840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v0 f4841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<T, C> f4842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f4843g;

    interface a {
        <T> void a(View view, T t);
    }

    private static class b extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f4844a;

        public b(View view) {
            super(view);
            this.f4844a = (TextView) view.findViewById(R.id.text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c extends RecyclerView.Adapter<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f4845a;

        c() {
            this.f4845a = t0.this.f4842f.b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(int i, View view) {
            f(i);
        }

        private void f(int i) {
            Gps gpsB = t0.this.c.v.b();
            if (gpsB == null) {
                return;
            }
            t0.this.f4841e.s(gpsB);
            t0.this.f4842f.c(t0.this.f4841e, i, t0.this.c, t0.this.f4840d, gpsB);
            t0.this.l();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(b bVar, final int i) {
            bVar.f4844a.setText(this.f4845a[i]);
            bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4793a.d(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public b onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.hpmap__collect_step_point, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f4845a.length;
        }
    }

    public t0(C c2, cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<T, C> aVar, PosCollectActivity posCollectActivity) {
        c2.b = this;
        this.c = posCollectActivity;
        this.f4840d = c2;
        this.f4842f = aVar;
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.model.a.class).h(posCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f4795a.i((cn.mucang.android.jiakaoyi.hpmap.model.a) obj);
            }
        });
    }

    private void d() {
        if (this.f4840d.b()) {
            this.f4841e.j(this.f4840d.f4847a.copy(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.h
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f4791a.g((Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(Boolean bool) {
        if (bool.booleanValue()) {
            cn.mucang.android.core.utils.u.h("保存成功!");
            this.f4840d.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(cn.mucang.android.jiakaoyi.hpmap.model.a aVar) {
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(View view) {
        a aVar = this.f4843g;
        if (aVar != null) {
            aVar.a(view, this.f4840d);
        }
        d();
    }

    public Pos e(Gps gps) {
        cn.mucang.android.jiakaoyi.signal.i.a aVar;
        v0 v0Var = this.f4841e;
        if (v0Var == null || (aVar = v0Var.b) == null || gps == null) {
            return null;
        }
        return aVar.a(gps);
    }

    public void l() {
        cn.mucang.android.jiakaoyi.signal.i.a aVar = this.f4841e.b;
        if (aVar == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<T, C> aVar2 = this.f4842f;
        MapView mapView = this.f4839a;
        C c2 = this.f4840d;
        aVar2.a(mapView, aVar, c2, c2.f4847a);
        this.f4839a.u.g(this.c.u);
    }

    public void m(a aVar) {
        this.f4843g = aVar;
    }

    public void n(RecyclerView recyclerView) {
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 2));
        recyclerView.setAdapter(new c());
    }

    public void o(T t) {
        this.f4839a.u.j();
        this.f4840d.f4847a.set(t);
        C c2 = this.f4840d;
        if (c2 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.n) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.n) c2).r();
        }
        C c3 = this.f4840d;
        if (c3 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.j) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.j) c3).s();
        }
        C c4 = this.f4840d;
        if (c4 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.x) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.x) c4).r();
        }
        C c5 = this.f4840d;
        if (c5 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.t) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.t) c5).s();
        }
        C c6 = this.f4840d;
        if (c6 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.y) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.y) c6).s();
        }
        C c7 = this.f4840d;
        if (c7 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.s) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.s) c7).t();
        }
        C c8 = this.f4840d;
        if (c8 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.q) {
            ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.q) c8).s();
        }
        l();
    }

    public void p(View view) {
        this.b = view;
        view.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f4797a.k(view2);
            }
        });
    }

    public void q(MapView mapView) {
        this.f4839a = mapView;
        mapView.u.j();
    }

    public void r(v0 v0Var) {
        this.f4841e = v0Var;
        C c2 = this.f4840d;
        if (!(c2 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.r) || ((C2ZhiJiaoSrcData) ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.r) c2).f4847a).gps1 == null) {
            return;
        }
        v0Var.b = new cn.mucang.android.jiakaoyi.signal.i.b(((C2ZhiJiaoSrcData) ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.r) c2).f4847a).gps1);
    }
}
