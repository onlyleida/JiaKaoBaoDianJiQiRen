package cn.mucang.android.jiakaoyi.k3collect.manager;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.databinding.ActivityK3HpDataManagerBinding;
import cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapManagerActivity;
import cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarDataManagerActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;", "()V", "getStatName", "", "init", "", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3HpDataManagerActivity extends BaseViewBindingActivity<ActivityK3HpDataManagerBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(K3HpDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(K3HpDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        K3MapManagerActivity.f4088d.a(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(K3HpDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        CarDataManagerActivity.f4993d.a(this$0);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "高精度数据管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3HpDataManagerActivity.j(this.f4076a, view);
            }
        });
        g().titleLayout.titleTv.setText("高精度数据管理");
        g().tvGpsSetup.setVisibility(8);
        g().gpsTv.setVisibility(8);
        ((ConstraintLayout) findViewById(R.id.mapDataManager)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3HpDataManagerActivity.k(this.f4075a, view);
            }
        });
        ((ConstraintLayout) findViewById(R.id.carDataManager)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3HpDataManagerActivity.l(this.f4077a, view);
            }
        });
    }
}
