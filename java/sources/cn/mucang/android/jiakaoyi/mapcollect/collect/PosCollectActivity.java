package cn.mucang.android.jiakaoyi.mapcollect.collect;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.dialog.CollectPreviewDialog;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsBaseModel;

/* JADX INFO: loaded from: classes3.dex */
public class PosCollectActivity extends cn.mucang.android.core.config.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MapView f4736a;
    private RecyclerView b;
    private RecyclerView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f4737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Button f4738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Spinner f4739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4740g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private v0 f4741h;
    private t0 i;
    private int j;
    private u0 k;
    private r0 l;
    private ExamSiteModel m;
    private HpCarMapModel n;
    private TextView o;
    private TextView p;
    private TextView q;
    private View r;
    private LinearLayout s;
    private EditText t;
    public cn.mucang.android.jiakaoyi.hpmap.view.p.j u;
    public final s0 v = new s0();
    private cn.mucang.android.jiakaoyi.signal.c.f.a w = new a();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            if (eVar.d().M != 3) {
                return;
            }
            PosCollectActivity.this.v.d(eVar);
            PosCollectActivity.this.T();
            if (!PosCollectActivity.this.f4740g) {
                PosCollectActivity.this.S();
            }
            Pos posE = PosCollectActivity.this.i == null ? null : PosCollectActivity.this.i.e(PosCollectActivity.this.v.c(false));
            if (posE == null) {
                PosCollectActivity.this.u.j(new Pos(0.0d, 0.0d));
            } else {
                PosCollectActivity.this.u.j(posE);
            }
        }
    }

    class b implements AdapterView.OnItemSelectedListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == PosCollectActivity.this.j) {
                return;
            }
            PosCollectActivity.this.q(i, null);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            PosCollectActivity.this.f4739f.setDropDownVerticalOffset(PosCollectActivity.this.f4739f.getMeasuredHeight());
            PosCollectActivity.this.f4739f.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    class d implements t0.a {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.t0.a
        public <T> void a(View view, T t) {
            if (cn.mucang.android.core.utils.n0.g(PosCollectActivity.this.t.getText().toString())) {
                double d2 = Double.parseDouble(FormatUtils.a(Float.parseFloat(PosCollectActivity.this.t.getText().toString())));
                if (t instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.p) {
                    ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.p) t).r(d2);
                } else if (t instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.a0) {
                    ((cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.a0) t).r(d2);
                }
            }
        }
    }

    private static class e extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f4746a;

        /* synthetic */ e(String[] strArr, a aVar) {
            this(strArr);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f4746a.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f4746a[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.hpmap__step_menu_item, viewGroup, false);
            }
            ((TextView) view.findViewById(R.id.text)).setText(this.f4746a[i]);
            return view;
        }

        private e(String[] strArr) {
            this.f4746a = strArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void C(DialogInterface dialogInterface, int i) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void E(View view) {
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void G(View view) {
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void I(View view) {
        final Gps gpsB = this.v.b();
        if (gpsB == null || gpsB.latitude <= 1.0E-8d || gpsB.longitude <= 1.0E-8d) {
            cn.mucang.android.core.utils.u.h("GPS定位异常");
        } else {
            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4799a.A(gpsB);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void K(GpsBaseModel gpsBaseModel) {
        TtsManager.r("当前连接的基站是" + gpsBaseModel.getGpsBaseName(), TtsGrade.GlobalTip);
        this.p.setText("基站名称: " + gpsBaseModel.getGpsBaseName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void M(SourceData sourceData) {
        if (this.i != null) {
            if (sourceData instanceof C2SuiDaoSrcData) {
                double d2 = ((C2SuiDaoSrcData) sourceData).distance;
                if (d2 != 0.0d) {
                    this.t.setText(String.valueOf(d2));
                }
            } else if (sourceData instanceof B2SuiDaoSrcData) {
                double d3 = ((B2SuiDaoSrcData) sourceData).distance;
                if (d3 != 0.0d) {
                    this.t.setText(String.valueOf(d3));
                }
            }
            this.i.o(sourceData);
        }
    }

    public static void N(Context context, HpCarMapModel hpCarMapModel) {
        Intent intent = new Intent(context, (Class<?>) PosCollectActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("isCar", true);
        intent.putExtra("carMapModel", hpCarMapModel);
        context.startActivity(intent);
    }

    public static void O(Context context, ExamSiteModel examSiteModel) {
        Intent intent = new Intent(context, (Class<?>) PosCollectActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("isCar", false);
        intent.putExtra("examSiteModel", examSiteModel);
        context.startActivity(intent);
        HPGpsManager.k(examSiteModel.examSiteId, (int) examSiteModel.gpsBaseId);
    }

    private void P() {
        Step stepE = cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d.c().e(this.j);
        CollectPreviewDialog collectPreviewDialog = new CollectPreviewDialog();
        collectPreviewDialog.u(stepE);
        collectPreviewDialog.show(getSupportFragmentManager(), "查看示例");
    }

    private void Q() {
        r0 r0Var = this.l;
        if (r0Var == null) {
            return;
        }
        if (r0Var.p().j()) {
            this.l.p().L();
            new cn.mucang.android.jiakaoyi.mapcollect.collect.dialog.h(this, this.l.p().f4769e);
        } else {
            TtsManager.r("数据没有采集完成", TtsGrade.GlobalTip);
            cn.mucang.android.core.utils.u.h("数据没有采集完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        if (r(this.m)) {
            Gps gps = this.v.b;
            ExamSiteModel examSiteModel = this.m;
            double dDistanceTo = gps.distanceTo(new Gps(examSiteModel.originLatitude, examSiteModel.originLongitude));
            this.q.setText("当前位置距离原点: " + FormatUtils.a((float) dDistanceTo) + "米");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        this.o.setText(this.v.a());
    }

    private void o(int i, Runnable runnable) {
        u0 u0Var = this.k;
        if (u0Var != null) {
            u0Var.a();
        }
        this.s.setVisibility(4);
        t0 t0VarB = cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d.c().b(i, this);
        this.i = t0VarB;
        t0VarB.r(this.f4741h);
        this.i.q(this.f4736a);
        this.i.p(this.f4737d);
        this.i.n(this.c);
        t0 t0Var = this.i;
        C c2 = t0Var.f4840d;
        this.k = c2;
        if ((c2 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.p) || (c2 instanceof cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.a0)) {
            t0Var.m(new d());
            this.s.setVisibility(0);
            this.t.setText("");
        }
        this.j = i;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(final int i, final Runnable runnable) {
        if (this.k.c()) {
            new androidx.appcompat.app.c.a(this).setMessage("当前正在采集，还没保存，切换将导致已经采集的数据丢失，确定切换?").setPositiveButton("确定切换", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.p
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f4809a.u(i, runnable, dialogInterface, i2);
                }
            }).setNegativeButton("不切换", (DialogInterface.OnClickListener) null).create().show();
        } else {
            o(i, runnable);
        }
    }

    private boolean r(ExamSiteModel examSiteModel) {
        return examSiteModel.originLatitude > 1.0E-8d && examSiteModel.originLongitude > 1.0E-8d;
    }

    private void s() {
        findViewById(R.id.back).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4803a.w(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(int i, Runnable runnable, DialogInterface dialogInterface, int i2) {
        o(i, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(View view) {
        u0 u0Var = this.k;
        if (u0Var == null || !u0Var.c()) {
            finish();
        } else {
            new androidx.appcompat.app.c.a(this).setMessage("还有信息没保存，退出将会丢失，确定退出?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.t
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4838a.C(dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y() {
        cn.mucang.android.core.utils.u.h("设置原点成功");
        TtsManager.r("设置原点成功", TtsGrade.GlobalTip);
        this.r.setVisibility(8);
        this.f4738e.setVisibility(8);
        this.f4737d.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void A(Gps gps) {
        try {
            if (new GeneralBusinessApi().v(this.m.examSiteId, gps.latitude, gps.longitude, gps.altitude)) {
                ExamSiteModel examSiteModel = this.m;
                examSiteModel.originLatitude = gps.latitude;
                examSiteModel.originLongitude = gps.longitude;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4807a.y();
                    }
                });
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.core.utils.u.h("设置原点失败：" + e2.getMessage());
        }
    }

    public void R(final SourceData sourceData) {
        q(cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d.c().d(sourceData), new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f4819a.M(sourceData);
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "CarCollectActivity";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.hpmap__collect_activity);
        s();
        this.f4740g = getIntent().getBooleanExtra("isCar", false);
        this.n = (HpCarMapModel) getIntent().getSerializableExtra("carMapModel");
        this.m = (ExamSiteModel) getIntent().getSerializableExtra("examSiteModel");
        this.o = (TextView) findViewById(R.id.gps_info);
        this.p = (TextView) findViewById(R.id.gps_base_name);
        this.q = (TextView) findViewById(R.id.gps_base_distance);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.w);
        this.f4739f = (Spinner) findViewById(R.id.projectList);
        this.f4736a = (MapView) findViewById(R.id.mapView);
        this.c = (RecyclerView) findViewById(R.id.pointList);
        this.b = (RecyclerView) findViewById(R.id.collectedList);
        this.f4737d = findViewById(R.id.collectDone);
        this.f4738e = (Button) findViewById(R.id.collectOrigin);
        this.r = findViewById(R.id.mask_view);
        this.s = (LinearLayout) findViewById(R.id.tunnel_distance_ll);
        this.t = (EditText) findViewById(R.id.tunnel_distance_et);
        TextView textView = (TextView) findViewById(R.id.lookEg);
        textView.getPaint().setUnderlineText(true);
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4831a.E(view);
            }
        });
        View viewFindViewById = findViewById(R.id.top_right_action);
        viewFindViewById.setVisibility(this.f4740g ? 0 : 4);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4801a.G(view);
            }
        });
        a aVar = null;
        if (this.f4740g) {
            this.r.setVisibility(8);
            this.f4738e.setVisibility(8);
            this.f4737d.setVisibility(0);
            this.f4739f.setAdapter((SpinnerAdapter) new e(new String[]{"车身采集"}, aVar));
            this.l = new r0(this, this.f4736a, this.b, this.c, this.f4737d, this.n);
            textView.setVisibility(4);
        } else {
            if (r(this.m)) {
                this.r.setVisibility(8);
                this.f4738e.setVisibility(8);
                this.f4737d.setVisibility(0);
            } else {
                cn.mucang.android.core.utils.u.h("请先设置原点");
                this.f4737d.setVisibility(8);
                this.f4738e.setVisibility(0);
                this.f4738e.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f4811a.I(view);
                    }
                });
            }
            textView.setVisibility(0);
            this.j = 0;
            this.f4741h = new v0(this.f4736a, this.b, this, this.m);
            t0 t0VarB = cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d.c().b(0, this);
            this.i = t0VarB;
            t0VarB.r(this.f4741h);
            this.i.q(this.f4736a);
            this.i.p(this.f4737d);
            this.i.n(this.c);
            this.k = this.i.f4840d;
            this.f4739f.setAdapter((SpinnerAdapter) new e(cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d.c().f(), aVar));
            this.f4739f.setOnItemSelectedListener(new b());
        }
        this.f4739f.getViewTreeObserver().addOnGlobalLayoutListener(new c());
        cn.mucang.android.jiakaoyi.hpmap.view.p.j jVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.j(this.f4736a);
        this.u = jVar;
        this.f4736a.u.g(jVar);
        LiveBus.d(GpsBaseModel.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.u
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f4846a.K((GpsBaseModel) obj);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f4736a.c();
        u0 u0Var = this.k;
        if (u0Var != null) {
            u0Var.a();
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.w);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f4736a.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f4736a.n();
    }

    public SourceData p() {
        u0 u0Var = this.k;
        if (u0Var != null) {
            return u0Var.f4847a;
        }
        return null;
    }
}
