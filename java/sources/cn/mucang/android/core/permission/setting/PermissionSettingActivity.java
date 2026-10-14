package cn.mucang.android.core.permission.setting;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.framework.core.databinding.ActivityPermissionSettingBinding;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\"\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0018\u0010\u001d\u001a\u00020\u00122\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006 "}, d2 = {"Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;", "Lcn/mucang/android/core/config/MucangActivity;", "()V", "adapter", "Lme/drakeet/multitype/MultiTypeAdapter;", "defaultPermissions", "", "Lcn/mucang/android/core/permission/setting/PermissionInfo;", "protocol", "", "viewBinding", "Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;", "getViewBinding", "()Lcn/mucang/android/framework/core/databinding/ActivityPermissionSettingBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "getStatName", "initData", "", "initView", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "refreshData", "permissions", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionSettingActivity extends cn.mucang.android.core.config.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f2602a = new ViewBindingLazy(ActivityPermissionSettingBinding.class, new f.a.a.a.viewbinding.e(this));
    private me.drakeet.multitype.d b = new me.drakeet.multitype.d();
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<? extends PermissionInfo> f2603d;

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/core/permission/setting/PermissionSettingActivity$initView$1$2", "Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;", "onItemClick", "", "data", "Lcn/mucang/android/core/permission/setting/PermissionInfo;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements PermissionSettingItemBinder.a {
        a() {
        }

        @Override // cn.mucang.android.core.permission.setting.PermissionSettingItemBinder.a
        public void a(PermissionInfo data) {
            r.e(data, "data");
            PermissionDetailActivity.a aVar = PermissionDetailActivity.c;
            PermissionSettingActivity permissionSettingActivity = PermissionSettingActivity.this;
            String name = data.getName();
            r.d(name, "data.name");
            String reason = data.getReason();
            r.d(reason, "data.reason");
            aVar.a(permissionSettingActivity, name, reason, PermissionSettingActivity.this.c);
        }
    }

    private final ActivityPermissionSettingBinding h() {
        return (ActivityPermissionSettingBinding) this.f2602a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(final PermissionSettingActivity this$0) {
        r.e(this$0, "this$0");
        try {
            final List<PermissionInfo> listB = new PermissionConfigApi().b(this$0.getString(R.string.core__permission_config_version), "jk_authority_reason");
            if (listB == null || listB.isEmpty()) {
                return;
            }
            this$0.runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.permission.setting.g
                @Override // java.lang.Runnable
                public final void run() {
                    PermissionSettingActivity.j(this.f2611a, listB);
                }
            });
        } catch (Exception e2) {
            t.d("PermissionSettingActivity", e2.getMessage());
        }
    }

    private final void initData() {
        o(this.f2603d);
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.permission.setting.h
            @Override // java.lang.Runnable
            public final void run() {
                PermissionSettingActivity.i(this.f2612a);
            }
        });
    }

    private final void initView() {
        ActivityPermissionSettingBinding activityPermissionSettingBindingH = h();
        activityPermissionSettingBindingH.ivBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.permission.setting.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionSettingActivity.k(this.f2613a, view);
            }
        });
        SpannableString spannableString = new SpannableString("  为向您提供更好的用户体验，" + ((Object) cn.mucang.android.core.utils.p.c()) + "在特定场景可能需要向您申请以下手机系统权限");
        Drawable drawable = getResources().getDrawable(R.drawable.core_privacy_tip_tv);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableString.setSpan(new cn.mucang.android.core.widget.a(drawable), 0, 1, 33);
        activityPermissionSettingBindingH.tvNotes.setText(spannableString);
        activityPermissionSettingBindingH.recycleView.setLayoutManager(new LinearLayoutManager(this));
        this.b.f(PermissionInfo.class, new PermissionSettingItemBinder(new a()));
        activityPermissionSettingBindingH.recycleView.setAdapter(this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(PermissionSettingActivity this$0, List permissions) {
        r.e(this$0, "this$0");
        r.e(permissions, "$permissions");
        this$0.o(permissions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(PermissionSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void o(List<? extends PermissionInfo> list) {
        if (list == null) {
            return;
        }
        this.b.h(list);
        this.b.notifyDataSetChanged();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "权限设置页";
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1) {
            this.b.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(h().getRoot());
        Intent intent = getIntent();
        Serializable serializableExtra = intent == null ? null : intent.getSerializableExtra("default_permission_config");
        this.f2603d = serializableExtra instanceof ArrayList ? (ArrayList) serializableExtra : null;
        Intent intent2 = getIntent();
        this.c = intent2 != null ? intent2.getStringExtra("protocol") : null;
        List<? extends PermissionInfo> list = this.f2603d;
        if (!(list == null || list.isEmpty())) {
            String str = this.c;
            if (str == null || str.length() == 0) {
                if (MucangConfig.v()) {
                    u.h("请根据当前项目提供默认权限列表和隐私协议");
                }
            }
        } else if (MucangConfig.v()) {
            u.h("请根据当前项目提供默认权限列表和隐私协议");
        }
        initView();
        initData();
    }
}
