package cn.mucang.android.jiakaoyi.mapcollect.migrate;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityK2MapMigrateBinding;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u0003\u0018\u0000 :2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001:B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0002J\b\u0010.\u001a\u00020\u0012H\u0016J\b\u0010/\u001a\u00020+H\u0014J\b\u00100\u001a\u00020+H\u0002J\u0010\u00101\u001a\u00020+2\u0006\u00102\u001a\u00020'H\u0002J\b\u00103\u001a\u00020+H\u0014J\b\u00104\u001a\u00020+H\u0014J\b\u00105\u001a\u00020+H\u0014J\u001a\u00106\u001a\u0004\u0018\u00010\u00122\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u000f\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\r\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u0012\u0012\u0004\u0012\u00020'0\u0017j\b\u0012\u0004\u0012\u00020'`\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020)8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;", "()V", "converter", "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;", "count", "", "examSiteId", "", "getExamSiteId", "()J", "examSiteId$delegate", "Lkotlin/Lazy;", "gpsBaseId", "getGpsBaseId", "gpsBaseId$delegate", "gpsBaseName", "", "getGpsBaseName", "()Ljava/lang/String;", "gpsBaseName$delegate", "gpsList", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "Lkotlin/collections/ArrayList;", "isChoosing", "", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "newGps", "newLayer", "Lcn/mucang/android/jiakaoyi/mapcollect/migrate/MigratePointLayer;", "newTempGps", "oldGps", "oldLayer", "posList", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "doInit", "", "data", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "getStatName", "init", "migrate", "onClickPoint", "pos", "onDestroy", "onPause", "onResume", "trimGpsLatLon", "d", "", "n", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K2MigrateActivity extends BaseViewBindingActivity<ActivityK2MapMigrateBinding> {
    public static final a r = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f5145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p f5146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private p f5147f;
    private int m;
    private boolean n;
    private MapRender p;
    private JLoadingDialog q;
    private final ArrayList<Gps> b = new ArrayList<>();
    private final ArrayList<Pos> c = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f5148g = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.K2MigrateActivity$gpsBaseId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            return Long.valueOf(this.this$0.getIntent().getLongExtra("gpsBaseId", -1L));
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f5149h = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.K2MigrateActivity$gpsBaseName$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("gpsBaseName");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    @SuppressLint({"SetTextI18n"})
    private final cn.mucang.android.jiakaoyi.signal.c.f.a i = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.h
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            K2MigrateActivity.P(this.f5157a, eVar);
        }
    };
    private final Gps j = new Gps();
    private final Gps k = new Gps();
    private final Gps l = new Gps();
    private final Lazy o = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.K2MigrateActivity$examSiteId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            return Long.valueOf(this.this$0.getIntent().getLongExtra("key.examSiteId", 0L));
        }
    });

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$Companion;", "", "()V", "GPS_BASE_ID", "", "GPS_BASE_NAME", "KEY_EXAM_SITE_ID", "launch", "", "context", "Landroid/content/Context;", "siteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "gpsBaseId", "", "gpsBaseName", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel siteModel, long j, String gpsBaseName) {
            r.e(context, "context");
            r.e(siteModel, "siteModel");
            r.e(gpsBaseName, "gpsBaseName");
            HPGpsManager.k(siteModel.examSiteId, (int) j);
            Intent intent = new Intent(context, (Class<?>) K2MigrateActivity.class);
            intent.putExtra("key.examSiteId", siteModel.examSiteId);
            intent.putExtra("gpsBaseId", j);
            intent.putExtra("gpsBaseName", gpsBaseName);
            v vVar = v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    private final void K() {
        final Gps gps = new Gps(this.j);
        if (!cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(gps.longitude, gps.latitude)) {
            u.h("请先选择原地图上的一点");
            return;
        }
        final Gps gps2 = new Gps(this.k);
        if (cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(gps2.longitude, gps2.latitude)) {
            new AlertDialog.Builder(this).setMessage("确定进行基站迁移?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.k
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    K2MigrateActivity.L(this.f5160a, gps, gps2, dialogInterface, i);
                }
            }).setNegativeButton("暂不迁移", (DialogInterface.OnClickListener) null).create().show();
        } else {
            u.h("请在原地图选择的点上采集一个新的点");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(final K2MigrateActivity this$0, final Gps og, final Gps ng, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        r.e(og, "$og");
        r.e(ng, "$ng");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.l
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                K2MigrateActivity.M(this.f5161a, og, ng);
            }
        }, "正在迁移...", "迁移错误");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(K2MigrateActivity this$0, Gps og, Gps ng) {
        r.e(this$0, "this$0");
        r.e(og, "$og");
        r.e(ng, "$ng");
        if (this$0.s() <= 0) {
            u.h("没有指定基站");
        } else if (new o().m(String.valueOf(this$0.r()), og, ng, Long.valueOf(this$0.s()))) {
            u.h("迁移成功");
        } else {
            u.h("迁移失败");
        }
    }

    private final void N(Pos pos) {
        int size = this.c.size();
        int i = 0;
        double d2 = 1.0E8d;
        if (size > 0) {
            double d3 = 1.0E8d;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                Pos pos2 = this.c.get(i);
                r.d(pos2, "posList[i]");
                double dDistanceTo = pos2.distanceTo(pos);
                if (dDistanceTo < d3) {
                    i2 = i;
                    d3 = dDistanceTo;
                }
                if (i3 >= size) {
                    break;
                } else {
                    i = i3;
                }
            }
            i = i2;
            d2 = d3;
        }
        if (d2 < 150.0d) {
            this.j.setGps(this.b.get(i));
            p pVar = this.f5146e;
            if (pVar != null) {
                pVar.i(this.c.get(i));
            }
            if (isFinishing() || isDestroyed()) {
                return;
            }
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.g
                @Override // java.lang.Runnable
                public final void run() {
                    K2MigrateActivity.O(this.f5156a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(K2MigrateActivity this$0) {
        r.e(this$0, "this$0");
        TextView textView = this$0.g().mapPoint;
        StringBuilder sb = new StringBuilder();
        sb.append(this$0.j.latitude);
        sb.append('\n');
        sb.append(this$0.j.longitude);
        textView.setText(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(K2MigrateActivity this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        if (this$0.n && it.getCurrentPosition().c() && it.getCurrentPosition().f5282h == 4) {
            this$0.l.longitude += it.getCurrentPosition().f5281g.getLongitude();
            this$0.l.latitude += it.getCurrentPosition().f5281g.getLatitude();
            this$0.l.altitude += it.getCurrentPosition().f5281g.getAltitude();
            int i = this$0.m + 1;
            this$0.m = i;
            Gps gps = this$0.k;
            Gps gps2 = this$0.l;
            gps.longitude = gps2.longitude / ((double) i);
            gps.latitude = gps2.latitude / ((double) i);
            gps.altitude = gps2.altitude / ((double) i);
            TextView textView = this$0.g().newStationPoint;
            StringBuilder sb = new StringBuilder();
            sb.append(this$0.k.latitude);
            sb.append('\n');
            sb.append(this$0.k.longitude);
            textView.setText(sb.toString());
        }
        this$0.g().gpsTv.setText("经度: " + ((Object) this$0.Q(it.getCurrentPosition().f5281g.getLongitude(), 10)) + " , 纬度: " + ((Object) this$0.Q(it.getCurrentPosition().f5281g.getLatitude(), 10)) + " , 航向角: " + ((Object) this$0.Q(it.getCurrentPosition().f5277a, 2)) + " , gps类型: " + it.getCurrentPosition().f5282h);
    }

    private final String Q(double d2, int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%." + i + 'f', Arrays.copyOf(new Object[]{Double.valueOf(d2)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    private final void j(final cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        if (fVar == null) {
            return;
        }
        if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.j) {
            this.b.addAll(((cn.mucang.android.jiakaoyi.mapcollect.c.j) fVar).d());
        } else if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.h) {
            this.b.addAll(((cn.mucang.android.jiakaoyi.mapcollect.c.h) fVar).c());
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.c
            @Override // java.lang.Runnable
            public final void run() {
                K2MigrateActivity.o(fVar, this);
            }
        });
        int i = R.id.mapView;
        ((MapView) findViewById(i)).setOnClickListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.m
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K2MigrateActivity.p(this.f5162a, (Pos) obj);
            }
        });
        g().chooseNewStation.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K2MigrateActivity.k(this.f5150a, view);
            }
        });
        g().migrate.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K2MigrateActivity.m(this.f5163a, view);
            }
        });
        this.f5146e = new p((MapView) findViewById(i), -65536);
        this.f5147f = new p((MapView) findViewById(i), -16711936);
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.d
            @Override // java.lang.Runnable
            public final void run() {
                K2MigrateActivity.n(this.f5153a);
            }
        }, 1000L);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(final K2MigrateActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.n) {
            return;
        }
        if (cn.mucang.android.jiakaoyi.signal.c.d.t().getCurrentPosition().f5282h != 4) {
            u.h("暂无高精度定位");
            return;
        }
        this$0.m = 0;
        this$0.n = true;
        final ProgressDialog progressDialogShow = ProgressDialog.show(this$0, null, "正在采集当前基站点...");
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.e
            @Override // java.lang.Runnable
            public final void run() {
                K2MigrateActivity.l(progressDialogShow, this$0);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ProgressDialog progressDialog, K2MigrateActivity this$0) {
        r.e(this$0, "this$0");
        progressDialog.dismiss();
        this$0.n = false;
        p pVar = this$0.f5147f;
        if (pVar != null) {
            cn.mucang.android.jiakaoyi.signal.i.a aVar = this$0.f5145d;
            pVar.i(aVar == null ? null : aVar.a(this$0.k));
        }
        this$0.l.setGps(0.0d, 0.0d, 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(K2MigrateActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.n) {
            return;
        }
        this$0.K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(K2MigrateActivity this$0) {
        r.e(this$0, "this$0");
        if (this$0.isFinishing() || this$0.isDestroyed()) {
            return;
        }
        int i = R.id.mapView;
        ((MapView) this$0.findViewById(i)).u.g(this$0.f5146e);
        ((MapView) this$0.findViewById(i)).u.g(this$0.f5147f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(cn.mucang.android.jiakaoyi.mapcollect.render.f fVar, K2MigrateActivity this$0) {
        r.e(this$0, "this$0");
        if (fVar.getConverter() != null) {
            Iterator<Gps> it = this$0.b.iterator();
            while (it.hasNext()) {
                this$0.c.add(fVar.getConverter().a(it.next()));
            }
            this$0.f5145d = fVar.getConverter();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final K2MigrateActivity this$0, final Pos pos) {
        r.e(this$0, "this$0");
        if (this$0.f5145d == null || this$0.c.size() != this$0.b.size()) {
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.b
            @Override // java.lang.Runnable
            public final void run() {
                K2MigrateActivity.q(this.f5151a, pos);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K2MigrateActivity this$0, Pos it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.N(it);
    }

    private final long r() {
        return ((Number) this.o.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K2MigrateActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(K2MigrateActivity this$0, cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        r.e(this$0, "this$0");
        this$0.j(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(K2MigrateActivity this$0, Boolean bool) {
        JLoadingDialog jLoadingDialog;
        r.e(this$0, "this$0");
        JLoadingDialog jLoadingDialog2 = this$0.q;
        boolean z = false;
        if (jLoadingDialog2 != null && jLoadingDialog2.isShowing()) {
            z = true;
        }
        if (z && r.a(bool, Boolean.TRUE) && (jLoadingDialog = this$0.q) != null) {
            DialogExtensionKt.b(jLoadingDialog);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "基站迁移";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        g().titleLayout.titleTv.setText("考场地图预览");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K2MigrateActivity.t(this.f5158a, view);
            }
        });
        JLoadingDialog jLoadingDialog = new JLoadingDialog(this);
        this.q = jLoadingDialog;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在加载地图...");
        }
        LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K2MigrateActivity.u(this.f5159a, (cn.mucang.android.jiakaoyi.mapcollect.render.f) obj);
            }
        });
        x0.f5139a.a(String.valueOf(r()));
        MapView mapView = g().mapView;
        r.d(mapView, "viewBinding.mapView");
        this.p = new MapRender((androidx.lifecycle.r) this, mapView, true, (cn.mucang.android.jiakaoyi.framework.h.b<Boolean>) new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.migrate.f
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K2MigrateActivity.v(this.f5155a, (Boolean) obj);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MapRender mapRender = this.p;
        if (mapRender != null) {
            mapRender.d();
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.i);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.p;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.p;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }

    public final long s() {
        return ((Number) this.f5148g.getValue()).longValue();
    }
}
