package cn.mucang.android.jiakaoyi.k3collect.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import androidx.fragment.app.u;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.q0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u001a\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/BaseCollectActivity;", "()V", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setGpsInfo", "satelliteNumber", "", "trimGpsLatLon", "d", "", "n", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MultilaneCollectActivity extends q0 {
    public static final a m = new a(null);

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity$Companion;", "", "()V", "launch", "", "activity", "Landroid/app/Activity;", "examSiteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/core/activityresult/StartForResultListener;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Activity activity, ExamSiteModel examSiteModel, f.a.a.a.j.c listener) {
            r.e(activity, "activity");
            r.e(examSiteModel, "examSiteModel");
            r.e(listener, "listener");
            Intent intent = new Intent(activity, (Class<?>) MultilaneCollectActivity.class);
            intent.putExtra("examSiteId", String.valueOf(examSiteModel.examSiteId));
            intent.putExtra("originLatitude", examSiteModel.originLatitude);
            intent.putExtra("originLongitude", examSiteModel.originLongitude);
            intent.putExtra("originAltitude", examSiteModel.originLongitude);
            f.a.a.a.j.a.a(activity).c(intent, 100, listener);
        }
    }

    private final String n(double d2, int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%." + i + 'f', Arrays.copyOf(new Object[]{Double.valueOf(d2)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "MultilaneCollect";
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.q0
    protected void l(int i) {
        if (j() == null) {
            return;
        }
        TextView textView = (TextView) findViewById(R.id.gps_info_value);
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append((char) 39063);
        textView.setText(sb.toString());
        ((TextView) findViewById(R.id.gps_longitude_value)).setText(n(this.b.longitude, 10));
        ((TextView) findViewById(R.id.gps_latitude_value)).setText(n(this.b.latitude, 10));
        ((TextView) findViewById(R.id.gps_baseX_value)).setText(n(j().c().longitude, 10));
        ((TextView) findViewById(R.id.gps_baseY_value)).setText(n(j().c().latitude, 10));
        ((TextView) findViewById(R.id.gps_status_value)).setText(String.valueOf(this.f4815f));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.q0, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_multilance_collect);
        String stringExtra = getIntent().getStringExtra("examSiteId");
        this.f4813d = new cn.mucang.android.jiakaoyi.signal.i.b(new Gps(getIntent().getDoubleExtra("originLatitude", 0.0d), getIntent().getDoubleExtra("originLongitude", 0.0d), getIntent().getDoubleExtra("originAltitude", 0.0d)));
        MultilaneCollectFragment multilaneCollectFragment = new MultilaneCollectFragment();
        Bundle bundle = new Bundle();
        bundle.putString("examSiteId", stringExtra);
        multilaneCollectFragment.setArguments(bundle);
        u uVarM = getSupportFragmentManager().m();
        uVarM.r(R.id.containerMulti, multilaneCollectFragment);
        uVarM.j();
    }
}
