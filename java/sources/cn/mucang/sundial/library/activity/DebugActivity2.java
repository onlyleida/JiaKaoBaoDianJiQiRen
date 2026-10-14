package cn.mucang.sundial.library.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.SundialLogDb;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtActivityDebug2Binding;
import cn.mucang.sundial.library.device.DebugLocationStrategy;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.util.AppUtil;
import cn.mucang.sundial.library.util.GlobalData;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/activity/DebugActivity2;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Lkotlin/v;", "onClickedRightFull", "()V", "Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;", "viewBinding$delegate", "Lkotlin/f;", "getViewBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;", "viewBinding", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class DebugActivity2 extends BaseActivity {

    /* JADX INFO: renamed from: viewBinding$delegate, reason: from kotlin metadata */
    private final Lazy viewBinding = new ViewBindingLazy(TtActivityDebug2Binding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    private final TtActivityDebug2Binding getViewBinding() {
        return (TtActivityDebug2Binding) this.viewBinding.getValue();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    protected void onClickedRightFull() {
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityDebug2Binding viewBinding = getViewBinding();
        viewBinding.clearDebugLog.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$onCreateView$1$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击清除日志");
                SundialLogDb.getInstance().clear();
            }
        });
        Button systemDebug = viewBinding.systemDebug;
        r.d(systemDebug, "systemDebug");
        GlobalData globalData = GlobalData.INSTANCE;
        systemDebug.setVisibility(r.a(globalData.getDevice().getClass().getSimpleName(), "CwSundialDevice") ? 0 : 8);
        viewBinding.systemDebug.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$onCreateView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击系统调试按钮");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setComponent(new ComponentName("com.cw.qcomlog", "com.cw.qcomlog.MainActivity"));
                    intent.addFlags(268435456);
                    this.this$0.startActivity(intent);
                    Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
            }
        });
        CheckBox useDebugCamera = viewBinding.useDebugCamera;
        r.d(useDebugCamera, "useDebugCamera");
        useDebugCamera.setVisibility(MucangConfig.v() ? 0 : 8);
        CheckBox useDebugCamera2 = viewBinding.useDebugCamera;
        r.d(useDebugCamera2, "useDebugCamera");
        useDebugCamera2.setChecked(globalData.getUseDebugCamera());
        viewBinding.useDebugCamera.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$onCreateView$1$3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SundialLog.normal("使用测试照片，不拍照： " + z);
                GlobalData.INSTANCE.setUseDebugCamera(z);
            }
        });
        CheckBox useDebugLoc = viewBinding.useDebugLoc;
        r.d(useDebugLoc, "useDebugLoc");
        useDebugLoc.setChecked(AppLocation.INSTANCE.getLocationStrategy() instanceof DebugLocationStrategy);
        viewBinding.useDebugLoc.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$onCreateView$$inlined$with$lambda$2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SundialLog.normal("使用测试定位： " + z);
                if (z) {
                    AppLocation.INSTANCE.setLocationStrategy(new DebugLocationStrategy());
                    return;
                }
                AppLocation appLocation = AppLocation.INSTANCE;
                SundialDevice device = GlobalData.INSTANCE.getDevice();
                Context applicationContext = this.this$0.getApplicationContext();
                r.d(applicationContext, "applicationContext");
                appLocation.setLocationStrategy(device.locationStrategy(applicationContext));
            }
        });
        CheckBox useLocationData = viewBinding.useLocationData;
        r.d(useLocationData, "useLocationData");
        useLocationData.setVisibility(AppUtil.isLuKaoYi() ? 0 : 8);
        CheckBox useLocationData2 = viewBinding.useLocationData;
        r.d(useLocationData2, "useLocationData");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        useLocationData2.setChecked(sundialManager.isLocationDataStrategy());
        viewBinding.useLocationData.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$onCreateView$1$5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SundialManager sundialManager2 = SundialManager.getInstance();
                r.d(sundialManager2, "SundialManager.getInstance()");
                sundialManager2.setLocationDataStrategy(z);
            }
        });
        CheckBox useObdLocation = viewBinding.useObdLocation;
        r.d(useObdLocation, "useObdLocation");
        useObdLocation.setVisibility(AppUtil.isLuKaoYi() ? 0 : 8);
        CheckBox useObdLocation2 = viewBinding.useObdLocation;
        r.d(useObdLocation2, "useObdLocation");
        SundialManager sundialManager2 = SundialManager.getInstance();
        r.d(sundialManager2, "SundialManager.getInstance()");
        useObdLocation2.setChecked(sundialManager2.isOBDLocationStrategy());
        viewBinding.useObdLocation.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity2$onCreateView$1$6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SundialManager sundialManager3 = SundialManager.getInstance();
                r.d(sundialManager3, "SundialManager.getInstance()");
                sundialManager3.setOBDLocationStrategy(z);
            }
        });
        FrameLayout root = getViewBinding().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }
}
