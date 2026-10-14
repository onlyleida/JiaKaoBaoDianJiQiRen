package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.CarSelectModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivitySelecCarBinding;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0014J\b\u0010\u000f\u001a\u00020\u000eH\u0003J\b\u0010\u0010\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;", "()V", "configAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "modelAdapter", "viewModel", "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;", "getStatName", "", "init", "", "initViewModel", "initViews", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RealCarSelectActivity extends BaseViewBindingActivity<ActivitySelecCarBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9915f = new a(null);
    private CarSelectViewModel b;
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f9916d = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JLoadingDialog f9917e;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$Companion;", "", "()V", "KEY_CHOOSE_RESULT", "", "launchForResult", "", "context", "Landroid/app/Activity;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(cn.mucang.android.jiakaoyi.framework.h.b bVar, int i, int i2, Intent intent) {
            if (i2 == -1) {
                Serializable serializableExtra = intent.getSerializableExtra("key.chooseResult");
                LocalCarModel localCarModel = serializableExtra instanceof LocalCarModel ? (LocalCarModel) serializableExtra : null;
                if (bVar == null) {
                    return;
                }
                bVar.callback(localCarModel);
            }
        }

        public final void b(Activity context, final cn.mucang.android.jiakaoyi.framework.h.b<LocalCarModel> bVar) {
            kotlin.jvm.internal.r.e(context, "context");
            f.a.a.a.j.a.a(context).c(new Intent(context, (Class<?>) RealCarSelectActivity.class), 1, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.p
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    RealCarSelectActivity.a.c(bVar, i, i2, intent);
                }
            });
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9918a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9918a = iArr;
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void initViewModel() {
        this.c.g(CarSelectModel.class, new CarItemBinder(new Function1<CarSelectModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity.initViewModel.1
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
                CarSelectViewModel carSelectViewModel = RealCarSelectActivity.this.b;
                if (carSelectViewModel != null) {
                    carSelectViewModel.j(it);
                } else {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            }
        }));
        this.f9916d.g(CarItemModel.class, new ConfigItemBinder(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity.initViewModel.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.FALSE;
            }
        }, new Function1<CarItemModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity.initViewModel.3
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
                CarSelectViewModel carSelectViewModel = RealCarSelectActivity.this.b;
                if (carSelectViewModel != null) {
                    carSelectViewModel.t(it);
                } else {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            }
        }));
        g().modelRv.setAdapter(this.c);
        g().configRv.setAdapter(this.f9916d);
        CarSelectViewModel carSelectViewModel = this.b;
        if (carSelectViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel.m().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.t
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RealCarSelectActivity.k(this.f9938a, (List) obj);
            }
        });
        CarSelectViewModel carSelectViewModel2 = this.b;
        if (carSelectViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel2.l().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.r
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RealCarSelectActivity.l(this.f9936a, (List) obj);
            }
        });
        CarSelectViewModel carSelectViewModel3 = this.b;
        if (carSelectViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel3.b().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.q
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RealCarSelectActivity.m(this.f9935a, (LoadingState) obj);
            }
        });
        CarSelectViewModel carSelectViewModel4 = this.b;
        if (carSelectViewModel4 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carSelectViewModel4.a().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.s
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RealCarSelectActivity.n(this.f9937a, (LoadingState) obj);
            }
        });
        CarSelectViewModel carSelectViewModel5 = this.b;
        if (carSelectViewModel5 != null) {
            carSelectViewModel5.p(0, true);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(RealCarSelectActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(it)) {
            com.drakeet.multitype.f fVar = this$0.c;
            kotlin.jvm.internal.r.d(it, "it");
            fVar.i(it);
            this$0.c.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RealCarSelectActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(it)) {
            com.drakeet.multitype.f fVar = this$0.f9916d;
            kotlin.jvm.internal.r.d(it, "it");
            fVar.i(it);
            this$0.f9916d.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RealCarSelectActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9918a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else if (i == 2) {
            this$0.g().stateLayout.e();
        } else {
            if (i != 3) {
                return;
            }
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RealCarSelectActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9918a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f9917e = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f9917e;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f9917e;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    private final void o() {
        g().titleLayout.titleTv.setText("真实车型选择");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RealCarSelectActivity.p(this.f9939a, view);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.w
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                RealCarSelectActivity.q(this.f9941a);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RealCarSelectActivity.r(this.f9940a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(RealCarSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RealCarSelectActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CarSelectViewModel carSelectViewModel = this$0.b;
        if (carSelectViewModel != null) {
            carSelectViewModel.p(0, true);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RealCarSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CarSelectViewModel carSelectViewModel = this$0.b;
        if (carSelectViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        LocalCarModel localCarModelO = carSelectViewModel.o();
        if (localCarModelO == null) {
            cn.mucang.android.core.utils.u.h("请选择车型");
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("key.chooseResult", localCarModelO);
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    public static final void z(Activity activity, cn.mucang.android.jiakaoyi.framework.h.b<LocalCarModel> bVar) {
        f9915f.b(activity, bVar);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "真实车型选择";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        j0 j0VarA = new m0(this).a(CarSelectViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ectViewModel::class.java)");
        this.b = (CarSelectViewModel) j0VarA;
        o();
        initViewModel();
    }
}
