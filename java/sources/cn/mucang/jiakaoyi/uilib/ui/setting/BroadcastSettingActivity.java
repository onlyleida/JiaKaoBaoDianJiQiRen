package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.utils.LightDelayHelper;
import cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingBroadcastActivityBinding;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u000eH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "broadcastAngel", "", "broadcastDistance", "needOrderExe", "", "onlyUseDistance", "teachBroadcastAngel", "teachBroadcastDistance", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onStop", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BroadcastSettingActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9875a = cn.mucang.android.jiakaoyi.engine.d.b();
    private int b = cn.mucang.android.jiakaoyi.engine.d.b();
    private int c = cn.mucang.android.jiakaoyi.engine.d.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9876d = cn.mucang.android.jiakaoyi.engine.d.l();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9877e = cn.mucang.android.jiakaoyi.engine.d.d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9878f = cn.mucang.android.jiakaoyi.engine.d.e();

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$onCreate$3", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$OnProgressChange;", "onChange", "", "progress", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements JSeekBar.b {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar.b
        public void a(int i) {
            BroadcastSettingActivity.this.f9875a = i;
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$onCreate$4", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$OnProgressChange;", "onChange", "", "progress", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements JSeekBar.b {
        b() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar.b
        public void a(int i) {
            BroadcastSettingActivity.this.b = i;
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$onCreate$5", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$OnProgressChange;", "onChange", "", "progress", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements JSeekBar.b {
        c() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar.b
        public void a(int i) {
            BroadcastSettingActivity.this.c = i;
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$onCreate$6", "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$OnProgressChange;", "onChange", "", "progress", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements JSeekBar.b {
        d() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar.b
        public void a(int i) {
            BroadcastSettingActivity.this.f9876d = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(BroadcastSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(BroadcastSettingActivity this$0, SettingBroadcastActivityBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        this$0.f9875a = 15;
        this$0.c = 30;
        this$0.f9877e = false;
        viewBinding.distanceSeekBar.m(15);
        viewBinding.angelSeekBar.m(this$0.c);
        viewBinding.needOrder.setChecked(this$0.f9877e);
        cn.mucang.android.core.utils.u.h("重置成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(BroadcastSettingActivity this$0, CompoundButton compoundButton, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9877e = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(BroadcastSettingActivity this$0, CompoundButton compoundButton, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9878f = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(SettingBroadcastActivityBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        try {
            String string = viewBinding.leftLightTime.getText().toString();
            if (string == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            int i = Integer.parseInt(StringsKt__StringsKt.J0(string).toString());
            String string2 = viewBinding.warningLightTime.getText().toString();
            if (string2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            int i2 = Integer.parseInt(StringsKt__StringsKt.J0(string2).toString());
            if (i <= 0 || i2 <= 0) {
                return;
            }
            LightDelayHelper lightDelayHelper = LightDelayHelper.f5835a;
            lightDelayHelper.d(i);
            lightDelayHelper.c(i2);
        } catch (Exception e2) {
            e2.printStackTrace();
            TtsManager.r("输入数值不正确", TtsGrade.SpecialVoice);
            cn.mucang.android.core.utils.u.h("输入数值不正确");
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "播报设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        final SettingBroadcastActivityBinding settingBroadcastActivityBindingInflate = SettingBroadcastActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(settingBroadcastActivityBindingInflate, "inflate(layoutInflater)");
        setContentView(settingBroadcastActivityBindingInflate.getRoot());
        settingBroadcastActivityBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BroadcastSettingActivity.p(this.f10167a, view);
            }
        });
        settingBroadcastActivityBindingInflate.titleLayout.titleTv.setText("播报设置");
        settingBroadcastActivityBindingInflate.titleLayout.actionTv.setText("全部重置");
        settingBroadcastActivityBindingInflate.titleLayout.actionTv.setVisibility(0);
        settingBroadcastActivityBindingInflate.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BroadcastSettingActivity.q(this.f10163a, settingBroadcastActivityBindingInflate, view);
            }
        });
        JSeekBar jSeekBar = settingBroadcastActivityBindingInflate.distanceSeekBar;
        int i = this.f9875a;
        a aVar = new a();
        JSeekBar.c cVar = new JSeekBar.c();
        cVar.c(0);
        jSeekBar.k(i, aVar, cVar);
        JSeekBar jSeekBar2 = settingBroadcastActivityBindingInflate.teachDistanceSeekBar;
        int i2 = this.b;
        b bVar = new b();
        JSeekBar.c cVar2 = new JSeekBar.c();
        cVar2.c(0);
        jSeekBar2.k(i2, bVar, cVar2);
        JSeekBar jSeekBar3 = settingBroadcastActivityBindingInflate.angelSeekBar;
        kotlin.jvm.internal.r.d(jSeekBar3, "viewBinding.angelSeekBar");
        JSeekBar.l(jSeekBar3, this.c, new c(), null, 4, null);
        JSeekBar jSeekBar4 = settingBroadcastActivityBindingInflate.teachAngelSeekBar;
        kotlin.jvm.internal.r.d(jSeekBar4, "viewBinding.teachAngelSeekBar");
        JSeekBar.l(jSeekBar4, this.f9876d, new d(), null, 4, null);
        settingBroadcastActivityBindingInflate.needOrder.setChecked(this.f9877e);
        settingBroadcastActivityBindingInflate.needOrder.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.k
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                BroadcastSettingActivity.r(this.f10165a, compoundButton, z);
            }
        });
        settingBroadcastActivityBindingInflate.onlyUseDistance.setChecked(this.f9878f);
        settingBroadcastActivityBindingInflate.onlyUseDistance.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.n
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                BroadcastSettingActivity.s(this.f10171a, compoundButton, z);
            }
        });
        EditText editText = settingBroadcastActivityBindingInflate.leftLightTime;
        LightDelayHelper lightDelayHelper = LightDelayHelper.f5835a;
        editText.setText(String.valueOf(lightDelayHelper.b()));
        settingBroadcastActivityBindingInflate.warningLightTime.setText(String.valueOf(lightDelayHelper.a()));
        settingBroadcastActivityBindingInflate.saveLightTime.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BroadcastSettingActivity.t(settingBroadcastActivityBindingInflate, view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStop() {
        super.onStop();
        cn.mucang.android.jiakaoyi.engine.d.g(this.f9875a);
        cn.mucang.android.jiakaoyi.engine.d.k(this.b);
        cn.mucang.android.jiakaoyi.engine.d.f(this.c);
        cn.mucang.android.jiakaoyi.engine.d.j(this.f9876d);
        cn.mucang.android.jiakaoyi.engine.d.h(this.f9877e);
        cn.mucang.android.jiakaoyi.engine.d.i(this.f9878f);
    }
}
