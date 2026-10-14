package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.model.DeviceSettingInfo;
import cn.mucang.jiakaoyi.uilib.model.PriceModel;
import cn.mucang.jiakaoyi.uilib.utils.DeviceSettingUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingActivityBinding;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0006R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "clickCount", "", "getClickCount", "()I", "setClickCount", "(I)V", "clickTime", "", "getClickTime", "()J", "setClickTime", "(J)V", "havePermission", "", "getHavePermission", "()Z", "havePermission$delegate", "Lkotlin/Lazy;", "loadType", "getLoadType", "loadType$delegate", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SettingActivity extends BaseActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9892f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SettingActivityBinding f9893a;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f9894d;
    private final Lazy b = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity$loadType$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.loadType", 0));
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f9895e = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity$havePermission$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            DeviceSettingInfo deviceSettingInfoA = DeviceSettingUtils.f9578a.a();
            return Boolean.valueOf(deviceSettingInfoA == null ? true : deviceSettingInfoA.updateExam);
        }
    });

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$Companion;", "", "()V", "CAR_MODEL", "", "CHARGE_MODE", "CHECK_FINGERPRINT", "GEAR_12_DISTANCE", "GEAR_1_DISTANCE", "GEAR_2_DISTANCE", "GEAR_3_DISTANCE", "GEAR_4_DISTANCE", "GEAR_SPEED_DISTANCE", "KEY_LOAD_TYPE", "OPEN_START_VOICE", "PRA_UNIT_PRICE", "PRA_UNIT_PRICE_SHOW_MAIN", "ROUND_MAX_TIME", "SHOW_SP_DISTANCE", "SWITCH_RULE", "TEST_ACCOUNT_PWD", "X_GEAR_SPEED_DISTANCE", "launch", "", "context", "Landroid/content/Context;", "loadType", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, int i) {
            kotlin.jvm.internal.r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) SettingActivity.class);
            intent.putExtra("key.loadType", i);
            kotlin.v vVar = kotlin.v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$onCreate$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            g(SettingItem.class, new SettingItemBinder());
            g(SettingDividerItem.class, new SettingItemDividerBinder());
            g(SettingSubTitleItem.class, new SettingSubTitleBinder());
        }
    }

    private final boolean i() {
        return ((Boolean) this.f9895e.getValue()).booleanValue();
    }

    private final int j() {
        return ((Number) this.b.getValue()).intValue();
    }

    public static final void o(Context context, int i) {
        f9892f.a(context, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(SettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (SystemClock.elapsedRealtime() - this$0.getF9894d() > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            this$0.t(0);
        }
        this$0.u(SystemClock.elapsedRealtime());
        if (this$0.getC() != 10) {
            this$0.t(this$0.getC() + 1);
            return;
        }
        if (cn.mucang.android.jiakaoyi.framework.utils.u.b()) {
            cn.mucang.android.core.utils.u.h("关闭引擎调试模式");
            cn.mucang.android.jiakaoyi.framework.utils.u.a();
            this$0.t(0);
        } else {
            cn.mucang.android.core.utils.u.h("打开引擎调试模式");
            cn.mucang.android.jiakaoyi.framework.utils.u.c();
            this$0.t(0);
        }
        this$0.t(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(b adapter, SettingActivity this$0, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        for (Object obj : it) {
            if (obj instanceof SettingItem) {
                ((SettingItem) obj).j(this$0.i());
            }
        }
        adapter.i(it);
        adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(SettingActivity this$0, SettingViewModel viewModel, PriceModel priceModel) {
        String str;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        if (this$0.j() != 1 || priceModel == null) {
            return;
        }
        if (priceModel.type == 1) {
            cn.mucang.android.jiakaoyi.framework.utils.i0.k("charge_mode", 1);
            str = "按圈计费：" + priceModel.price + "元/圈";
        } else {
            cn.mucang.android.jiakaoyi.framework.utils.i0.k("charge_mode", 2);
            str = "按小时计费：" + priceModel.price + "元/小时";
        }
        cn.mucang.android.jiakaoyi.framework.utils.i0.j("pra_unit_price", (float) priceModel.price);
        List<Object> listE = viewModel.a().e();
        if (listE == null) {
            return;
        }
        for (Object obj : listE) {
            if (obj instanceof SettingItem) {
                SettingItem settingItem = (SettingItem) obj;
                if (kotlin.jvm.internal.r.a(settingItem.getTitle(), "收费模式")) {
                    settingItem.i(str);
                    viewModel.a().l(viewModel.a().e());
                }
            }
        }
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final int getC() {
        return this.c;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "设置主页面";
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final long getF9894d() {
        return this.f9894d;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SettingActivityBinding settingActivityBindingInflate = SettingActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(settingActivityBindingInflate, "inflate(layoutInflater)");
        this.f9893a = settingActivityBindingInflate;
        if (settingActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(settingActivityBindingInflate.getRoot());
        SettingActivityBinding settingActivityBinding = this.f9893a;
        if (settingActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingActivity.p(this.f10166a, view);
            }
        });
        SettingActivityBinding settingActivityBinding2 = this.f9893a;
        if (settingActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding2.titleLayout.titleTv.setText("设置");
        SettingActivityBinding settingActivityBinding3 = this.f9893a;
        if (settingActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding3.titleLayout.titleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingActivity.q(this.f10164a, view);
            }
        });
        SettingActivityBinding settingActivityBinding4 = this.f9893a;
        if (settingActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding4.titleLayout.actionTv.setVisibility(8);
        SettingActivityBinding settingActivityBinding5 = this.f9893a;
        if (settingActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding5.titleLayout.divider.setVisibility(0);
        final b bVar = new b();
        SettingActivityBinding settingActivityBinding6 = this.f9893a;
        if (settingActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingActivityBinding6.recyclerView.setAdapter(bVar);
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(SettingViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ingViewModel::class.java)");
        final SettingViewModel settingViewModel = (SettingViewModel) j0VarA;
        settingViewModel.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.i0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SettingActivity.r(bVar, this, (List) obj);
            }
        });
        settingViewModel.b(j());
        LiveBus.d(PriceModel.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.h0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SettingActivity.s(this.f10160a, settingViewModel, (PriceModel) obj);
            }
        });
    }

    public final void t(int i) {
        this.c = i;
    }

    public final void u(long j) {
        this.f9894d = j;
    }
}
