package cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin;

import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCarAdminBinding;
import cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarModelDbActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;", "()V", "getStatName", "", "init", "", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarAdminActivity extends BaseViewBindingActivity<ActivityCarAdminBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(CarAdminActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CarAdminActivity this$0, View view) {
        r.e(this$0, "this$0");
        CarModelDbActivity.c.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CarAdminActivity this$0, View view) {
        r.e(this$0, "this$0");
        CarModelDbActivity.c.a(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(View view) {
        f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/siteBackup");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(View view) {
        f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/dataManager");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(View view) {
        f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/k3ExamSiteManage");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(View view) {
        f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/praUnitPrice");
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车身-管理员";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("管理员页面");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.j(this.f5010a, view);
            }
        });
        g().carModelManager.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.k(this.f5006a, view);
            }
        });
        g().agencyCarDataManager.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.l(this.f5009a, view);
            }
        });
        boolean zA = SchoolDeviceUtil.f3622a.a();
        g().siteDataSave.setVisibility(zA ? 0 : 8);
        g().hpMapManager.setVisibility((zA && (b0.a().b() || MucangConfig.v())) ? 0 : 8);
        g().examSiteManager.setVisibility(zA ? 0 : 8);
        g().siteDataSave.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.m(view);
            }
        });
        g().hpMapManager.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.n(view);
            }
        });
        g().examSiteManager.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.o(view);
            }
        });
        g().costDisplaySetting.setVisibility(zA ? 0 : 8);
        g().costDisplaySetting.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarAdminActivity.p(view);
            }
        });
    }
}
