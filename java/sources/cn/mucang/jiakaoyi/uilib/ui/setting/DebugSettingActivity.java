package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.jiakaoyi.uilib.debug.DebugActivity;
import com.mucang.android.jiakaoyi.uilib.databinding.DebugSettingActivityBinding;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0012\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugSettingActivityBinding;", "getStatName", "", "init", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugSettingActivity extends BaseActivity {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DebugSettingActivityBinding f9885a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) DebugSettingActivity.class));
        }
    }

    private final void init() {
        DebugSettingActivityBinding debugSettingActivityBinding = this.f9885a;
        if (debugSettingActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding.blueToothCb.setChecked(cn.mucang.android.jiakaoyi.framework.utils.n.a());
        DebugSettingActivityBinding debugSettingActivityBinding2 = this.f9885a;
        if (debugSettingActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding2.encryptedCb.setChecked(cn.mucang.android.jiakaoyi.framework.utils.c0.a());
        DebugSettingActivityBinding debugSettingActivityBinding3 = this.f9885a;
        if (debugSettingActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding3.oldPro.setChecked(AppUtils.m());
        int i = (MucangConfig.v() || cn.mucang.android.jiakaoyi.framework.utils.n.a()) ? 0 : 8;
        DebugSettingActivityBinding debugSettingActivityBinding4 = this.f9885a;
        if (debugSettingActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding4.rlBlueTooth.setVisibility(i);
        DebugSettingActivityBinding debugSettingActivityBinding5 = this.f9885a;
        if (debugSettingActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding5.rlOldPro.setVisibility(i);
        DebugSettingActivityBinding debugSettingActivityBinding6 = this.f9885a;
        if (debugSettingActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding6.rlEncrypted.setVisibility(i);
        DebugSettingActivityBinding debugSettingActivityBinding7 = this.f9885a;
        if (debugSettingActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding7.cbEngineDebug.setChecked(cn.mucang.android.jiakaoyi.framework.utils.u.b());
        DebugSettingActivityBinding debugSettingActivityBinding8 = this.f9885a;
        if (debugSettingActivityBinding8 != null) {
            debugSettingActivityBinding8.rlEngineDebug.setVisibility(cn.mucang.android.jiakaoyi.framework.utils.u.b() ? 0 : 8);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(DebugSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(DebugSettingActivity this$0, CompoundButton compoundButton, boolean z) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.utils.n.c(z);
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().T(true);
        JLocationManager.f5733a.l(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CompoundButton compoundButton, boolean z) {
        cn.mucang.android.jiakaoyi.framework.utils.c0.b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CompoundButton compoundButton, boolean z) {
        cn.mucang.android.jiakaoyi.framework.utils.i0.i("__key_use_old_protocol__", z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(View view) {
        DebugActivity.a aVar = DebugActivity.f9199g;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVar.a(context);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "调试设置页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DebugSettingActivityBinding debugSettingActivityBindingInflate = DebugSettingActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(debugSettingActivityBindingInflate, "inflate(layoutInflater)");
        this.f9885a = debugSettingActivityBindingInflate;
        if (debugSettingActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(debugSettingActivityBindingInflate.getRoot());
        DebugSettingActivityBinding debugSettingActivityBinding = this.f9885a;
        if (debugSettingActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugSettingActivity.l(this.f10246a, view);
            }
        });
        DebugSettingActivityBinding debugSettingActivityBinding2 = this.f9885a;
        if (debugSettingActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding2.titleLayout.titleTv.setText("调试设置");
        DebugSettingActivityBinding debugSettingActivityBinding3 = this.f9885a;
        if (debugSettingActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding3.titleLayout.actionTv.setVisibility(8);
        DebugSettingActivityBinding debugSettingActivityBinding4 = this.f9885a;
        if (debugSettingActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding4.titleLayout.divider.setVisibility(0);
        init();
        DebugSettingActivityBinding debugSettingActivityBinding5 = this.f9885a;
        if (debugSettingActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding5.blueToothCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.q
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DebugSettingActivity.m(this.f10197a, compoundButton, z);
            }
        });
        DebugSettingActivityBinding debugSettingActivityBinding6 = this.f9885a;
        if (debugSettingActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding6.encryptedCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.u
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DebugSettingActivity.n(compoundButton, z);
            }
        });
        DebugSettingActivityBinding debugSettingActivityBinding7 = this.f9885a;
        if (debugSettingActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugSettingActivityBinding7.oldPro.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.r
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DebugSettingActivity.o(compoundButton, z);
            }
        });
        DebugSettingActivityBinding debugSettingActivityBinding8 = this.f9885a;
        if (debugSettingActivityBinding8 != null) {
            debugSettingActivityBinding8.rlDebugLog.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DebugSettingActivity.p(view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
