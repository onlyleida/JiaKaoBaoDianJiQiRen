package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.CarSelectModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.car.SelectedCarModel;
import cn.mucang.jiakaoyi.uilib.manager.SignalValueManager;
import cn.mucang.jiakaoyi.uilib.ui.check.SelfCheckActivity;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivitySelecCarBinding;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 12\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020(H\u0002J\b\u0010,\u001a\u00020(H\u0002J\b\u0010-\u001a\u00020(H\u0002J\u0012\u0010.\u001a\u00020(2\b\u0010/\u001a\u0004\u0018\u000100H\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0017\u0010\u0013R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b\u001e\u0010\u0013R\u001b\u0010 \u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0019\u001a\u0004\b!\u0010\u0006R\u000e\u0010#\u001a\u00020$X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "clickCount", "", "getClickCount", "()I", "setClickCount", "(I)V", "clickTime", "", "getClickTime", "()J", "setClickTime", "(J)V", "configAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "isDebug", "", "()Z", "setDebug", "(Z)V", "launchForResult", "getLaunchForResult", "launchForResult$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "modelAdapter", "onlySelect", "getOnlySelect", "onlySelect$delegate", "selectedCode", "getSelectedCode", "selectedCode$delegate", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;", "viewModel", "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;", "carTypeSetOK", "", "getStatName", "", "initData", "initViewModel", "initViews", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarSelectActivity extends BaseActivity {
    public static final a l = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ActivitySelecCarBinding f9906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CarSelectViewModel f9907e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JLoadingDialog f9910h;
    private boolean i;
    private int j;
    private long k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f9905a = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$launchForResult$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key.launchForResult", false));
        }
    });
    private final Lazy b = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$onlySelect$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key.onlySelect", false));
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$selectedCode$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.onlySelectedCode", 0));
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.drakeet.multitype.f f9908f = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.drakeet.multitype.f f9909g = new com.drakeet.multitype.f(null, 0, null, 7, null);

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J \u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0007J&\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00140\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$Companion;", "", "()V", "KEY_LAUNCH_FOR_RESULT", "", "KEY_ONLY_SELECT", "KEY_ONLY_SELECTED_CODE", "KEY_ONLY_SELECT_RESULT", "launch", "", "context", "Landroid/content/Context;", "launchForResult", "Landroid/app/Activity;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "launchOnlyForCode", "selectedCode", "", "Lcn/mucang/android/jiakaoyi/signal/car/SelectedCarModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(cn.mucang.android.jiakaoyi.framework.h.b bVar, int i, int i2, Intent intent) {
            if (i2 != -1 || bVar == null) {
                return;
            }
            bVar.callback(Boolean.TRUE);
        }

        public final void b(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CarSelectActivity.class));
        }

        public final void c(Activity context, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
            kotlin.jvm.internal.r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) CarSelectActivity.class);
            intent.putExtra("key.launchForResult", true);
            f.a.a.a.j.a.a(context).c(intent, 1, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.c
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent2) {
                    CarSelectActivity.a.d(bVar, i, i2, intent2);
                }
            });
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9911a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9911a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(CarSelectActivity this$0, SelectedCarModel selectedCarModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent();
        intent.putExtra("key.onlySelectResult", selectedCarModel);
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(CarSelectActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.j jVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CarSelectViewModel carSelectViewModel = this$0.f9907e;
        if (carSelectViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel.u(jVar.f5428a);
        if (jVar.f5428a) {
            if (SignalValueManager.f9459a.a()) {
                kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarSelectActivity$onCreate$2$1(this$0, null), 3, null);
            } else {
                this$0.i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        DeviceUtils.o();
        if (l()) {
            setResult(-1);
        } else {
            SelfCheckActivity.a.c(SelfCheckActivity.f9767h, this, false, false, 6, null);
        }
        finish();
    }

    private final void initData() {
        CarItemModel config;
        if (m()) {
            CarSelectViewModel carSelectViewModel = this.f9907e;
            if (carSelectViewModel != null) {
                CarSelectViewModel.q(carSelectViewModel, n(), false, 2, null);
                return;
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
        LocalCarModel localCarModelB = SelectCarManager.b();
        Integer numValueOf = (localCarModelB == null || (config = localCarModelB.getConfig()) == null) ? null : Integer.valueOf(config.getCode());
        if (numValueOf == null) {
            numValueOf = 0;
        }
        CarSelectViewModel carSelectViewModel2 = this.f9907e;
        if (carSelectViewModel2 != null) {
            CarSelectViewModel.q(carSelectViewModel2, numValueOf.intValue(), false, 2, null);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    private final void initViewModel() {
        this.f9908f.g(CarSelectModel.class, new CarItemBinder(new Function1<CarSelectModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity.initViewModel.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(CarSelectModel carSelectModel) {
                invoke2(carSelectModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(CarSelectModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                CarSelectViewModel carSelectViewModel = CarSelectActivity.this.f9907e;
                if (carSelectViewModel != null) {
                    carSelectViewModel.j(it);
                } else {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            }
        }));
        this.f9909g.g(CarItemModel.class, new ConfigItemBinder(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity.initViewModel.2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(CarSelectActivity.this.getI());
            }
        }, new Function1<CarItemModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity.initViewModel.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(CarItemModel carItemModel) {
                invoke2(carItemModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(CarItemModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                CarSelectViewModel carSelectViewModel = CarSelectActivity.this.f9907e;
                if (carSelectViewModel != null) {
                    carSelectViewModel.t(it);
                } else {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            }
        }));
        ActivitySelecCarBinding activitySelecCarBinding = this.f9906d;
        if (activitySelecCarBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelecCarBinding.modelRv.setAdapter(this.f9908f);
        ActivitySelecCarBinding activitySelecCarBinding2 = this.f9906d;
        if (activitySelecCarBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelecCarBinding2.configRv.setAdapter(this.f9909g);
        CarSelectViewModel carSelectViewModel = this.f9907e;
        if (carSelectViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel.m().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarSelectActivity.o(this.f9925a, (List) obj);
            }
        });
        CarSelectViewModel carSelectViewModel2 = this.f9907e;
        if (carSelectViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel2.l().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarSelectActivity.p(this.f9927a, (List) obj);
            }
        });
        CarSelectViewModel carSelectViewModel3 = this.f9907e;
        if (carSelectViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel3.b().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarSelectActivity.q(this.f9922a, (LoadingState) obj);
            }
        });
        CarSelectViewModel carSelectViewModel4 = this.f9907e;
        if (carSelectViewModel4 != null) {
            carSelectViewModel4.a().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.j
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    CarSelectActivity.r(this.f9928a, (LoadingState) obj);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    private final boolean l() {
        return ((Boolean) this.f9905a.getValue()).booleanValue();
    }

    private final boolean m() {
        return ((Boolean) this.b.getValue()).booleanValue();
    }

    private final int n() {
        return ((Number) this.c.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CarSelectActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(it)) {
            com.drakeet.multitype.f fVar = this$0.f9908f;
            kotlin.jvm.internal.r.d(it, "it");
            fVar.i(it);
            this$0.f9908f.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(CarSelectActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(it)) {
            com.drakeet.multitype.f fVar = this$0.f9909g;
            kotlin.jvm.internal.r.d(it, "it");
            fVar.i(it);
            this$0.f9909g.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CarSelectActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9911a[loadingState.ordinal()];
        if (i == 1) {
            ActivitySelecCarBinding activitySelecCarBinding = this$0.f9906d;
            if (activitySelecCarBinding != null) {
                activitySelecCarBinding.stateLayout.f();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i == 2) {
            ActivitySelecCarBinding activitySelecCarBinding2 = this$0.f9906d;
            if (activitySelecCarBinding2 != null) {
                activitySelecCarBinding2.stateLayout.e();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i != 3) {
            return;
        }
        ActivitySelecCarBinding activitySelecCarBinding3 = this$0.f9906d;
        if (activitySelecCarBinding3 != null) {
            activitySelecCarBinding3.stateLayout.c();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(CarSelectActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9911a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f9910h = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f9910h;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f9910h;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    private final void s() {
        ActivitySelecCarBinding activitySelecCarBinding = this.f9906d;
        if (activitySelecCarBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelecCarBinding.titleLayout.titleTv.setText("车型选择");
        ActivitySelecCarBinding activitySelecCarBinding2 = this.f9906d;
        if (activitySelecCarBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelecCarBinding2.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarSelectActivity.t(this.f9920a, view);
            }
        });
        ActivitySelecCarBinding activitySelecCarBinding3 = this.f9906d;
        if (activitySelecCarBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelecCarBinding3.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.l
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                CarSelectActivity.u(this.f9930a);
            }
        });
        ActivitySelecCarBinding activitySelecCarBinding4 = this.f9906d;
        if (activitySelecCarBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelecCarBinding4.titleLayout.titleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarSelectActivity.v(this.f9924a, view);
            }
        });
        ActivitySelecCarBinding activitySelecCarBinding5 = this.f9906d;
        if (activitySelecCarBinding5 != null) {
            activitySelecCarBinding5.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CarSelectActivity.w(this.f9926a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(CarSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(CarSelectActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.initData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(CarSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (SystemClock.elapsedRealtime() - this$0.getK() > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            this$0.K(0);
        }
        this$0.L(SystemClock.elapsedRealtime());
        if (this$0.getJ() != 10) {
            this$0.K(this$0.getJ() + 1);
        } else {
            if (this$0.getI()) {
                return;
            }
            this$0.M(true);
            this$0.f9909g.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(CarSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CarSelectViewModel carSelectViewModel = this$0.f9907e;
        if (carSelectViewModel != null) {
            carSelectViewModel.s(this$0.m());
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    public final void K(int i) {
        this.j = i;
    }

    public final void L(long j) {
        this.k = j;
    }

    public final void M(boolean z) {
        this.i = z;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车型选择";
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final int getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final long getK() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivitySelecCarBinding activitySelecCarBindingInflate = ActivitySelecCarBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(activitySelecCarBindingInflate, "inflate(layoutInflater)");
        this.f9906d = activitySelecCarBindingInflate;
        androidx.lifecycle.j0 j0VarA = new m0(this).a(CarSelectViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ectViewModel::class.java)");
        this.f9907e = (CarSelectViewModel) j0VarA;
        ActivitySelecCarBinding activitySelecCarBinding = this.f9906d;
        if (activitySelecCarBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(activitySelecCarBinding.getRoot());
        s();
        initViewModel();
        if (m()) {
            LiveBus.d(SelectedCarModel.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.k
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    CarSelectActivity.I(this.f9929a, (SelectedCarModel) obj);
                }
            });
        } else {
            LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.j.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.e
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    CarSelectActivity.J(this.f9923a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.j) obj);
                }
            });
        }
        initData();
    }

    /* JADX INFO: renamed from: x, reason: from getter */
    public final boolean getI() {
        return this.i;
    }
}
