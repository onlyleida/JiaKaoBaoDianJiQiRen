package cn.mucang.android.core.permission.setting;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.framework.core.databinding.ActivityPermissionDetailBinding;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\fH\u0002J\u0012\u0010\u0012\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;", "Lcn/mucang/android/core/config/MucangActivity;", "()V", "count", "", "viewBinding", "Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;", "getViewBinding", "()Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "clickSafeInfoText", "", "it", "Landroid/view/View;", "getStatName", "", "initData", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionDetailActivity extends cn.mucang.android.core.config.n {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f2601a = new ViewBindingLazy(ActivityPermissionDetailBinding.class, new f.a.a.a.viewbinding.e(this));
    private int b;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$Companion;", "", "()V", "EXTRA_PERMISSION_NAME", "", "EXTRA_PERMISSION_REASON", "EXTRA_PROTOCOL", "KEY_SAFE_INFO", "RESULT_CODE", "", "TAG", "launch", "", "context", "Landroid/app/Activity;", Constant.PROTOCOL_WEBVIEW_NAME, "reason", "protocol", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Activity context, String name, String reason, String str) {
            r.e(context, "context");
            r.e(name, "name");
            r.e(reason, "reason");
            Intent intent = new Intent(context, (Class<?>) PermissionDetailActivity.class);
            intent.putExtra("permission_name", name);
            intent.putExtra("permission_reason", reason);
            intent.putExtra("protocol", str);
            context.startActivityForResult(intent, 1);
        }
    }

    private final void g(View view) {
        ActivityPermissionDetailBinding activityPermissionDetailBindingH = h();
        int i = this.b + 1;
        this.b = i;
        activityPermissionDetailBindingH.ivFold.setRotation(i * 180.0f);
        ImageView imageView = activityPermissionDetailBindingH.ivFold;
        imageView.setSelected(!imageView.isSelected());
        if (activityPermissionDetailBindingH.ivFold.isSelected()) {
            activityPermissionDetailBindingH.tvProtectWayExpand.setVisibility(0);
            activityPermissionDetailBindingH.tvProtectWayFold.setVisibility(8);
        } else {
            activityPermissionDetailBindingH.tvProtectWayFold.setVisibility(0);
            activityPermissionDetailBindingH.tvProtectWayExpand.setVisibility(8);
        }
    }

    private final ActivityPermissionDetailBinding h() {
        return (ActivityPermissionDetailBinding) this.f2601a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(final PermissionDetailActivity this$0) {
        r.e(this$0, "this$0");
        try {
            final String strC = new PermissionConfigApi().c(this$0.getString(R.string.core__permission_config_version), "jk_infoSafe_text");
            this$0.runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.permission.setting.d
                @Override // java.lang.Runnable
                public final void run() {
                    PermissionDetailActivity.j(this.f2608a, strC);
                }
            });
        } catch (Exception e2) {
            t.d("PermissionDetailActivity", e2.getMessage());
        }
    }

    private final void initData() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.permission.setting.b
            @Override // java.lang.Runnable
            public final void run() {
                PermissionDetailActivity.i(this.f2606a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(PermissionDetailActivity this$0, String str) {
        r.e(this$0, "this$0");
        this$0.h().tvProtectWayFold.setText(str);
        this$0.h().tvProtectWayExpand.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(PermissionDetailActivity this$0, View it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.g(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(PermissionDetailActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(PermissionDetailActivity this$0, View view) {
        r.e(this$0, "this$0");
        z.c(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(String str, View view) {
        f.a.a.a.activity.h.e(str);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "权限设置详情页";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(h().getRoot());
        Intent intent = getIntent();
        String stringExtra = intent == null ? null : intent.getStringExtra("permission_name");
        Intent intent2 = getIntent();
        String stringExtra2 = intent2 == null ? null : intent2.getStringExtra("permission_reason");
        Intent intent3 = getIntent();
        final String stringExtra3 = intent3 != null ? intent3.getStringExtra("protocol") : null;
        ActivityPermissionDetailBinding activityPermissionDetailBindingH = h();
        activityPermissionDetailBindingH.tvTitle.setText(stringExtra == null ? "权限设置" : stringExtra);
        activityPermissionDetailBindingH.tvTitleReason.setText("为什么需要获取我的" + ((Object) stringExtra) + "权限？");
        activityPermissionDetailBindingH.tvReason.setText(stringExtra2);
        activityPermissionDetailBindingH.tvSafeInfoTitle.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.permission.setting.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionDetailActivity.q(this.f2605a, view);
            }
        });
        activityPermissionDetailBindingH.ivBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.permission.setting.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionDetailActivity.r(this.f2609a, view);
            }
        });
        activityPermissionDetailBindingH.tvGoSet.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.permission.setting.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionDetailActivity.s(this.f2610a, view);
            }
        });
        activityPermissionDetailBindingH.tvPrivacy.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.permission.setting.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionDetailActivity.t(stringExtra3, view);
            }
        });
        initData();
    }
}
