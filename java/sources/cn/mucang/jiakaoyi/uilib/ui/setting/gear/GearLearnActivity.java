package cn.mucang.jiakaoyi.uilib.ui.setting.gear;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.handle.gear.GearLinearResult;
import cn.mucang.android.jiakaoyi.signal.handle.gear.GearPracticeViewModel;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingGearLearnActivityBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingGearLearnItemBinding;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\u0018\u0000 '2\u00020\u00012\u00020\u0002:\u0002'(B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u0018H\u0014J\b\u0010\u001c\u001a\u00020\u0018H\u0014J\b\u0010\u001d\u001a\u00020\u0018H\u0014J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0017J\b\u0010!\u001a\u00020\u0018H\u0002J\"\u0010\"\u001a\u00020\u00182\b\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\f\u0012\b\u0012\u00060\u000eR\u00020\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "config", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;", "currentRpm", "", "enableGpsSpeed", "", "gearList", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$GearLayout;", "gpsSpeed", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearPracticeViewModel;", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "onResume", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "updateConfig", "updatePracticeResult", "gear", "min", "", "max", "Companion", "GearLayout", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearLearnActivity extends BaseActivity implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f9970g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SettingGearLearnActivityBinding f9971a;
    private GearPracticeViewModel b;
    private final List<b> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<Gear, ? extends GearLinearResult> f9972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.handle.gps.h f9974f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) GearLearnActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001f\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006 "}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$GearLayout;", "", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "activity", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V", "getActivity", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;", "editWatch", "Landroid/text/TextWatcher;", "getGear", "()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "getViewBinding", "()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;", "getValue", "", "value", "", "tip", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;", "updateLearnState", "", "learnTv", "Landroid/widget/TextView;", "learning", "", "updateValue", "min", "max", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Gear f9975a;
        private final GearLearnActivity b;
        private final SettingGearLearnItemBinding c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final TextWatcher f9976d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ GearLearnActivity f9977e;

        @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$GearLayout$editWatch$1", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a implements TextWatcher {
            a() {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                kotlin.jvm.internal.r.e(s, "s");
                String string = s.toString();
                Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
                if (StringsKt__StringsKt.J0(string).toString().length() == 0) {
                    return;
                }
                b bVar = b.this;
                Float fE = bVar.e(bVar.getC().minTv.getText().toString(), "请填入正确的数字");
                b bVar2 = b.this;
                Float fE2 = bVar2.e(bVar2.getC().maxTv.getText().toString(), "请填入正确的数字");
                if (fE == null || fE2 == null || fE.floatValue() <= BitmapDescriptorFactory.HUE_RED || fE2.floatValue() <= BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                GearLinearResult gearLinearResult = new GearLinearResult();
                gearLinearResult.min = Math.min(fE.floatValue(), fE2.floatValue());
                gearLinearResult.max = Math.max(fE.floatValue(), fE2.floatValue());
                float fFloatValue = (fE.floatValue() + fE2.floatValue()) / 2;
                gearLinearResult.value = fFloatValue;
                gearLinearResult.count = 50;
                gearLinearResult.sum = fFloatValue * 50;
                cn.mucang.android.jiakaoyi.signal.center.config.a.h().b(b.this.getF9975a(), gearLinearResult);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }
        }

        public b(final GearLearnActivity this$0, Gear gear, GearLearnActivity activity, SettingGearLearnItemBinding viewBinding) {
            float f2;
            float f3;
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(gear, "gear");
            kotlin.jvm.internal.r.e(activity, "activity");
            kotlin.jvm.internal.r.e(viewBinding, "viewBinding");
            this.f9977e = this$0;
            this.f9975a = gear;
            this.b = activity;
            this.c = viewBinding;
            this.f9976d = new a();
            viewBinding.learnTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GearLearnActivity.b.a(this.f10127a, this$0, view);
                }
            });
            Map map = this$0.f9972d;
            if (map == null) {
                kotlin.jvm.internal.r.u("config");
                throw null;
            }
            GearLinearResult gearLinearResult = (GearLinearResult) map.get(gear);
            float f4 = BitmapDescriptorFactory.HUE_RED;
            if (gearLinearResult == null) {
                f3 = BitmapDescriptorFactory.HUE_RED;
            } else {
                float f5 = gearLinearResult.min;
                if (f5 > BitmapDescriptorFactory.HUE_RED) {
                    f2 = gearLinearResult.max;
                } else {
                    List<LineAB> list = gearLinearResult.lines;
                    if (list == null || list.size() <= 0) {
                        f5 = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        List<LineAB> list2 = gearLinearResult.lines;
                        float f6 = list2.get(list2.size() - 1).f5676a * 0.9f;
                        List<LineAB> list3 = gearLinearResult.lines;
                        f2 = list3.get(list3.size() - 1).f5676a * 1.1f;
                        f5 = f6;
                    }
                    f3 = f4;
                    f4 = f5;
                }
                f4 = f2;
                f3 = f4;
                f4 = f5;
            }
            l(f4, f3);
            viewBinding.gearTv.setText(kotlin.jvm.internal.r.m(gear.gearName, "："));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(final b this$0, final GearLearnActivity this$1, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            if (view.isSelected()) {
                return;
            }
            new JCommonDialog(this$0.getB(), new JCommonDialog.DialogParams("温馨提示", "现在已经挂到" + ((Object) this$0.getF9975a().gearName) + "了吗？", "否", (View.OnClickListener) null, "是，开始学习", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GearLearnActivity.b.i(this.f10125a, this$1, view2);
                }
            }, false, 64, (kotlin.jvm.internal.o) null)).show();
            TtsManager.r("请挂到" + ((Object) this$0.getF9975a().gearName) + "，松开离合和刹车，然后点击开始学习", TtsGrade.GlobalTip);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Float e(String str, String str2) {
            try {
                if (str.length() == 0) {
                    return null;
                }
                return Float.valueOf(Float.parseFloat(str));
            } catch (Throwable unused) {
                cn.mucang.android.core.utils.u.h(str2);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void i(b this$0, GearLearnActivity this$1, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m("开始学习", this$0.getF9975a().gearName));
            this$0.j();
            GearPracticeViewModel gearPracticeViewModel = this$1.b;
            if (gearPracticeViewModel != null) {
                gearPracticeViewModel.h(this$0.getF9975a());
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final GearLearnActivity getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final Gear getF9975a() {
            return this.f9975a;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final SettingGearLearnItemBinding getC() {
            return this.c;
        }

        public final void j() {
            for (b bVar : this.f9977e.c) {
                TextView textView = bVar.getC().learnTv;
                kotlin.jvm.internal.r.d(textView, "it.viewBinding.learnTv");
                k(textView, bVar.getF9975a() == getF9975a());
            }
        }

        public final void k(TextView learnTv, boolean z) {
            kotlin.jvm.internal.r.e(learnTv, "learnTv");
            if (z) {
                learnTv.setSelected(true);
                learnTv.setBackgroundResource(R.drawable.shape_008aff_r2);
                learnTv.setTextColor(-1);
                learnTv.setText("正在学习");
                return;
            }
            learnTv.setSelected(false);
            learnTv.setBackgroundResource(R.drawable.shape_r2_s1_008aff);
            learnTv.setTextColor(Color.parseColor("#FF008AFF"));
            learnTv.setText("开始学习");
        }

        public final void l(float f2, float f3) {
            this.c.minTv.removeTextChangedListener(this.f9976d);
            this.c.maxTv.removeTextChangedListener(this.f9976d);
            EditText editText = this.c.minTv;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String str = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(f2)}, 1));
            kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
            editText.setText(str);
            EditText editText2 = this.c.maxTv;
            String str2 = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(f3)}, 1));
            kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
            editText2.setText(str2);
            this.c.minTv.addTextChangedListener(this.f9976d);
            this.c.maxTv.addTextChangedListener(this.f9976d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(GearLearnActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(GearLearnActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearPracticeViewModel gearPracticeViewModel = this$0.b;
        if (gearPracticeViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        gearPracticeViewModel.g();
        this$0.w();
        cn.mucang.android.core.utils.u.h("保存成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(GearLearnActivity this$0, Triple triple) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.y((Gear) triple.getFirst(), ((Number) triple.getSecond()).floatValue(), ((Number) triple.getThird()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(GearLearnActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        for (b bVar : this$0.c) {
            bVar.getC().learnTv.setEnabled(!bool.booleanValue());
            if (!bool.booleanValue()) {
                TextView textView = bVar.getC().learnTv;
                kotlin.jvm.internal.r.d(textView, "it.viewBinding.learnTv");
                bVar.k(textView, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(GearLearnActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SettingGearLearnActivityBinding settingGearLearnActivityBinding = this$0.f9971a;
        if (settingGearLearnActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding.tvEnable.setSelected(!cn.mucang.android.jiakaoyi.framework.utils.a0.b().c());
        cn.mucang.android.jiakaoyi.framework.utils.a0.b().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(GearLearnActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        boolean z = !this$0.f9973e;
        this$0.f9973e = z;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding = this$0.f9971a;
        if (settingGearLearnActivityBinding != null) {
            settingGearLearnActivityBinding.tvGpsEnable.setSelected(z);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    private final void w() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.l0
            @Override // java.lang.Runnable
            public final void run() {
                GearLearnActivity.x(this.f10134a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(GearLearnActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            Map<Gear, ? extends GearLinearResult> map = this$0.f9972d;
            if (map == null) {
                kotlin.jvm.internal.r.u("config");
                throw null;
            }
            if (!map.isEmpty()) {
                Map<Gear, ? extends GearLinearResult> map2 = this$0.f9972d;
                if (map2 == null) {
                    kotlin.jvm.internal.r.u("config");
                    throw null;
                }
                String jSONString = JSON.toJSONString(map2);
                String strM = kotlin.jvm.internal.r.m(DeviceUtils.c(), Integer.valueOf(jSONString.hashCode()));
                if (cn.mucang.android.jiakaoyi.framework.utils.i0.b(strM, false)) {
                    return;
                }
                if (new cn.mucang.jiakaoyi.uilib.api.r().m(jSONString, SelectCarManager.g())) {
                    cn.mucang.android.jiakaoyi.framework.utils.i0.i(strM, true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private final void y(Gear gear, float f2, float f3) {
        for (b bVar : this.c) {
            if (bVar.getF9975a() == gear) {
                bVar.l(f2, f3);
                return;
            }
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "挡位学习";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(GearPracticeViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…iceViewModel::class.java)");
        this.b = (GearPracticeViewModel) j0VarA;
        SettingGearLearnActivityBinding settingGearLearnActivityBindingInflate = SettingGearLearnActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(settingGearLearnActivityBindingInflate, "inflate(layoutInflater)");
        this.f9971a = settingGearLearnActivityBindingInflate;
        if (settingGearLearnActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(settingGearLearnActivityBindingInflate.getRoot());
        SettingGearLearnActivityBinding settingGearLearnActivityBinding = this.f9971a;
        if (settingGearLearnActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearLearnActivity.q(this.f10140a, view);
            }
        });
        Map<Gear, GearLinearResult> mapG = cn.mucang.android.jiakaoyi.signal.center.config.a.h().g();
        kotlin.jvm.internal.r.d(mapG, "getInstance().gearConfig");
        this.f9972d = mapG;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding2 = this.f9971a;
        if (settingGearLearnActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding2.titleTv.setText("挡位学习");
        SettingGearLearnActivityBinding settingGearLearnActivityBinding3 = this.f9971a;
        if (settingGearLearnActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding3.actionTv.setVisibility(0);
        SettingGearLearnActivityBinding settingGearLearnActivityBinding4 = this.f9971a;
        if (settingGearLearnActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding4.actionTv.setText("保存");
        SettingGearLearnActivityBinding settingGearLearnActivityBinding5 = this.f9971a;
        if (settingGearLearnActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding5.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearLearnActivity.r(this.f10123a, view);
            }
        });
        List<b> list = this.c;
        Gear gear = Gear.Gear1;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding6 = this.f9971a;
        if (settingGearLearnActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        SettingGearLearnItemBinding settingGearLearnItemBinding = settingGearLearnActivityBinding6.gearLayout1;
        kotlin.jvm.internal.r.d(settingGearLearnItemBinding, "viewBinding.gearLayout1");
        list.add(new b(this, gear, this, settingGearLearnItemBinding));
        List<b> list2 = this.c;
        Gear gear2 = Gear.Gear2;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding7 = this.f9971a;
        if (settingGearLearnActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        SettingGearLearnItemBinding settingGearLearnItemBinding2 = settingGearLearnActivityBinding7.gearLayout2;
        kotlin.jvm.internal.r.d(settingGearLearnItemBinding2, "viewBinding.gearLayout2");
        list2.add(new b(this, gear2, this, settingGearLearnItemBinding2));
        List<b> list3 = this.c;
        Gear gear3 = Gear.Gear3;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding8 = this.f9971a;
        if (settingGearLearnActivityBinding8 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        SettingGearLearnItemBinding settingGearLearnItemBinding3 = settingGearLearnActivityBinding8.gearLayout3;
        kotlin.jvm.internal.r.d(settingGearLearnItemBinding3, "viewBinding.gearLayout3");
        list3.add(new b(this, gear3, this, settingGearLearnItemBinding3));
        List<b> list4 = this.c;
        Gear gear4 = Gear.Gear4;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding9 = this.f9971a;
        if (settingGearLearnActivityBinding9 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        SettingGearLearnItemBinding settingGearLearnItemBinding4 = settingGearLearnActivityBinding9.gearLayout4;
        kotlin.jvm.internal.r.d(settingGearLearnItemBinding4, "viewBinding.gearLayout4");
        list4.add(new b(this, gear4, this, settingGearLearnItemBinding4));
        List<b> list5 = this.c;
        Gear gear5 = Gear.Gear5;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding10 = this.f9971a;
        if (settingGearLearnActivityBinding10 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        SettingGearLearnItemBinding settingGearLearnItemBinding5 = settingGearLearnActivityBinding10.gearLayout5;
        kotlin.jvm.internal.r.d(settingGearLearnItemBinding5, "viewBinding.gearLayout5");
        list5.add(new b(this, gear5, this, settingGearLearnItemBinding5));
        GearPracticeViewModel gearPracticeViewModel = this.b;
        if (gearPracticeViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        gearPracticeViewModel.c().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.p0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearLearnActivity.s(this.f10142a, (Triple) obj);
            }
        });
        GearPracticeViewModel gearPracticeViewModel2 = this.b;
        if (gearPracticeViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        gearPracticeViewModel2.d().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.m0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GearLearnActivity.t(this.f10136a, (Boolean) obj);
            }
        });
        if (AppUtils.g()) {
            SettingGearLearnActivityBinding settingGearLearnActivityBinding11 = this.f9971a;
            if (settingGearLearnActivityBinding11 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            settingGearLearnActivityBinding11.tvGpsEnable.setVisibility((cn.mucang.android.jiakaoyi.framework.utils.b0.a().b() || MucangConfig.v()) ? 0 : 8);
            SettingGearLearnActivityBinding settingGearLearnActivityBinding12 = this.f9971a;
            if (settingGearLearnActivityBinding12 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            settingGearLearnActivityBinding12.tvEnable.setVisibility(0);
            SettingGearLearnActivityBinding settingGearLearnActivityBinding13 = this.f9971a;
            if (settingGearLearnActivityBinding13 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            settingGearLearnActivityBinding13.tvEnable.setSelected(cn.mucang.android.jiakaoyi.framework.utils.a0.b().c());
            SettingGearLearnActivityBinding settingGearLearnActivityBinding14 = this.f9971a;
            if (settingGearLearnActivityBinding14 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            settingGearLearnActivityBinding14.tvEnable.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GearLearnActivity.u(this.f10129a, view);
                }
            });
        } else {
            SettingGearLearnActivityBinding settingGearLearnActivityBinding15 = this.f9971a;
            if (settingGearLearnActivityBinding15 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            settingGearLearnActivityBinding15.tvGpsEnable.setVisibility(8);
            SettingGearLearnActivityBinding settingGearLearnActivityBinding16 = this.f9971a;
            if (settingGearLearnActivityBinding16 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            settingGearLearnActivityBinding16.tvEnable.setVisibility(8);
        }
        SettingGearLearnActivityBinding settingGearLearnActivityBinding17 = this.f9971a;
        if (settingGearLearnActivityBinding17 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding17.tvGpsEnable.setSelected(this.f9973e);
        SettingGearLearnActivityBinding settingGearLearnActivityBinding18 = this.f9971a;
        if (settingGearLearnActivityBinding18 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (settingGearLearnActivityBinding18.tvGpsEnable.getVisibility() == 0) {
            SettingGearLearnActivityBinding settingGearLearnActivityBinding19 = this.f9971a;
            if (settingGearLearnActivityBinding19 != null) {
                settingGearLearnActivityBinding19.tvGpsEnable.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.n0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GearLearnActivity.v(this.f10138a, view);
                    }
                });
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        w();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    @SuppressLint({"SetTextI18n"})
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        GearPracticeViewModel gearPracticeViewModel = this.b;
        if (gearPracticeViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        if (gearPracticeViewModel.e() && !signalGetter.d().f5270h) {
            GearPracticeViewModel gearPracticeViewModel2 = this.b;
            if (gearPracticeViewModel2 == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            gearPracticeViewModel2.b();
            TtsManager.r("请启动发动机", TtsGrade.GlobalTip);
            return;
        }
        float fA = signalGetter.d().b;
        if (this.f9973e) {
            if (this.f9974f == null) {
                this.f9974f = new cn.mucang.android.jiakaoyi.signal.handle.gps.h();
            }
            cn.mucang.android.jiakaoyi.signal.handle.gps.h hVar = this.f9974f;
            fA = hVar == null ? BitmapDescriptorFactory.HUE_RED : hVar.a(signalGetter);
        }
        if (!signalGetter.d().f5267e && !signalGetter.d().f5269g && signalGetter.d().M == 1) {
            GearPracticeViewModel gearPracticeViewModel3 = this.b;
            if (gearPracticeViewModel3 == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            gearPracticeViewModel3.a(signalGetter.d().f5265a, fA);
        }
        int i = signalGetter.d().f5265a;
        SettingGearLearnActivityBinding settingGearLearnActivityBinding = this.f9971a;
        if (settingGearLearnActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding.speedTv.setText("车速:" + (((int) (fA * 10)) / 10.0f) + (char) 30721);
        SettingGearLearnActivityBinding settingGearLearnActivityBinding2 = this.f9971a;
        if (settingGearLearnActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        settingGearLearnActivityBinding2.rotateTv.setText("转速:" + i + (char) 36716);
        SettingGearLearnActivityBinding settingGearLearnActivityBinding3 = this.f9971a;
        if (settingGearLearnActivityBinding3 != null) {
            settingGearLearnActivityBinding3.gearTv.setText(kotlin.jvm.internal.r.m("挡位:", signalGetter.d().m.gearName));
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
