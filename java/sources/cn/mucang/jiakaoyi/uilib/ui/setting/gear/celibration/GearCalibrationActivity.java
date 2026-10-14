package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model.GearsDataModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils.GearsUtils;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.GearSketchViewGroup;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.ModifyCallback;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.viewmodel.GearsMainViewModel;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityGearCelibrationBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.GearsGearsItemBinding;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0002J\u0012\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J,\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\f2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\fH\u0002J\u0012\u0010\u001a\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\fH\u0002J\u0018\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;", "Lcn/mucang/android/core/config/MucangActivity;", "()V", "binding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;", "getBinding", "()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;", "setBinding", "(Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;)V", "gearsVm", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel;", "getStatName", "", "initView", "", "loadData", "observeDataChange", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "renderDataZoneArea", "gearCategory", "gearsList", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "currentSelectGear", "renderEmptyDataZoneArea", "setEditBtnStyle", "editBtn", "Landroid/widget/TextView;", "isSelected", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearCalibrationActivity extends cn.mucang.android.core.config.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActivityGearCelibrationBinding f9994a;
    private GearsMainViewModel b;

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$observeDataChange$2$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;", "onModified", "", "item", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ModifyCallback {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.ModifyCallback
        public void a(GearsDataModel.GearsItemModel item) {
            kotlin.jvm.internal.r.e(item, "item");
            GearsMainViewModel gearsMainViewModel = GearCalibrationActivity.this.b;
            if (gearsMainViewModel != null) {
                gearsMainViewModel.y(item);
            } else {
                kotlin.jvm.internal.r.u("gearsVm");
                throw null;
            }
        }
    }

    private final void C() {
        GearsMainViewModel gearsMainViewModel = this.b;
        if (gearsMainViewModel != null) {
            gearsMainViewModel.r();
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    private final void D() {
        GearsMainViewModel gearsMainViewModel = this.b;
        if (gearsMainViewModel == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel.h().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearCalibrationActivity.E(this.f10030a, (Pair) obj);
            }
        });
        GearsMainViewModel gearsMainViewModel2 = this.b;
        if (gearsMainViewModel2 == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel2.g().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearCalibrationActivity.F(this.f10028a, (List) obj);
            }
        });
        GearsMainViewModel gearsMainViewModel3 = this.b;
        if (gearsMainViewModel3 == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel3.i().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearCalibrationActivity.G(this.f10022a, (String) obj);
            }
        });
        GearsMainViewModel gearsMainViewModel4 = this.b;
        if (gearsMainViewModel4 == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel4.f().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearCalibrationActivity.H(this.f10026a, (String) obj);
            }
        });
        GearsMainViewModel gearsMainViewModel5 = this.b;
        if (gearsMainViewModel5 == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel5.c().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearCalibrationActivity.I(this.f10047a, (Integer) obj);
            }
        });
        GearsMainViewModel gearsMainViewModel6 = this.b;
        if (gearsMainViewModel6 == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel6.d().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearCalibrationActivity.J(this.f10024a, (Map) obj);
            }
        });
        GearsMainViewModel gearsMainViewModel7 = this.b;
        if (gearsMainViewModel7 != null) {
            gearsMainViewModel7.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.k
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    GearCalibrationActivity.K(this.f10036a, (String) obj);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(GearCalibrationActivity this$0, Pair pair) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Integer num = (Integer) pair.getFirst();
        if (num == null) {
            return;
        }
        int iIntValue = num.intValue();
        Integer num2 = (Integer) pair.getSecond();
        if (num2 == null) {
            return;
        }
        int iIntValue2 = num2.intValue();
        this$0.h().gearsSketchZone.gearsSketch.f(iIntValue, iIntValue2);
        TextView textView = this$0.h().gearsGuideZone.gearLocValue1;
        StringBuilder sb = new StringBuilder();
        sb.append(iIntValue);
        sb.append(',');
        sb.append(iIntValue2);
        textView.setText(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(GearCalibrationActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (list == null || list.isEmpty()) {
            GearsMainViewModel gearsMainViewModel = this$0.b;
            if (gearsMainViewModel == null) {
                kotlin.jvm.internal.r.u("gearsVm");
                throw null;
            }
            this$0.P(gearsMainViewModel.f().e());
        } else {
            GearsMainViewModel gearsMainViewModel2 = this$0.b;
            if (gearsMainViewModel2 == null) {
                kotlin.jvm.internal.r.u("gearsVm");
                throw null;
            }
            String strE = gearsMainViewModel2.f().e();
            GearsMainViewModel gearsMainViewModel3 = this$0.b;
            if (gearsMainViewModel3 == null) {
                kotlin.jvm.internal.r.u("gearsVm");
                throw null;
            }
            this$0.M(strE, list, gearsMainViewModel3.i().e());
        }
        GearSketchViewGroup gearSketchViewGroup = this$0.h().gearsSketchZone.gearsSketch;
        GearsMainViewModel gearsMainViewModel4 = this$0.b;
        if (gearsMainViewModel4 == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearSketchViewGroup.e(gearsMainViewModel4.f().e(), list);
        this$0.h().gearsSketchZone.gearsSketch.setModifyCallback(this$0.new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(GearCalibrationActivity this$0, String str) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        List<GearsDataModel.GearsItemModel> listE = gearsMainViewModel.g().e();
        if (listE == null || listE.isEmpty()) {
            GearsMainViewModel gearsMainViewModel2 = this$0.b;
            if (gearsMainViewModel2 == null) {
                kotlin.jvm.internal.r.u("gearsVm");
                throw null;
            }
            this$0.P(gearsMainViewModel2.f().e());
        } else {
            GearsMainViewModel gearsMainViewModel3 = this$0.b;
            if (gearsMainViewModel3 == null) {
                kotlin.jvm.internal.r.u("gearsVm");
                throw null;
            }
            this$0.M(gearsMainViewModel3.f().e(), listE, str);
        }
        this$0.h().gearsSketchZone.gearsSketch.d(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(GearCalibrationActivity this$0, String str) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a("自动挡", str)) {
            this$0.h().gearsSketchZone.switchGearsCategory.setText("学习手动挡");
        } else {
            this$0.h().gearsSketchZone.switchGearsCategory.setText("学习自动挡");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(GearCalibrationActivity this$0, Integer num) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (num != null && 1 == num.intValue()) {
            this$0.h().gearsGuideZone.deviceStatus.setText("串口已打开");
        } else {
            this$0.h().gearsGuideZone.deviceStatus.setText("串口已断开");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(GearCalibrationActivity this$0, Map map) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                sb.append(((String) entry.getKey()) + " :" + entry.getValue() + '\n');
            }
        }
        this$0.h().deviceInfo.setText(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(GearCalibrationActivity this$0, String str) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (str == null) {
            return;
        }
        this$0.h().gearsGuideZone.gearLocValue0.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void M(String str, List<? extends GearsDataModel.GearsItemModel> list, String str2) {
        h().gearsDataZone.detailItems.removeAllViews();
        if (list == null) {
            return;
        }
        for (final GearsDataModel.GearsItemModel gearsItemModel : list) {
            GearsGearsItemBinding gearsGearsItemBindingInflate = GearsGearsItemBinding.inflate(getLayoutInflater(), h().gearsDataZone.detailItems, true);
            kotlin.jvm.internal.r.d(gearsGearsItemBindingInflate, "inflate(\n               …Items, true\n            )");
            gearsGearsItemBindingInflate.gearsItemTip.setText(GearsUtils.f10057a.b(str, gearsItemModel.type));
            TextView textView = gearsGearsItemBindingInflate.gearsItemValue;
            StringBuilder sb = new StringBuilder();
            sb.append(gearsItemModel.left);
            sb.append(',');
            sb.append(gearsItemModel.top);
            sb.append(',');
            sb.append(gearsItemModel.right);
            sb.append(',');
            sb.append(gearsItemModel.bottom);
            textView.setText(sb.toString());
            if (kotlin.jvm.internal.r.a(gearsItemModel.type, str2)) {
                TextView textView2 = gearsGearsItemBindingInflate.editGearsItem;
                kotlin.jvm.internal.r.d(textView2, "itemView.editGearsItem");
                R(textView2, true);
                gearsGearsItemBindingInflate.editGearsItem.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GearCalibrationActivity.N(this.f10038a, view);
                    }
                });
            } else {
                TextView textView3 = gearsGearsItemBindingInflate.editGearsItem;
                kotlin.jvm.internal.r.d(textView3, "itemView.editGearsItem");
                R(textView3, false);
                gearsGearsItemBindingInflate.editGearsItem.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GearCalibrationActivity.O(this.f10020a, gearsItemModel, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel != null) {
            gearsMainViewModel.D(null);
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(GearCalibrationActivity this$0, GearsDataModel.GearsItemModel gearItem, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(gearItem, "$gearItem");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel != null) {
            gearsMainViewModel.D(gearItem.type);
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    private final void P(String str) {
        h().gearsDataZone.detailItems.removeAllViews();
        for (String str2 : kotlin.jvm.internal.r.a("自动挡", str) ? kotlin.collections.u.m("P档", "R档", "N档", "D档") : kotlin.collections.u.m("1档", "2档", "3档", "4档", "5档", "倒档", "空档")) {
            GearsGearsItemBinding gearsGearsItemBindingInflate = GearsGearsItemBinding.inflate(getLayoutInflater(), h().gearsDataZone.detailItems, true);
            kotlin.jvm.internal.r.d(gearsGearsItemBindingInflate, "inflate(\n               …Items, true\n            )");
            gearsGearsItemBindingInflate.gearsItemTip.setText(str2);
            gearsGearsItemBindingInflate.gearsItemValue.setText("0,0,0,0");
            gearsGearsItemBindingInflate.editGearsItem.setVisibility(8);
        }
    }

    private final void R(TextView textView, boolean z) {
        if (z) {
            textView.setText("完成编辑");
            textView.setTextColor(Color.parseColor("#ffffffff"));
            textView.setBackgroundResource(R.drawable.gears__blue_btn_selector);
        } else {
            textView.setText("编辑");
            textView.setTextColor(Color.parseColor("#FF008AFF"));
            textView.setBackgroundResource(R.drawable.gears__blue_btn_selector2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel != null) {
            gearsMainViewModel.v();
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    private final void initView() {
        h().gearsSketchZone.switchGearsCategory.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearCalibrationActivity.m(this.f10045a, view);
            }
        });
        h().gearsGuideZone.obtainGearsData.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearCalibrationActivity.i(this.f10018a, view);
            }
        });
        h().gearsGuideZone.markGears.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearCalibrationActivity.j(this.f10013a, view);
            }
        });
        h().gearsGuideZone.viewDetail.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearCalibrationActivity.k(this.f10034a, view);
            }
        });
        h().deviceInfoCoverBg.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearCalibrationActivity.l(this.f10046a, view);
            }
        });
        h().gearsGuideZone.gearVersion.setText(kotlin.jvm.internal.r.m("当前版本 v", cn.mucang.android.core.utils.p.k()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel != null) {
            gearsMainViewModel.G();
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel == null) {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
        gearsMainViewModel.t();
        this$0.h().deviceInfoZone.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.h().deviceInfoZone.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(GearCalibrationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearsMainViewModel gearsMainViewModel = this$0.b;
        if (gearsMainViewModel != null) {
            gearsMainViewModel.I();
        } else {
            kotlin.jvm.internal.r.u("gearsVm");
            throw null;
        }
    }

    public final void Q(ActivityGearCelibrationBinding activityGearCelibrationBinding) {
        kotlin.jvm.internal.r.e(activityGearCelibrationBinding, "<set-?>");
        this.f9994a = activityGearCelibrationBinding;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "上位机";
    }

    public final ActivityGearCelibrationBinding h() {
        ActivityGearCelibrationBinding activityGearCelibrationBinding = this.f9994a;
        if (activityGearCelibrationBinding != null) {
            return activityGearCelibrationBinding;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityGearCelibrationBinding activityGearCelibrationBindingInflate = ActivityGearCelibrationBinding.inflate(LayoutInflater.from(this));
        kotlin.jvm.internal.r.d(activityGearCelibrationBindingInflate, "inflate(LayoutInflater.from(this))");
        Q(activityGearCelibrationBindingInflate);
        setContentView(h().getRoot());
        h().title.titleTv.setText("硬件挡位标定");
        h().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearCalibrationActivity.L(this.f10009a, view);
            }
        });
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this, new androidx.lifecycle.m0.d()).a(GearsMainViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(\n     …ainViewModel::class.java)");
        this.b = (GearsMainViewModel) j0VarA;
        initView();
        D();
        C();
    }
}
