package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.annotation.SuppressLint;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.jiakaoyi.uilib.actionlog.ActionLogActivity;
import cn.mucang.jiakaoyi.uilib.utils.PrivacyAgreementUtil;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingAboutActivityBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0015¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "attachBaseContext", "", "newBase", "Landroid/content/Context;", "getStatName", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AboutActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f9871a = new a(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) AboutActivity.class));
        }
    }

    public static final void o(Context context) {
        f9871a.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(AboutActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(AboutActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        c1.t(this$0.getSupportFragmentManager());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(AboutActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.core.utils.v0.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean s(AboutActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.startActivity(new Intent(this$0, (Class<?>) CollectGpsPage.class));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(View view) {
        ActionLogActivity.a aVar = ActionLogActivity.b;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVar.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(View view) {
        cn.mucang.jiakaoyi.uilib.upgrade.update.q.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(View view) {
        AppUtils.t(view.getContext(), PrivacyAgreementUtil.f9584a.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(SettingAboutActivityBinding viewBinding, View it) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        ComponentCallbacks2 context = MucangConfig.getContext();
        CrossModuleCaller crossModuleCaller = context instanceof CrossModuleCaller ? (CrossModuleCaller) context : null;
        if (crossModuleCaller == null) {
            return;
        }
        boolean z = !viewBinding.recordIv.isSelected();
        kotlin.jvm.internal.r.d(it, "it");
        crossModuleCaller.e(z, it);
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        cn.mucang.android.jiakaoyi.framework.utils.f0.a(newBase);
        super.attachBaseContext(newBase);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "联系我们";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        String strValueOf;
        super.onCreate(savedInstanceState);
        final SettingAboutActivityBinding settingAboutActivityBindingInflate = SettingAboutActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(settingAboutActivityBindingInflate, "inflate(layoutInflater)");
        setContentView(settingAboutActivityBindingInflate.getRoot());
        settingAboutActivityBindingInflate.titleLayout.titleTv.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.uilib_about_title));
        settingAboutActivityBindingInflate.actionLogLayout.setVisibility(8);
        settingAboutActivityBindingInflate.titleLayout.titleTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.AboutActivity.onCreate.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
                invoke2(view);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                kotlin.jvm.internal.r.e(it, "it");
                settingAboutActivityBindingInflate.actionLogLayout.setVisibility(0);
            }
        }, 3, null));
        settingAboutActivityBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.p(this.f9952a, view);
            }
        });
        settingAboutActivityBindingInflate.qrScan.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.q(this.f9897a, view);
            }
        });
        settingAboutActivityBindingInflate.iconIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.r(this.f9900a, view);
            }
        });
        settingAboutActivityBindingInflate.iconIv.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.g
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return AboutActivity.s(this.f9956a, view);
            }
        });
        settingAboutActivityBindingInflate.actionLog.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.t(view);
            }
        });
        if (AppUtils.n()) {
            StringBuilder sb = new StringBuilder();
            sb.append(cn.mucang.android.jiakaoyi.framework.f.a.c);
            sb.append('-');
            sb.append(cn.mucang.android.jiakaoyi.framework.f.a.b);
            strValueOf = sb.toString();
        } else if (AppUtils.g()) {
            strValueOf = String.valueOf(cn.mucang.android.jiakaoyi.framework.f.a.b);
        } else if (AppUtils.l()) {
            strValueOf = String.valueOf(cn.mucang.android.jiakaoyi.framework.f.a.f3447d);
        } else {
            strValueOf = AppUtils.i() ? String.valueOf(cn.mucang.android.jiakaoyi.framework.f.a.f3448e) : String.valueOf(cn.mucang.android.jiakaoyi.framework.f.a.c);
        }
        settingAboutActivityBindingInflate.versionTv.setText('v' + ((Object) cn.mucang.android.core.utils.o0.u()) + '.' + strValueOf + '.' + cn.mucang.android.jiakaoyi.framework.f.a.f3449f + '.' + DeviceUtils.f() + '_' + DeviceUtils.i() + '_' + DeviceUtils.h() + "\n2023/10/12 17:54:03");
        if (!AppUtils.k()) {
            settingAboutActivityBindingInflate.betaVersionTv.setVisibility(0);
            settingAboutActivityBindingInflate.betaVersionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AboutActivity.u(view);
                }
            });
        }
        settingAboutActivityBindingInflate.tvPolicy.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.v(view);
            }
        });
        FrameLayout frameLayout = settingAboutActivityBindingInflate.faceRecordFl;
        kotlin.jvm.internal.r.d(frameLayout, "viewBinding.faceRecordFl");
        ComponentCallbacks2 context = MucangConfig.getContext();
        CrossModuleCaller crossModuleCaller = context instanceof CrossModuleCaller ? (CrossModuleCaller) context : null;
        frameLayout.setVisibility(crossModuleCaller == null ? false : crossModuleCaller.k() ? 0 : 8);
        ImageView imageView = settingAboutActivityBindingInflate.recordIv;
        ComponentCallbacks2 context2 = MucangConfig.getContext();
        CrossModuleCaller crossModuleCaller2 = context2 instanceof CrossModuleCaller ? (CrossModuleCaller) context2 : null;
        imageView.setSelected(crossModuleCaller2 != null ? crossModuleCaller2.b() : false);
        settingAboutActivityBindingInflate.recordIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.w(settingAboutActivityBindingInflate, view);
            }
        });
    }
}
