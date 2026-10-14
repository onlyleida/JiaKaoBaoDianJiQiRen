package cn.mucang.sundial.library.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.a;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.o0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UpdateSpeedEvent;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityBaseBinding;
import cn.mucang.sundial.library.entity.ActivityBaseInfo;
import cn.mucang.sundial.library.util.ActivityUtil;
import cn.mucang.sundial.library.util.ClickController;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.viewmodel.BaseActivityViewModel;
import com.amap.api.fence.GeoFence;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.text.DecimalFormat;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 E2\u00020\u0001:\u0001EB\u0007¢\u0006\u0004\bD\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u0004J!\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0017\u0010\u0004J\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J-\u0010%\u001a\u00028\u0000\"\b\b\u0000\u0010 *\u00020\u001f2\u0006\u0010\"\u001a\u00020!2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0014¢\u0006\u0004\b(\u0010)J&\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000,\"\n\b\u0000\u0010+\u0018\u0001*\u00020**\u00020\u0000H\u0085\b¢\u0006\u0004\b%\u0010-J\u000f\u0010.\u001a\u00020\u0012H\u0016¢\u0006\u0004\b.\u0010/R\u0016\u00101\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00104\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u001d\u0010>\u001a\u0002098D@\u0004X\u0084\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u001d\u0010C\u001a\u00020?8D@\u0004X\u0084\u0084\u0002¢\u0006\f\n\u0004\b@\u0010;\u001a\u0004\bA\u0010B¨\u0006F"}, d2 = {"Lcn/mucang/sundial/library/activity/BaseActivity;", "Lcn/mucang/sundial/library/activity/TopActivity;", "Lkotlin/v;", "initBaseView", "()V", "showLatLon", "Landroidx/lifecycle/m0$a;", "getViewModelFactory", "()Landroidx/lifecycle/m0$a;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "", "keyCode", "Landroid/view/KeyEvent;", GeoFence.BUNDLE_KEY_FENCESTATUS, "", "onKeyDown", "(ILandroid/view/KeyEvent;)Z", "initData", "onClickedRightFull", "initViewModel", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Landroid/view/TextureView;", "getDummyTexture", "()Landroid/view/TextureView;", "onBackPressed", "Landroidx/lifecycle/a;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/o0;", "owner", "Ljava/lang/Class;", "vmClass", "vm", "(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;", "Landroidx/lifecycle/m0$b;", "vmFactory", "()Landroidx/lifecycle/m0$b;", "Landroidx/lifecycle/j0;", "VM", "Lkotlin/f;", "(Lcn/mucang/sundial/library/activity/BaseActivity;)Lkotlin/f;", "isHiddenSelfCheckBtn", "()Z", "", "backPressedTime", "J", "Lcn/mucang/sundial/library/util/ClickController;", "versionClickController", "Lcn/mucang/sundial/library/util/ClickController;", "", "lastCarSpeed", "F", "Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;", "baseBinding$delegate", "Lkotlin/f;", "getBaseBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;", "baseBinding", "Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;", "baseViewModel$delegate", "getBaseViewModel", "()Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;", "baseViewModel", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public class BaseActivity extends TopActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long INTERVAL = 1500;
    private static boolean canExit;
    private long backPressedTime;

    /* JADX INFO: renamed from: baseBinding$delegate, reason: from kotlin metadata */
    private final Lazy baseBinding = new ViewBindingLazy(TtActivityBaseBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.BaseActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    /* JADX INFO: renamed from: baseViewModel$delegate, reason: from kotlin metadata */
    private final Lazy baseViewModel = new l0(v.b(BaseActivityViewModel.class), new Function0<n0>() { // from class: cn.mucang.sundial.library.activity.BaseActivity$vm$$inlined$viewModels$4
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final n0 invoke() {
            n0 viewModelStore = this.getViewModelStore();
            r.d(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }, new C03851());
    private float lastCarSpeed;
    private ClickController versionClickController;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/activity/BaseActivity$Companion;", "", "", "canExit", "Z", "getCanExit", "()Z", "setCanExit", "(Z)V", "", "INTERVAL", "J", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final boolean getCanExit() {
            return BaseActivity.canExit;
        }

        public final void setCanExit(boolean z) {
            BaseActivity.canExit = z;
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.BaseActivity$vm$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/j0;", "VM", "Landroidx/lifecycle/m0$b;", "invoke", "()Landroidx/lifecycle/m0$b;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    public static final class C03851 extends Lambda implements Function0<m0.b> {
        public C03851() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final m0.b invoke() {
            return BaseActivity.this.vmFactory();
        }
    }

    private final m0.a getViewModelFactory() {
        m0.a aVar = m0.a.getInstance(getApplication());
        r.d(aVar, "ViewModelProvider.Androi….getInstance(application)");
        return aVar;
    }

    private final void initBaseView() {
        this.versionClickController = new ClickController(5);
        getBaseBinding().version.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.BaseActivity.initBaseView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClickController clickController = BaseActivity.this.versionClickController;
                if (clickController != null) {
                    clickController.click(new ClickController.ClickListener() { // from class: cn.mucang.sundial.library.activity.BaseActivity.initBaseView.1.1
                        @Override // cn.mucang.sundial.library.util.ClickController.ClickListener
                        public void onClickCountFull() {
                            BaseActivity.this.onClickedRightFull();
                        }
                    });
                }
            }
        });
        getBaseBinding().selfCheck.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.BaseActivity.initBaseView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("跳转自检页面");
                KtxsKt.safeStartActivity$default(BaseActivity.this, SelfCheckActivity.class, null, 2, null);
            }
        });
        if (!GlobalData.INSTANCE.getDevice().allowGotoBackground()) {
            LinearLayout linearLayout = getBaseBinding().collapse;
            r.d(linearLayout, "baseBinding.collapse");
            linearLayout.setVisibility(8);
            getBaseBinding().collapse.setOnClickListener(null);
            return;
        }
        LinearLayout linearLayout2 = getBaseBinding().collapse;
        r.d(linearLayout2, "baseBinding.collapse");
        linearLayout2.setVisibility(0);
        TextView textView = getBaseBinding().version;
        r.d(textView, "baseBinding.version");
        textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), s0.a(11.0f), textView.getPaddingBottom());
        getBaseBinding().collapse.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.BaseActivity.initBaseView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalData.INSTANCE.getDevice().gotoBackground(BaseActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLatLon() {
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("0.##");
        CarModel carModel = OBDManager.getCarModel();
        if (carModel != null) {
            float f2 = carModel.speed;
            if (this.lastCarSpeed == f2 && AppLocation.gpsSpeed == 0.0d) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            } else {
                this.lastCarSpeed = f2;
            }
            sb.append("速度:");
            sb.append(decimalFormat.format(Float.valueOf(f2)));
            sb.append(" / ");
        }
        sb.append("GPS速度:" + decimalFormat.format(AppLocation.gpsSpeed));
        sb.append(" / ");
        sb.append("经度: ");
        sb.append(AppLocation.longitude);
        sb.append(" / 纬度: ");
        sb.append(AppLocation.latitude);
        TextView textView = getBaseBinding().debugSpeed;
        r.d(textView, "baseBinding.debugSpeed");
        textView.setText(sb);
    }

    protected final TtActivityBaseBinding getBaseBinding() {
        return (TtActivityBaseBinding) this.baseBinding.getValue();
    }

    protected final BaseActivityViewModel getBaseViewModel() {
        return (BaseActivityViewModel) this.baseViewModel.getValue();
    }

    public final TextureView getDummyTexture() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(getBaseBinding().dummyTexture);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (TextureView) objM139constructorimpl;
    }

    public void initData() {
    }

    public void initViewModel() {
        getBaseViewModel().getBaseInfo().q(this, new a0<ActivityBaseInfo>() { // from class: cn.mucang.sundial.library.activity.BaseActivity.initViewModel.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(ActivityBaseInfo activityBaseInfo) {
                if (activityBaseInfo != null) {
                    TextView textView = BaseActivity.this.getBaseBinding().terminalImei;
                    r.d(textView, "baseBinding.terminalImei");
                    textView.setText(BaseActivity.this.getString(R.string.tt_terminal_imei, new Object[]{activityBaseInfo.getImei()}));
                    TextView textView2 = BaseActivity.this.getBaseBinding().carNum;
                    r.d(textView2, "baseBinding.carNum");
                    textView2.setText(BaseActivity.this.getString(R.string.tt_car_num, new Object[]{activityBaseInfo.getCarNo()}));
                    TextView textView3 = BaseActivity.this.getBaseBinding().version;
                    r.d(textView3, "baseBinding.version");
                    textView3.setText(BaseActivity.this.getString(R.string.tt_version_num, new Object[]{activityBaseInfo.getAppVersion()}));
                }
            }
        });
        LiveBus.INSTANCE.with(UpdateSpeedEvent.class).h(this, new a0<UpdateSpeedEvent>() { // from class: cn.mucang.sundial.library.activity.BaseActivity.initViewModel.2
            @Override // androidx.lifecycle.a0
            public final void onChanged(UpdateSpeedEvent updateSpeedEvent) {
                BaseActivity.this.showLatLon();
            }
        });
        showLatLon();
    }

    public boolean isHiddenSelfCheckBtn() {
        return false;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (ActivityUtil.INSTANCE.allActivity().size() > 1 || this.backPressedTime + INTERVAL > System.currentTimeMillis()) {
            SundialLog.normal("点击返回键");
            super.onBackPressed();
        } else if (canExit) {
            Resources resources = getResources();
            int i = R.string.tt_press_again_to_exit;
            SundialLog.normal(resources.getText(i));
            this.backPressedTime = System.currentTimeMillis();
            u.g(i);
        }
    }

    protected void onClickedRightFull() {
        SundialLog.normal("跳转调试页面");
        KtxsKt.safeStartActivity$default(this, DebugActivity.class, null, 2, null);
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            finish();
        }
        getWindow().addFlags(128);
        setRequestedOrientation(0);
        initData();
        initViewModel();
        setContentView(getBaseBinding().getRoot());
        initBaseView();
        View viewOnCreateView = onCreateView(savedInstanceState);
        if (viewOnCreateView != null) {
            getBaseBinding().layoutContainer.removeAllViews();
            getBaseBinding().layoutContainer.addView(viewOnCreateView, -1, -1);
        }
    }

    public View onCreateView(Bundle savedInstanceState) {
        return null;
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return GlobalData.INSTANCE.getDevice().deviceHelper(this).onKeyDown(keyCode, event) || super.onKeyDown(keyCode, event);
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        getBaseViewModel().m120getBaseInfo();
        if (isHiddenSelfCheckBtn()) {
            TextView textView = getBaseBinding().selfCheck;
            r.d(textView, "baseBinding.selfCheck");
            textView.setVisibility(8);
        }
    }

    public final <T extends a> T vm(o0 owner, Class<T> vmClass) {
        r.e(owner, "owner");
        r.e(vmClass, "vmClass");
        j0 j0VarA = new m0(owner, vmFactory()).a(vmClass);
        r.d(j0VarA, "ViewModelProvider(owner, vmFactory()).get(vmClass)");
        return (T) j0VarA;
    }

    protected m0.b vmFactory() {
        return getViewModelFactory();
    }

    protected final /* synthetic */ <VM extends j0> Lazy<VM> vm(BaseActivity vm) {
        r.e(vm, "$this$vm");
        vm.new C03851();
        r.j(4, "VM");
        throw null;
    }
}
