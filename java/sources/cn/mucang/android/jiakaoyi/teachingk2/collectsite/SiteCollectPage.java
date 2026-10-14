package cn.mucang.android.jiakaoyi.teachingk2.collectsite;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.s0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SiteCollectPage extends BaseActivity {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6931d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6932e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f6933f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MapView f6934g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RecyclerView f6935h;
    private View i;
    private View j;
    private c n;
    private boolean o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f6930a = new a();
    private cn.mucang.android.jiakaoyi.signal.i.a b = null;
    public final s0 c = new s0();
    private cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a k = null;
    private PolygonModel l = null;
    private final List<PolygonModel> m = new ArrayList();
    private final cn.mucang.android.jiakaoyi.framework.h.b<PolygonModel> p = new b();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            SiteCollectPage.this.c.d(eVar);
            SiteCollectPage.this.f6933f.setText(SiteCollectPage.this.c.a());
        }
    }

    class b implements cn.mucang.android.jiakaoyi.framework.h.b<PolygonModel> {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(PolygonModel polygonModel) {
            for (cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar : SiteCollectPage.this.f6934g.u.s()) {
                if ((kVar instanceof cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a) && ((cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a) kVar).k == polygonModel) {
                    SiteCollectPage.this.f6934g.u.Q(kVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c extends RecyclerView.Adapter<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<PolygonModel> f6938a;
        private final int b;
        private final cn.mucang.android.jiakaoyi.framework.h.b<PolygonModel> c;

        /* synthetic */ c(List list, int i, cn.mucang.android.jiakaoyi.framework.h.b bVar, a aVar) {
            this(list, i, bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(View view) {
            String str;
            final PolygonModel polygonModel = (PolygonModel) view.getTag();
            final Activity activityA = cn.mucang.android.core.utils.d.a(view);
            int i = this.b;
            if (i == 1) {
                str = "删除这个电子栅栏";
            } else {
                str = i == 2 ? "删除这个特殊区域" : "删除这个场景";
            }
            new JCommonDialog(activityA, new JCommonDialog.DialogParams(str, "确定删除?", "不删除", null, "'删除", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f6956a.g(activityA, polygonModel, view2);
                }
            }, true)).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void g(Activity activity, final PolygonModel polygonModel, View view) {
            new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activity).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.i
                @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                public final void a() throws Exception {
                    this.f6957a.k(polygonModel);
                }
            }, "正在删除...", "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void i(PolygonModel polygonModel) {
            this.f6938a.remove(polygonModel);
            notifyDataSetChanged();
            this.c.callback(polygonModel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void k(final PolygonModel polygonModel) throws Exception {
            String str;
            try {
                new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.a().m(polygonModel, this.b);
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6955a.i(polygonModel);
                    }
                });
            } catch (Throwable th) {
                StringBuilder sb = new StringBuilder();
                sb.append("删除失败");
                if (MucangConfig.v()) {
                    str = ":" + th.getLocalizedMessage();
                } else {
                    str = "";
                }
                sb.append(str);
                cn.mucang.android.core.utils.u.h(sb.toString());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(View view) {
            PolygonModel polygonModel = (PolygonModel) view.getTag();
            if (this.b == 1) {
                return;
            }
            new cn.mucang.android.jiakaoyi.teachingk2.collectsite.w.d(cn.mucang.android.core.utils.d.a(view), polygonModel.qrCode);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f6938a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(d dVar, int i) {
            String str;
            PolygonModel polygonModel = this.f6938a.get(i);
            StringBuilder sb = new StringBuilder();
            sb.append(polygonModel.name);
            if (this.b == 1) {
                str = "";
            } else {
                str = cn.mucang.android.core.utils.g.b(polygonModel.images) ? "(无图)" : "(有图)";
            }
            sb.append(str);
            dVar.f6939a.setText(sb.toString());
            dVar.b.setText(polygonModel.desc);
            dVar.c.setTag(polygonModel);
            dVar.f6940d.setTag(polygonModel);
            dVar.f6940d.setVisibility(this.b == 0 ? 0 : 8);
            dVar.f6940d.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6953a.n(view);
                }
            });
            dVar.c.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6954a.c(view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public d onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.collect_item_view, viewGroup, false));
        }

        private c(List<PolygonModel> list, int i, cn.mucang.android.jiakaoyi.framework.h.b<PolygonModel> bVar) {
            this.f6938a = list;
            this.b = i;
            this.c = bVar;
        }
    }

    private static class d extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f6939a;
        TextView b;
        View c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f6940d;

        public d(View view) {
            super(view);
            this.b = (TextView) view.findViewById(R.id.text);
            this.f6939a = (TextView) view.findViewById(R.id.name);
            this.c = view.findViewById(R.id.delete);
            this.f6940d = view.findViewById(R.id.uploadImage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void C() throws Exception {
        try {
            final List<PolygonModel> listN = new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.a().n(this.f6931d, this.f6932e);
            if (cn.mucang.android.core.utils.g.d(listN)) {
                this.b = new cn.mucang.android.jiakaoyi.signal.i.b(listN.get(0).gpsData.get(0));
                final ArrayList arrayList = new ArrayList();
                for (PolygonModel polygonModel : listN) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<Gps> it = polygonModel.gpsData.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(this.b.a(it.next()));
                    }
                    arrayList.add(arrayList2);
                }
                cn.mucang.android.core.utils.u.c(new SafeRunnable(this, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6964a.E(listN, arrayList);
                    }
                }));
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("数据加载失败");
            MucangConfig.v();
            sb.append(":" + th.getLocalizedMessage());
            cn.mucang.android.core.utils.u.h(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void G() {
        this.l = null;
        this.o = false;
        finish();
    }

    private static void H(Context context, int i, String str) {
        Intent intent = new Intent(context, (Class<?>) SiteCollectPage.class);
        intent.putExtra("Type", i);
        intent.putExtra("examSiteId", str);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void I(Context context, String str) {
        H(context, 1, str);
    }

    public static void J(Context context, String str) {
        H(context, 0, str);
    }

    public static void K(Context context, String str) {
        H(context, 2, str);
    }

    private void L() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.d
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6952a.C();
            }
        }, "正在加载数据...", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public void E(List<PolygonModel> list, List<List<Pos>> list2) {
        this.m.addAll(list);
        this.n.notifyDataSetChanged();
        for (int i = 0; i < list.size(); i++) {
            MapView mapView = this.f6934g;
            cn.mucang.android.jiakaoyi.hpmap.view.m mVar = mapView.u;
            cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a(mapView, list.get(i));
            aVar.j(list2.get(i));
            mVar.g(aVar);
        }
        Pos pos = list2.get(0).get(0);
        this.f6934g.i((float) pos.x, (float) pos.y);
    }

    private void N() {
        l(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f6963a.G();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(View view) {
        String str;
        final Runnable runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f6959a.p();
            }
        };
        if (this.l != null) {
            runnable.run();
            return;
        }
        int i = this.f6932e;
        if (i == 1) {
            str = "新建一个电子栅栏";
        } else {
            str = i == 2 ? "新建一个特殊区域" : "新建一个场景";
        }
        new cn.mucang.android.jiakaoyi.teachingk2.collectsite.w.c(this, this.f6931d, str, "", new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.q
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f6965a.r(runnable, (PolygonModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(View view) {
        if (this.o) {
            new JCommonDialog(cn.mucang.android.core.utils.d.a(view), new JCommonDialog.DialogParams("当前有数据未保存", "确定退出?", "不保存，退出", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f6960a.t(view2);
                }
            }, "'保存数据并退出", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f6962a.v(view2);
                }
            }, true)).show();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(View view) {
        PolygonModel polygonModel = this.l;
        if (polygonModel == null || cn.mucang.android.core.utils.g.b(polygonModel.gpsData)) {
            cn.mucang.android.core.utils.u.h("还没开始采集新项目");
        } else if (this.l.gpsData.size() < 2) {
            cn.mucang.android.core.utils.u.h("不能少于2个点");
        } else {
            l(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6950a.x();
                }
            });
        }
    }

    private void l(final Runnable runnable) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.a
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6949a.z(runnable);
            }
        }, "正在保存...", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p() {
        Gps gpsB;
        if (this.l == null || (gpsB = this.c.b()) == null) {
            return;
        }
        if (this.b == null) {
            this.b = new cn.mucang.android.jiakaoyi.signal.i.b(gpsB);
        }
        this.l.gpsData.add(gpsB);
        Pos posA = this.b.a(gpsB);
        this.f6934g.i((float) posA.x, (float) posA.y);
        this.k.i(posA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(Runnable runnable, PolygonModel polygonModel) {
        this.l = polygonModel;
        cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.a(this.f6934g, polygonModel);
        this.k = aVar;
        this.f6934g.u.g(aVar);
        this.o = true;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(View view) {
        N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x() {
        this.m.add(this.l);
        this.n.notifyDataSetChanged();
        this.l = null;
        this.k = null;
        this.o = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(Runnable runnable) throws Exception {
        try {
            new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.a().o(this.l, this.f6932e);
            cn.mucang.android.core.utils.u.c(runnable);
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("保存失败");
            MucangConfig.v();
            sb.append(":" + th.getLocalizedMessage());
            cn.mucang.android.core.utils.u.h(sb.toString());
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "考场信息采集";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.o = false;
        this.f6932e = getIntent().getIntExtra("Type", 0);
        this.f6931d = getIntent().getStringExtra("examSiteId");
        setContentView(R.layout.activity_collect_site);
        findViewById(R.id.back).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6958a.j(view);
            }
        });
        MapView mapView = (MapView) findViewById(R.id.mapView);
        this.f6934g = mapView;
        mapView.setCurrentZoom(1.0f);
        this.f6935h = (RecyclerView) findViewById(R.id.itemList);
        this.i = findViewById(R.id.collectPoint);
        this.j = findViewById(R.id.finishItem);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6961a.i(view);
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6951a.k(view);
            }
        });
        this.f6933f = (TextView) findViewById(R.id.gps_info);
        this.f6935h.setLayoutManager(new LinearLayoutManager(this, 1, false));
        RecyclerView recyclerView = this.f6935h;
        c cVar = new c(this.m, this.f6932e, this.p, null);
        this.n = cVar;
        recyclerView.setAdapter(cVar);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f6930a);
        L();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f6930a);
    }
}
