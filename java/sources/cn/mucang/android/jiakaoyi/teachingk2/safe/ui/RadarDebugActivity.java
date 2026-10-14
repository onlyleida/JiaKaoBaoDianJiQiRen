package cn.mucang.android.jiakaoyi.teachingk2.safe.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.GridLayoutManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.z;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityRadarDebugBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemRadarDebugBinding;
import cn.mucang.android.jiakaoyi.teachingk2.safe.DebugRadarSignalItem;
import cn.mucang.android.jiakaoyi.teachingk2.ui.HardwareLogActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0018\u0019B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u0012H\u0014J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "buildModuleStateStr", "", "carModel", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;", "buildRadarData", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;", "signal", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;", "getStatName", "init", "", "onDestroy", "onRadarSignal", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "Companion", "RadarDebugItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RadarDebugActivity extends BaseViewBindingActivity<ActivityRadarDebugBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    public static final a c = new a(null);
    private final com.drakeet.multitype.f b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) RadarDebugActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$RadarDebugItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemRadarDebugBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<DebugRadarSignalItem, ItemRadarDebugBinding> {
        public b(RadarDebugActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemRadarDebugBinding> holder, DebugRadarSignalItem item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemRadarDebugBinding) holder.getViewBinding()).text.setText(item.getText());
            ((ItemRadarDebugBinding) holder.getViewBinding()).value.setText(item.getValue());
        }
    }

    public RadarDebugActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(DebugRadarSignalItem.class, new b(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.b = fVar;
    }

    private final String j(CarModel carModel) {
        if (AppUtils.b()) {
            return kotlin.jvm.internal.r.m("故障码:", Integer.valueOf(carModel.O));
        }
        StringBuilder sb = new StringBuilder();
        ReceiveSenorInfo receiveSenorInfo = carModel.G;
        if (receiveSenorInfo == null) {
            return "没有信号";
        }
        if (receiveSenorInfo.mainBoardState > 0) {
            sb.append("主控故障(" + carModel.G.mainBoardState + ")/");
        }
        if (receiveSenorInfo.safeBoardState > 0) {
            sb.append("安全模块故障/(" + carModel.G.safeBoardState + ")/");
        }
        if (receiveSenorInfo.ultrasonic1State > 0) {
            sb.append("超声波模块1故障/(" + carModel.G.ultrasonic1State + ")/");
        }
        if (receiveSenorInfo.ultrasonic2State > 0) {
            sb.append("超声波模块2故障/(" + carModel.G.ultrasonic2State + ")/");
        }
        if (receiveSenorInfo.microwaveState > 0) {
            sb.append("微波模块故障/(" + carModel.G.microwaveState + ")/");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "result.toString()");
        if (n0.e(string)) {
            return "正常";
        }
        String strSubstring = string.substring(0, string.length() - 1);
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private final List<DebugRadarSignalItem> k(z zVar) {
        ArrayList arrayList = new ArrayList();
        int i = g().radarContainer.frontRadar.getConfig().f7880a;
        int i2 = g().radarContainer.backRadar.getConfig().f7880a;
        int i3 = 0;
        if (i > 0) {
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                int[] iArr = zVar.f5454a;
                kotlin.jvm.internal.r.d(iArr, "signal.frontRadarDis");
                Integer numA = ArraysKt___ArraysKt.A(iArr, i4);
                if (numA != null) {
                    int iIntValue = numA.intValue();
                    DebugRadarSignalItem debugRadarSignalItem = new DebugRadarSignalItem();
                    debugRadarSignalItem.setText(kotlin.jvm.internal.r.m("前雷达", Integer.valueOf(i5)));
                    debugRadarSignalItem.setValue(String.valueOf(iIntValue));
                    arrayList.add(debugRadarSignalItem);
                }
                if (i5 >= i) {
                    break;
                }
                i4 = i5;
            }
        }
        if (i2 > 0) {
            while (true) {
                int i6 = i3 + 1;
                int[] iArr2 = zVar.b;
                kotlin.jvm.internal.r.d(iArr2, "signal.backRadarDis");
                Integer numA2 = ArraysKt___ArraysKt.A(iArr2, i3);
                if (numA2 != null) {
                    int iIntValue2 = numA2.intValue();
                    DebugRadarSignalItem debugRadarSignalItem2 = new DebugRadarSignalItem();
                    debugRadarSignalItem2.setText(kotlin.jvm.internal.r.m("后雷达", Integer.valueOf(i6)));
                    debugRadarSignalItem2.setValue(String.valueOf(iIntValue2));
                    arrayList.add(debugRadarSignalItem2);
                }
                if (i6 >= i2) {
                    break;
                }
                i3 = i6;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RadarDebugActivity this$0, z it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.r(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RadarDebugActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RadarDebugActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        HardwareLogActivity.n.a(this$0);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void r(z zVar) {
        this.b.i(k(zVar));
        this.b.notifyDataSetChanged();
        int[] iArr = zVar.f5454a;
        int[] iArr2 = zVar.b;
        g().radarContainer.frontRadar.b(iArr);
        g().radarContainer.backRadar.b(iArr2);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "雷达调试页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().radarContainer.frontRadar.setConfig(cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a.b());
        g().radarContainer.backRadar.setConfig(cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a.a());
        LiveBus.d(z.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.s
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RadarDebugActivity.l(this.f7871a, (z) obj);
            }
        });
        g().title.titleTv.setText("雷达信号调试");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RadarDebugActivity.m(this.f7884a, view);
            }
        });
        g().dataRv.setLayoutManager(new GridLayoutManager(this, 2));
        g().dataRv.setAdapter(this.b);
        if (AppUtils.n()) {
            g().llError.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RadarDebugActivity.n(this.f7870a, view);
                }
            });
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        if (AppUtils.b()) {
            g().demoFl.setVisibility(4);
            g().infoCl.setVisibility(4);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        CarBrakeState carBrakeState;
        String str;
        CarBrakeSource carBrakeSource;
        String str2;
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        g().speedTv.setText(String.valueOf(signalGetter.d().b));
        g().rpmTv.setText(String.valueOf(signalGetter.d().f5265a));
        TextView textView = g().statusTv;
        ReceiveSenorInfo receiveSenorInfo = signalGetter.d().G;
        String str3 = "";
        if (receiveSenorInfo == null || (carBrakeState = receiveSenorInfo.safeBoardBrakeState) == null || (str = carBrakeState.state) == null) {
            str = "";
        }
        textView.setText(str);
        TextView textView2 = g().targetTv;
        ReceiveSenorInfo receiveSenorInfo2 = signalGetter.d().G;
        if (receiveSenorInfo2 != null && (carBrakeSource = receiveSenorInfo2.safeModuleBrakeReason) != null && (str2 = carBrakeSource.src) != null) {
            str3 = str2;
        }
        textView2.setText(str3);
        TextView textView3 = g().errorTv;
        CarModel carModelD = signalGetter.d();
        kotlin.jvm.internal.r.d(carModelD, "signalGetter.car");
        textView3.setText(j(carModelD));
    }
}
