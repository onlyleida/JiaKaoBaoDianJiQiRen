package cn.mucang.android.jiakaoyi.teachingk2.collectsite;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.s0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;

/* JADX INFO: loaded from: classes4.dex */
public class SiteDataPage extends BaseActivity {
    private ExamSiteModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f6942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f6943e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View.OnClickListener f6941a = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.s
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f6967a.r(view);
        }
    };
    private cn.mucang.android.jiakaoyi.signal.c.f.a b = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final s0 f6944f = new s0();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            SiteDataPage.this.f6944f.d(eVar);
            SiteDataPage.this.f6942d.setText(SiteDataPage.this.f6944f.a());
        }
    }

    private static class b extends RecyclerView.Adapter<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ExamSiteModel f6946a;
        private final View.OnClickListener b;

        /* synthetic */ b(ExamSiteModel examSiteModel, View.OnClickListener onClickListener, a aVar) {
            this(examSiteModel, onClickListener);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(c cVar, int i) {
            if (i == 0) {
                cVar.c.setText("采集原点");
                cVar.f6948d.setText(SiteDataPage.j(this.f6946a) ? "已采集" : "未采集");
                cVar.b.setImageResource(R.drawable.ic_caiji_yuandian);
                cVar.f6947a.setBackgroundResource(R.drawable.shape_caiji_yuandian);
            } else if (i == 1) {
                cVar.c.setText("采集考试项目");
                cVar.f6948d.setText("采集倒车入库等考试项目");
                cVar.b.setImageResource(R.drawable.ic_caiji_xiangmu);
                cVar.f6947a.setBackgroundResource(R.drawable.shape_caiji_xiangmu);
            } else if (i == 2) {
                cVar.c.setText("采集考场物体");
                cVar.f6948d.setText("采集考场里比如花坛、电线杆等物体");
                cVar.b.setImageResource(R.drawable.ic_caiji_wuti);
                cVar.f6947a.setBackgroundResource(R.drawable.shape_caiji_wuti);
            } else if (i == 3) {
                cVar.c.setText("采集电子栅栏");
                cVar.f6948d.setText("采集考场里车辆禁止驶入区域");
                cVar.b.setImageResource(R.drawable.ic_caiji_zhalan);
                cVar.f6947a.setBackgroundResource(R.drawable.shape_caiji_zhalan);
            } else if (i == 4) {
                cVar.c.setText("采集周围环境");
                cVar.f6948d.setText("采集操场外围建筑、环境等");
                cVar.b.setImageResource(R.drawable.ic_caiji_huanjing);
                cVar.f6947a.setBackgroundResource(R.drawable.shape_caiji_huanjing);
            } else if (i == 5) {
                cVar.c.setText("采集特殊区域");
                cVar.f6948d.setText("障碍识别");
                cVar.b.setImageResource(R.drawable.ic_caiji_teshu);
                cVar.f6947a.setBackgroundResource(R.drawable.shape_caiji_teshu);
            }
            cVar.itemView.setTag(Integer.valueOf(i));
            cVar.itemView.setOnClickListener(this.b);
            View view = cVar.itemView;
            view.setLayoutParams(view.getLayoutParams());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public c onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.site_data_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 6;
        }

        private b(ExamSiteModel examSiteModel, View.OnClickListener onClickListener) {
            this.f6946a = examSiteModel;
            this.b = onClickListener;
        }
    }

    private static class c extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f6947a;
        ImageView b;
        TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f6948d;

        public c(View view) {
            super(view);
            this.f6947a = view.findViewById(R.id.root);
            this.b = (ImageView) view.findViewById(R.id.icon);
            this.c = (TextView) view.findViewById(R.id.name);
            this.f6948d = (TextView) view.findViewById(R.id.desc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j(ExamSiteModel examSiteModel) {
        return examSiteModel.originLatitude > 1.0E-8d && examSiteModel.originLongitude > 1.0E-8d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(Gps gps) {
        ExamSiteModel examSiteModel = this.c;
        examSiteModel.longitude = gps.longitude;
        examSiteModel.latitude = gps.latitude;
        examSiteModel.altitude = gps.altitude;
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.b);
        this.f6943e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(final Gps gps) throws Exception {
        String str;
        try {
            new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.b().m(this.c, gps.latitude, gps.longitude, gps.altitude);
            cn.mucang.android.core.utils.u.c(new SafeRunnable(this, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6968a.m(gps);
                }
            }));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("设置失败");
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
    public void r(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue == 0) {
            if (j(this.c)) {
                this.f6944f.e("已采集原点");
                return;
            }
            Gps gpsB = this.f6944f.b();
            if (gpsB == null) {
                return;
            }
            s(gpsB);
            return;
        }
        if (iIntValue == 1) {
            if (j(this.c)) {
                PosCollectActivity.O(this, this.c);
                return;
            } else {
                this.f6944f.e("请先采集原点");
                return;
            }
        }
        if (iIntValue == 2) {
            if (j(this.c)) {
                SiteCollectPage.J(this, String.valueOf(this.c.examSiteId));
                return;
            } else {
                this.f6944f.e("请先采集原点");
                return;
            }
        }
        if (iIntValue == 3) {
            if (j(this.c)) {
                SiteCollectPage.I(this, String.valueOf(this.c.examSiteId));
                return;
            } else {
                this.f6944f.e("请先采集原点");
                return;
            }
        }
        if (iIntValue == 4) {
            new cn.mucang.android.jiakaoyi.teachingk2.collectsite.w.d(this, this.c.qrCode);
        } else {
            if (iIntValue != 5) {
                return;
            }
            if (j(this.c)) {
                SiteCollectPage.K(this, String.valueOf(this.c.examSiteId));
            } else {
                this.f6944f.e("请先采集原点");
            }
        }
    }

    private void s(final Gps gps) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.r
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6966a.q(gps);
            }
        }, "正在设置原点...", "");
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "考场数据管理页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = (ExamSiteModel) getIntent().getSerializableExtra("siteData");
        setContentView(R.layout.activity_site_data);
        findViewById(R.id.back).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6969a.o(view);
            }
        });
        this.f6942d = (TextView) findViewById(R.id.gps_info);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.dataView);
        recyclerView.setLayoutManager(new GridLayoutManager(this, 3));
        b bVar = new b(this.c, this.f6941a, null);
        this.f6943e = bVar;
        recyclerView.setAdapter(bVar);
        if (j(this.c)) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.b);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.b);
    }
}
