package cn.mucang.android.jiakaoyi.mapcollect.collect;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.CarSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MapView f4820a;
    private final Spinner b;
    private final View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.mapcollect.collect.car.d f4822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f4824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f4825h;
    private final e i;
    private final e j;
    private final e k;
    private final cn.mucang.android.jiakaoyi.mapcollect.collect.car.e l;
    private final HpCarMapModel m;
    private final TextView n;

    class a implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView f4826a;
        final /* synthetic */ RecyclerView b;
        final /* synthetic */ RecyclerView c;

        a(r0 r0Var, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3) {
            this.f4826a = recyclerView;
            this.b = recyclerView2;
            this.c = recyclerView3;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                this.f4826a.setVisibility(0);
                this.b.setVisibility(8);
                this.c.setVisibility(8);
            } else if (i == 1) {
                this.f4826a.setVisibility(8);
                this.b.setVisibility(0);
                this.c.setVisibility(8);
            } else {
                this.f4826a.setVisibility(8);
                this.b.setVisibility(8);
                this.c.setVisibility(0);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private static class b extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f4827a;

        public b(View view) {
            super(view);
            this.f4827a = (TextView) view.findViewById(R.id.text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c extends RecyclerView.Adapter<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f4828a;

        c() {
            ArrayList arrayList = new ArrayList();
            this.f4828a = arrayList;
            arrayList.addAll(Arrays.asList("采集主天线", "采集点", "采集左前轮", "采集左后轮", "采集右前轮", "采集右后轮", "设置车轮偏移", "前风挡距离", "后风挡距离", "车身高度"));
            if (AppUtils.l()) {
                arrayList.add("左后视镜");
                arrayList.add("右后视镜");
            } else if (AppUtils.i()) {
                arrayList.add("左轮廓");
                arrayList.add("右轮廓");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(int i, View view) {
            f(i);
        }

        private void f(int i) {
            if (i == 6) {
                new cn.mucang.android.jiakaoyi.mapcollect.collect.dialog.i(r0.this.f4821d, r0.this.f4822e);
                return;
            }
            if (i == 7) {
                new cn.mucang.android.jiakaoyi.mapcollect.collect.dialog.j(r0.this.f4821d, r0.this.f4822e, true);
                return;
            }
            if (i == 8) {
                new cn.mucang.android.jiakaoyi.mapcollect.collect.dialog.j(r0.this.f4821d, r0.this.f4822e, false);
                return;
            }
            if (i == 9) {
                new cn.mucang.android.jiakaoyi.mapcollect.collect.dialog.f(r0.this.f4821d, r0.this.f4822e);
                return;
            }
            Gps gpsB = r0.this.f4821d.v.b();
            if (gpsB == null) {
                return;
            }
            if (i == 0) {
                if (r0.this.f4822e.z(gpsB, r0.this.f4821d.v.f4835f, r0.this.f4821d.v.f4834e, r0.this.f4821d.v.f4837h, true)) {
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 1) {
                if (r0.this.f4823f > 24) {
                    cn.mucang.android.core.utils.u.h("最多只能采集24个点");
                    return;
                }
                if (r0.this.f4822e.B(r0.this.f4823f - 1, gpsB, true)) {
                    r0.c(r0.this);
                    r0.this.i.f4830a = r0.this.f4822e.f4769e.carPoints;
                    r0.this.i.notifyDataSetChanged();
                    notifyDataSetChanged();
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 2) {
                if (r0.this.f4822e.I(gpsB, true)) {
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 3) {
                if (r0.this.f4822e.H(gpsB, true)) {
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 4) {
                if (r0.this.f4822e.K(gpsB, true)) {
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 5) {
                if (r0.this.f4822e.J(gpsB, true)) {
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 10) {
                if (r0.this.f4822e.y(r0.this.f4824g - 1, gpsB, true)) {
                    r0.h(r0.this);
                    r0.this.j.f4830a = r0.this.f4822e.f4769e.leftMirrorPoints;
                    r0.this.j.notifyDataSetChanged();
                    notifyDataSetChanged();
                    r0.this.B();
                    return;
                }
                return;
            }
            if (i == 11 && r0.this.f4822e.G(r0.this.f4825h - 1, gpsB, true)) {
                r0.j(r0.this);
                r0.this.k.f4830a = r0.this.f4822e.f4769e.rightMirrorPoints;
                r0.this.k.notifyDataSetChanged();
                notifyDataSetChanged();
                r0.this.B();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(b bVar, final int i) {
            String str = this.f4828a.get(i);
            if (i == 1) {
                bVar.f4827a.setText(str + ":" + r0.this.f4823f);
            } else if (i == 10) {
                bVar.f4827a.setText(str + ":" + r0.this.f4824g);
            } else if (i == 11) {
                bVar.f4827a.setText(str + ":" + r0.this.f4825h);
            } else {
                bVar.f4827a.setText(str);
            }
            bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4762a.d(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public b onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.hpmap__collect_car_collect, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f4828a.size();
        }
    }

    private static class d extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f4829a;
        private TextView b;

        public d(View view) {
            super(view);
            this.f4829a = (TextView) view.findViewById(R.id.text);
            TextView textView = (TextView) view.findViewById(R.id.re_collect);
            this.b = textView;
            textView.getPaint().setUnderlineText(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class e extends RecyclerView.Adapter<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<Pos> f4830a;

        /* synthetic */ e(r0 r0Var, List list, a aVar) {
            this(list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void e(int i, View view) {
            boolean zY;
            Gps gpsB = r0.this.f4821d.v.b();
            if (gpsB == null) {
                return;
            }
            if (r0.this.b.getSelectedItemPosition() == 0) {
                zY = r0.this.f4822e.B(i, gpsB, true);
            } else {
                zY = r0.this.b.getSelectedItemPosition() == 1 ? r0.this.f4822e.y(i, gpsB, true) : r0.this.f4822e.G(i, gpsB, true);
            }
            if (zY) {
                notifyDataSetChanged();
                r0.this.B();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(d dVar, final int i) {
            Pos pos = this.f4830a.get(i);
            if (pos == null) {
                dVar.f4829a.setText((i + 1) + ".未采集");
                dVar.b.setOnClickListener(null);
                dVar.b.setVisibility(8);
                return;
            }
            dVar.b.setVisibility(0);
            dVar.f4829a.setText((i + 1) + ".X=" + r0.this.D(pos.x) + ",Y=" + r0.this.D(pos.y));
            dVar.b.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4775a.e(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public d onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.hpmap__collect_car_point, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (cn.mucang.android.core.utils.g.b(this.f4830a)) {
                return 0;
            }
            return this.f4830a.size();
        }

        private e(List<Pos> list) {
            this.f4830a = list;
        }
    }

    public static class f {
    }

    public static class g {
    }

    public r0(PosCollectActivity posCollectActivity, MapView mapView, RecyclerView recyclerView, RecyclerView recyclerView2, View view, HpCarMapModel hpCarMapModel) {
        this.f4821d = posCollectActivity;
        this.f4820a = mapView;
        Spinner spinner = (Spinner) posCollectActivity.findViewById(R.id.pos_type);
        this.b = spinner;
        this.c = view;
        this.m = hpCarMapModel;
        RecyclerView recyclerView3 = (RecyclerView) posCollectActivity.findViewById(R.id.leftMirrorList);
        RecyclerView recyclerView4 = (RecyclerView) posCollectActivity.findViewById(R.id.rightMirrorList);
        this.n = (TextView) posCollectActivity.findViewById(R.id.collect_info);
        cn.mucang.android.jiakaoyi.mapcollect.collect.car.d dVar = new cn.mucang.android.jiakaoyi.mapcollect.collect.car.d(hpCarMapModel);
        this.f4822e = dVar;
        this.f4823f = 1;
        this.f4824g = 1;
        this.f4825h = 1;
        mapView.u.j();
        cn.mucang.android.jiakaoyi.mapcollect.collect.car.e eVar = new cn.mucang.android.jiakaoyi.mapcollect.collect.car.e(mapView);
        this.l = eVar;
        mapView.u.g(eVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add("车身");
        if (AppUtils.l()) {
            arrayList.add("左后视镜");
            arrayList.add("右后视镜");
        }
        if (AppUtils.i()) {
            arrayList.add("左轮廓");
            arrayList.add("右轮廓");
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(posCollectActivity, android.R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setOnItemSelectedListener(new a(this, recyclerView, recyclerView3, recyclerView4));
        spinner.setSelection(0);
        a aVar = null;
        e eVar2 = new e(this, dVar.f4769e.carPoints, aVar);
        this.i = eVar2;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(eVar2);
        e eVar3 = new e(this, dVar.f4769e.leftMirrorPoints, aVar);
        this.j = eVar3;
        recyclerView3.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView3.setAdapter(eVar3);
        e eVar4 = new e(this, dVar.f4769e.rightMirrorPoints, aVar);
        this.k = eVar4;
        recyclerView4.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView4.setAdapter(eVar4);
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext(), 1, false));
        recyclerView2.setAdapter(new c());
        view.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f4787a.r(view2);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.model.a.class).h(posCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f4785a.t((cn.mucang.android.jiakaoyi.hpmap.model.a) obj);
            }
        });
        LiveBus.d(f.class).h(posCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f4789a.v((r0.f) obj);
            }
        });
        LiveBus.d(g.class).h(posCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f4747a.x((r0.g) obj);
            }
        });
    }

    private void A() {
        this.n.setText("左前轮:" + ((CarSrcData) this.f4822e.f4847a).leftFrontOffset + ",右前轮:" + ((CarSrcData) this.f4822e.f4847a).rightFrontOffset + ",左后轮:" + ((CarSrcData) this.f4822e.f4847a).leftBackOffset + ",右后轮:" + ((CarSrcData) this.f4822e.f4847a).rightBackOffset + ",前挡风距离:" + ((CarSrcData) this.f4822e.f4847a).frontDistance + ",后挡风距离:" + ((CarSrcData) this.f4822e.f4847a).backDistance + ",车身高:" + ((CarSrcData) this.f4822e.f4847a).mainPosHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f4820a.getMeasuredWidth() <= 0 || this.f4820a.getMeasuredHeight() <= 0) {
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4752a.z();
                }
            }, 200L);
            return;
        }
        this.l.n(this.f4822e.f4769e.copy());
        if (this.f4822e.f4769e.back != null) {
            MapView mapView = this.f4820a;
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(180.0d, 460.0d, mapView) * 0.8f);
            this.f4820a.setCurrentRotateDegrees((float) ((-90.0d) - this.f4822e.f4769e.degree));
            CarPos carPos = this.f4822e.f4769e;
            Pos posMeanWith = carPos.center;
            if (posMeanWith == null) {
                cn.mucang.android.jiakaoyi.signal.pos.a aVar = carPos.bound;
                posMeanWith = aVar == null ? new Pos(carPos.back).meanWith(this.f4822e.f4769e.front) : aVar.f5818e;
            }
            this.f4820a.i((float) posMeanWith.x, (float) posMeanWith.y);
            this.f4820a.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String D(double d2) {
        return String.format("%.2f", Double.valueOf(d2 * 0.01d));
    }

    static /* synthetic */ int c(r0 r0Var) {
        int i = r0Var.f4823f;
        r0Var.f4823f = i + 1;
        return i;
    }

    static /* synthetic */ int h(r0 r0Var) {
        int i = r0Var.f4824g;
        r0Var.f4824g = i + 1;
        return i;
    }

    static /* synthetic */ int j(r0 r0Var) {
        int i = r0Var.f4825h;
        r0Var.f4825h = i + 1;
        return i;
    }

    private void o() {
        LocalCarModel localCarModelB;
        if (this.f4822e.b()) {
            String strValueOf = this.m.modelCode;
            if (cn.mucang.android.core.utils.n0.e(strValueOf) && (localCarModelB = SelectCarManager.b()) != null && localCarModelB.getConfig() != null) {
                strValueOf = String.valueOf(localCarModelB.getConfig().getCode());
            }
            this.f4822e.p(strValueOf, this.m);
            C("车身采集完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(View view) {
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(cn.mucang.android.jiakaoyi.hpmap.model.a aVar) {
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(f fVar) {
        A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(g gVar) {
        this.i.f4830a = this.f4822e.f4769e.carPoints;
        this.j.f4830a = this.f4822e.f4769e.leftMirrorPoints;
        this.k.f4830a = this.f4822e.f4769e.rightMirrorPoints;
        this.i.notifyDataSetChanged();
        this.j.notifyDataSetChanged();
        this.k.notifyDataSetChanged();
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z() {
        if (this.f4821d.isDestroyed() || this.f4821d.isFinishing()) {
            return;
        }
        B();
    }

    protected void C(String str) {
        TtsManager.H();
        TtsManager.r(str, TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(str);
    }

    public cn.mucang.android.jiakaoyi.mapcollect.collect.car.d p() {
        return this.f4822e;
    }
}
