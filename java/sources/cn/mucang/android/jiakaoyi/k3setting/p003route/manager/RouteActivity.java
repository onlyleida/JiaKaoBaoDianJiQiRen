package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.amap.api.maps.offlinemap.OfflineMapActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteActivity extends BaseActivity {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RouteActivityBinding f4616a;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity$Companion;", "", "()V", "KEY_EXAM_SITE", "", "launch", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel examSite) {
            r.e(context, "context");
            r.e(examSite, "examSite");
            Intent intent = new Intent(context, (Class<?>) RouteActivity.class);
            intent.putExtra("key_exam_site", examSite);
            ActivityUtils.c(context, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(RouteActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(RouteActivity this$0, View view) {
        r.e(this$0, "this$0");
        ActivityUtils.c(this$0, new Intent(this$0, (Class<?>) OfflineMapActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RouteActivity this$0, View view) {
        r.e(this$0, "this$0");
        Intent intent = new Intent(this$0, (Class<?>) K3RouteSettingActivity.class);
        Bundle extras = this$0.getIntent().getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        Intent intentPutExtras = intent.putExtras(extras);
        r.d(intentPutExtras, "Intent(\n                …ntent.extras ?: Bundle())");
        ActivityUtils.c(this$0, intentPutExtras);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线管理页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RouteActivityBinding routeActivityBindingInflate = RouteActivityBinding.inflate(getLayoutInflater());
        r.d(routeActivityBindingInflate, "inflate(layoutInflater)");
        this.f4616a = routeActivityBindingInflate;
        if (routeActivityBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(routeActivityBindingInflate.getRoot());
        RouteActivityBinding routeActivityBinding = this.f4616a;
        if (routeActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteActivity.j(this.f4634a, view);
            }
        });
        RouteActivityBinding routeActivityBinding2 = this.f4616a;
        if (routeActivityBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding2.titleTv.setText("路线管理");
        RouteActivityBinding routeActivityBinding3 = this.f4616a;
        if (routeActivityBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding3.actionTv.setText("地图管理");
        RouteActivityBinding routeActivityBinding4 = this.f4616a;
        if (routeActivityBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding4.actionTv.setVisibility(0);
        RouteActivityBinding routeActivityBinding5 = this.f4616a;
        if (routeActivityBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding5.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteActivity.k(this.f4635a, view);
            }
        });
        RouteActivityBinding routeActivityBinding6 = this.f4616a;
        if (routeActivityBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding6.action2Tv.setText("路线指令");
        RouteActivityBinding routeActivityBinding7 = this.f4616a;
        if (routeActivityBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding7.action2Tv.setVisibility(0);
        RouteActivityBinding routeActivityBinding8 = this.f4616a;
        if (routeActivityBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeActivityBinding8.action2Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteActivity.l(this.f4633a, view);
            }
        });
        if (savedInstanceState == null) {
            u uVarM = getSupportFragmentManager().m();
            int i = R.id.contentLayout;
            RouteListFragment.a aVar = RouteListFragment.f4617g;
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                extras = new Bundle();
            }
            uVarM.r(i, aVar.a(extras));
            uVarM.j();
        }
    }
}
