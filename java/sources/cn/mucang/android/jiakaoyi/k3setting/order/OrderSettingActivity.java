package cn.mucang.android.jiakaoyi.k3setting.order;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemBinder;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingActivityBinding;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0015R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OrderSettingActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f4387a = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.OrderSettingActivity$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.g();
        }
    });
    private SettingActivityBinding b;
    private JLoadingDialog c;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4388a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4388a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$onCreate$3", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SettingItemClick {
        b() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            Intent intent = new Intent(view.getContext(), (Class<?>) ManualOrderSettingActivity.class);
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$onCreate$4", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements SettingItemClick {
        c() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            Intent intent = new Intent(view.getContext(), (Class<?>) LightAssembleActivity.class);
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$onCreate$5", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements SettingItemClick {
        d() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            LightOrderActivity.a aVar = LightOrderActivity.f4374f;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$onCreate$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e extends com.drakeet.multitype.f {
        e() {
            super(null, 0, null, 7, null);
            g(SettingItem.class, new SettingItemBinder());
        }
    }

    private final ExamSiteModel g() {
        return (ExamSiteModel) this.f4387a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(OrderSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(OrderSettingActivity this$0, final LightViewModel lightViewModel, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(lightViewModel, "$lightViewModel");
        new JCommonDialog(this$0, new JCommonDialog.DialogParams("确认重置吗？", "重置后本机自己设置的规则将会丢失", "取消", (View.OnClickListener) null, "确定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.t1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OrderSettingActivity.n(lightViewModel, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(LightViewModel lightViewModel, View view) {
        kotlin.jvm.internal.r.e(lightViewModel, "$lightViewModel");
        lightViewModel.s(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(OrderSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4388a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.c = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.c;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.c;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "设置主页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (g() == null) {
            finish();
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return;
        }
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(LightViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ghtViewModel::class.java)");
        final LightViewModel lightViewModel = (LightViewModel) j0VarA;
        SettingActivityBinding settingActivityBindingInflate = SettingActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(settingActivityBindingInflate, "inflate(layoutInflater)");
        this.b = settingActivityBindingInflate;
        if (settingActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(settingActivityBindingInflate.getRoot());
        SettingActivityBinding settingActivityBinding = this.b;
        if (settingActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.r1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderSettingActivity.l(this.f4461a, view);
            }
        });
        SettingActivityBinding settingActivityBinding2 = this.b;
        if (settingActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding2.titleLayout.titleTv.setText("指令设置");
        SettingActivityBinding settingActivityBinding3 = this.b;
        if (settingActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding3.titleLayout.actionTv.setText("全部重置");
        SettingActivityBinding settingActivityBinding4 = this.b;
        if (settingActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding4.titleLayout.actionTv.setVisibility(0);
        SettingActivityBinding settingActivityBinding5 = this.b;
        if (settingActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding5.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.s1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderSettingActivity.m(this.f4464a, lightViewModel, view);
            }
        });
        SettingActivityBinding settingActivityBinding6 = this.b;
        if (settingActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding6.titleLayout.divider.setVisibility(0);
        e eVar = new e();
        eVar.i(kotlin.collections.u.m(new SettingItem(0, "手控指令", null, true, new b(), false, false, null, 224, null), new SettingItem(0, "灯光组合", null, true, new c(), false, false, null, 224, null), new SettingItem(0, "灯光指令", null, true, new d(), false, false, null, 224, null)));
        SettingActivityBinding settingActivityBinding7 = this.b;
        if (settingActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding7.recyclerView.setAdapter(eVar);
        lightViewModel.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.u1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                OrderSettingActivity.o(this.f4470a, (LoadingState) obj);
            }
        });
    }
}
