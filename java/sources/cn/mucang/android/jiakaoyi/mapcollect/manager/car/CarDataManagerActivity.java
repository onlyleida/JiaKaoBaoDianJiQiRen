package cn.mucang.android.jiakaoyi.mapcollect.manager.car;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCarDataManagerBinding;
import cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarCodeManagerActivity;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0015J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0014J\b\u0010\u000e\u001a\u00020\u000bH\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "model", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "getStatName", "", "init", "", "loadCarData", "onResume", "renderView", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarDataManagerActivity extends BaseViewBindingActivity<ActivityCarDataManagerBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4993d = new a(null);
    private HpCarMapModel b;
    private JLoadingDialog c;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$Companion;", "", "()V", "TAG", "", "launch", "", "context", "Landroid/content/Context;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CarDataManagerActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CarDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final CarDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        Context context = view.getContext();
        r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams("提示", "删除后将无法恢复，是否确定删除?", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CarDataManagerActivity.q(this.f5013a, view2);
            }
        }, false, 64, (o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CarDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        HpCarMapModel hpCarMapModel = this$0.b;
        if ((hpCarMapModel == null ? 0L : hpCarMapModel.id) <= 0) {
            u.h("车身数据异常,无法删除");
            return;
        }
        JLoadingDialog jLoadingDialog = this$0.c;
        if (jLoadingDialog == null) {
            r.u("loadingDialog");
            throw null;
        }
        jLoadingDialog.b("正在删除...");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarDataManagerActivity$init$2$1$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(CarDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        CarCodeManagerActivity.f5024d.a(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(CarDataManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        CarPreviewActivity.a aVar = CarPreviewActivity.f4994d;
        Context context = view.getContext();
        r.d(context, "it.context");
        HpCarMapModel hpCarMapModel = this$0.b;
        r.c(hpCarMapModel);
        aVar.a(context, hpCarMapModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new CarDataManagerActivity$loadCarData$1(this, null), 3, null);
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarDataManagerActivity$loadCarData$2(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void z() {
        HpCarMapModel hpCarMapModel = this.b;
        if (hpCarMapModel == null) {
            g().infoGroup.setVisibility(8);
            g().emptyTv.setVisibility(0);
            return;
        }
        cn.mucang.android.jiakaoyi.mapcollect.collect.car.d.q(hpCarMapModel == null ? null : hpCarMapModel.modelCode, hpCarMapModel);
        g().infoGroup.setVisibility(0);
        g().emptyTv.setVisibility(8);
        TextView textView = g().carTitle;
        HpCarMapModel hpCarMapModel2 = this.b;
        textView.setText(String.valueOf(hpCarMapModel2 == null ? null : hpCarMapModel2.title));
        TextView textView2 = g().carDesc;
        StringBuilder sb = new StringBuilder();
        sb.append("时间：");
        HpCarMapModel hpCarMapModel3 = this.b;
        sb.append((Object) (hpCarMapModel3 == null ? null : FormatUtils.d("yyyy-MM-dd HH:mm:ss", hpCarMapModel3.acquisitionTime)));
        sb.append("    备注：");
        HpCarMapModel hpCarMapModel4 = this.b;
        sb.append((Object) (hpCarMapModel4 != null ? hpCarMapModel4.describe : null));
        textView2.setText(sb.toString());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车身数据管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        this.c = new JLoadingDialog(this);
        g().titleLayout.titleTv.setText("车身数据管理");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarDataManagerActivity.o(this.f5014a, view);
            }
        });
        g().delete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarDataManagerActivity.p(this.f5012a, view);
            }
        });
        g().modelCarDb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarDataManagerActivity.r(this.f5015a, view);
            }
        });
        g().previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarDataManagerActivity.s(this.f4995a, view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        y();
    }
}
