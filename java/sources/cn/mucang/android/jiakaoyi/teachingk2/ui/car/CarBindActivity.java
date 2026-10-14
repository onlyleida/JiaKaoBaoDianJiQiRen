package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.select.SelectSchoolCarActivity;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCarInfoBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResDirUtils;
import cn.mucang.android.selectcity.SelectCityStartupActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity;
import cn.mucang.jiakaoyi.uilib.ui.widget.ListPopupHelper;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.Serializable;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\bH\u0016J\b\u0010\r\u001a\u00020\nH\u0014J\b\u0010\u000e\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;", "()V", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;", "types", "", "", "alreadyBind", "", "clearData", "getStatName", "init", "setView", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarBindActivity extends BaseViewBindingActivity<ActivityCarInfoBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f8171d = new a(null);
    private final CarBindInfo b = new CarBindInfo();
    private final List<String> c = kotlin.collections.u.m("平头", "尖头");

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CarBindActivity.class));
        }
    }

    private final void I() {
        g().cityName.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.R(this.f8184a, view);
            }
        });
        g().nameSchoolTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.J(this.f8185a, view);
            }
        });
        g().numberTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.L(this.f8190a, view);
            }
        });
        g().okTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.N(this.f8181a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (n0.e(this$0.b.getCityCode())) {
            cn.mucang.android.core.utils.u.h("请选择城市");
        } else {
            f.a.a.a.j.a.a(this$0).c(SelectSchoolCarActivity.f5190e.b(this$0, this$0.b.getCityCode()), 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.k
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    CarBindActivity.K(this.f8186a, i, i2, intent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(CarBindActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            Serializable serializableExtra = intent.getSerializableExtra("key.result");
            HpCarMapModel hpCarMapModel = serializableExtra instanceof HpCarMapModel ? (HpCarMapModel) serializableExtra : null;
            if (hpCarMapModel == null) {
                return;
            }
            long driveSchoolId = this$0.b.getDriveSchoolId();
            long j = hpCarMapModel.driveSchoolId;
            if (driveSchoolId == j) {
                return;
            }
            this$0.b.setDriveSchoolId(j);
            this$0.b.setDriveSchoolName(hpCarMapModel.driveSchoolName);
            this$0.g().nameSchoolTv.setText(hpCarMapModel.driveSchoolName);
            this$0.g().numberTv.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.b.getDriveSchoolId() <= 0) {
            cn.mucang.android.core.utils.u.h("请选择驾校");
        } else {
            f.a.a.a.j.a.a(this$0).c(SelectSchoolCarActivity.f5190e.a(this$0, String.valueOf(this$0.b.getDriveSchoolId())), 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.b
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    CarBindActivity.M(this.f8176a, i, i2, intent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(CarBindActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            Serializable serializableExtra = intent.getSerializableExtra("key.result");
            HpCarMapModel hpCarMapModel = serializableExtra instanceof HpCarMapModel ? (HpCarMapModel) serializableExtra : null;
            if (hpCarMapModel == null || kotlin.jvm.internal.r.a(this$0.b.getPlateNum(), hpCarMapModel.plateNum)) {
                return;
            }
            this$0.b.setPlateNum(hpCarMapModel.plateNum);
            this$0.g().numberTv.setText(hpCarMapModel.plateNum);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (n0.e(this$0.b.getPlateNum())) {
            cn.mucang.android.core.utils.u.h("请先设置车辆信息");
        } else {
            new CommonAlertDialog(this$0, new CommonAlertDialog.DialogParams("车辆信息绑定", "绑定后无法手动修改，若需修改请联系客服", "绑定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CarBindActivity.O(this.f8174a, view2);
                }
            }, null, 16, null)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.l
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                CarBindActivity.P(this.f8187a);
            }
        }, "正在绑定", "绑定失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(final CarBindActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CarBindApi carBindApi = new CarBindApi();
        String plateNum = this$0.b.getPlateNum();
        kotlin.jvm.internal.r.c(plateNum);
        CarInfoManager.c(carBindApi.m(plateNum));
        cn.mucang.android.core.utils.u.h("绑定成功");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.d
            @Override // java.lang.Runnable
            public final void run() {
                CarBindActivity.Q(this.f8179a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(CarBindActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.k();
        this$0.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent(this$0, (Class<?>) SelectCityStartupActivity.class);
        intent.putExtra(SelectCityStartupActivity.EXTRA_SHOW_LOCATION_PANEL, false);
        intent.putExtra(SelectCityStartupActivity.EXTRA_SHOW_WHOLE_COUNTRY, false);
        intent.putExtra(SelectCityStartupActivity.EXTRA_ONLY_SHOW_CITY, true);
        f.a.a.a.j.a.a(this$0).c(intent, 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.n
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                CarBindActivity.S(this.f8189a, i, i2, intent2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(CarBindActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra(SelectCityStartupActivity.RESULT_CITY_CODE);
            String stringExtra2 = intent.getStringExtra(SelectCityStartupActivity.RESULT_CITY_NAME);
            if (kotlin.jvm.internal.r.a(this$0.b.getCityCode(), stringExtra)) {
                return;
            }
            this$0.b.setCityCode(stringExtra);
            this$0.b.setCityName(stringExtra2);
            this$0.g().cityName.setText(stringExtra2);
            this$0.g().nameSchoolTv.setText("");
            this$0.g().numberTv.setText("");
        }
    }

    private final void k() {
        CarBindInfo carBindInfoA = CarInfoManager.a();
        g().cityName.setText(carBindInfoA == null ? null : carBindInfoA.getCityName());
        g().cityName.setEnabled(false);
        g().nameSchoolTv.setText(carBindInfoA == null ? null : carBindInfoA.getDriveSchoolName());
        g().nameSchoolTv.setEnabled(false);
        g().numberTv.setText(carBindInfoA != null ? carBindInfoA.getPlateNum() : null);
        g().numberTv.setEnabled(false);
        g().okTv.setVisibility(8);
    }

    private final void l() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.c
            @Override // java.lang.Runnable
            public final void run() {
                CarBindActivity.m();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ExamSiteUtil.f9582a.a();
            Set<String> setE = i0.e();
            if (setE != null) {
                for (String it : setE) {
                    kotlin.jvm.internal.r.d(it, "it");
                    if (StringsKt__StringsKt.G(it, "versionInfo", false, 2, null) || StringsKt__StringsKt.G(it, "key_teach_plan_id", false, 2, null)) {
                        i0.h(it);
                    }
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("重新绑定设备删除资源目录:", Boolean.valueOf(cn.mucang.android.core.utils.m.e(ResDirUtils.b("res")))));
            objM139constructorimpl = Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("重新绑定设备清除数据异常:", q0.d(thM142exceptionOrNullimpl)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(view, "view");
        ListPopupHelper.c(view, this$0.c, new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindActivity$init$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                invoke(num.intValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(final int i) {
                String strValueOf = String.valueOf(i + 1);
                final CarBindActivity carBindActivity = this.this$0;
                LocalConfigManager.c(carBindActivity, LocalConfig.B2HeadType, strValueOf, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindActivity$init$2$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        carBindActivity.g().typeTv.setText((CharSequence) kotlin.collections.s.f0(carBindActivity.c, i));
                    }
                });
            }
        }, 0, false, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(CarBindActivity this$0, final View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final boolean z = !view.isSelected();
        LocalConfigManager.c(this$0, LocalConfig.ClassDevice, String.valueOf(z), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindActivity$init$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                view.setSelected(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final CarBindActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RealCarSelectActivity.f9915f.b(this$0, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.g
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                CarBindActivity.r(this.f8182a, (LocalCarModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(CarBindActivity this$0, LocalCarModel localCarModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (localCarModel == null) {
            return;
        }
        RealCarSelectManager.c(localCarModel);
        this$0.g().realCarTv.setText(localCarModel.getCarDesc());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车辆信息设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.titleTv.setText("车辆信息设置");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.n(this.f8188a, view);
            }
        });
        g().modelNameTv.setText(SelectCarManager.f());
        if (CarInfoManager.b()) {
            k();
        } else {
            I();
        }
        if (AppUtils.b()) {
            LinearLayout linearLayout = g().headLayout;
            kotlin.jvm.internal.r.d(linearLayout, "viewBinding.headLayout");
            linearLayout.setVisibility(0);
            LinearLayout linearLayout2 = g().classDeviceLl;
            kotlin.jvm.internal.r.d(linearLayout2, "viewBinding.classDeviceLl");
            linearLayout2.setVisibility(8);
            TextView textView = g().typeTv;
            CharSequence charSequence = (String) kotlin.collections.s.f0(this.c, LocalConfigManager.j(LocalConfig.B2HeadType, 1) - 1);
            if (charSequence == null) {
                charSequence = (CharSequence) kotlin.collections.s.c0(this.c);
            }
            textView.setText(charSequence);
            g().typeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CarBindActivity.o(this.f8191a, view);
                }
            });
        }
        g().deviceIv.setSelected(LocalConfigManager.f(LocalConfig.ClassDevice));
        g().deviceIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.p(this.f8180a, view);
            }
        });
        TextView textView2 = g().realCarTv;
        LocalCarModel localCarModelB = RealCarSelectManager.b();
        textView2.setText(localCarModelB == null ? null : localCarModelB.getCarDesc());
        g().realCarTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarBindActivity.q(this.f8183a, view);
            }
        });
    }
}
