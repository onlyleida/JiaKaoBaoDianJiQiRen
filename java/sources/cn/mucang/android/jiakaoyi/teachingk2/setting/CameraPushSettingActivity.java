package cn.mucang.android.jiakaoyi.teachingk2.setting;

import android.content.Context;
import android.content.Intent;
import android.view.Surface;
import android.view.View;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCameraPushSettingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.AliPushUrl;
import cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.uilib.socket.model.PushSwitchModel;
import com.serenegiant.usb.widget.CameraViewInterface;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.w0;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014J\b\u0010\n\u001a\u00020\tH\u0014J\b\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;", "()V", "previewId", "", "getStatName", "", "init", "", "onDestroy", "refreshPush", "showVideo", "sourceAi", "", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CameraPushSettingActivity extends BaseViewBindingActivity<ActivityCameraPushSettingBinding> {
    public static final a c = new a(null);
    private int b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CameraPushSettingActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001c\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$showVideo$1", "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;", "onSurfaceChanged", "", "view", "Lcom/serenegiant/usb/widget/CameraViewInterface;", "surface", "Landroid/view/Surface;", "width", "", "height", "onSurfaceCreated", "onSurfaceDestroy", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements CameraViewInterface.Callback {
        b() {
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceChanged(CameraViewInterface view, Surface surface, int width, int height) {
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceCreated(CameraViewInterface view, Surface surface) {
            UsbCameraManager.INSTANCE.startPreviewCamera(CameraIntent.PUSH, surface, CameraPushSettingActivity.this.b);
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceDestroy(CameraViewInterface view, Surface surface) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$6, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$6", f = "CameraPushSettingActivity.kt", l = {107, 115}, m = "invokeSuspend")
    static final class AnonymousClass6 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ boolean $sourceAi;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(boolean z, Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
            this.$sourceAi = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return CameraPushSettingActivity.this.new AnonymousClass6(this.$sourceAi, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass6) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    kotlin.k.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.k.b(obj);
                }
                CameraPushSettingActivity.this.x(this.$sourceAi);
                return kotlin.v.f15822a;
            }
            kotlin.k.b(obj);
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            CameraPushSettingActivity$init$6$result$1 cameraPushSettingActivity$init$6$result$1 = new CameraPushSettingActivity$init$6$result$1(null);
            this.label = 1;
            obj = kotlinx.coroutines.f.c(coroutineDispatcherB, cameraPushSettingActivity$init$6$result$1, this);
            if (obj == objD) {
                return objD;
            }
            Object value = ((Result) obj).getValue();
            AliPushUrl aliPushUrl = (AliPushUrl) (Result.m145isFailureimpl(value) ? null : value);
            if (aliPushUrl != null && aliPushUrl.getType() == 1) {
                CameraPushSettingActivity.this.g().stateLayout.setState(2);
                LiveBus.c(new PushSwitchModel(true));
                this.label = 2;
                if (kotlinx.coroutines.s0.a(500L, this) == objD) {
                    return objD;
                }
                CameraPushSettingActivity.this.x(this.$sourceAi);
            } else {
                if (aliPushUrl != null && aliPushUrl.getType() == 0) {
                    CameraPushSettingActivity.this.g().stateLayout.setState(5);
                    CameraPushSettingActivity.this.g().stateLayout.setEmptyText("当前考场仅支持萤石摄像头，前往萤石后台查看");
                } else {
                    CameraPushSettingActivity.this.g().stateLayout.setState(5);
                    CameraPushSettingActivity.this.g().stateLayout.setEmptyText("请检查：1、网络是否正常   2、设备是否注册绑定");
                }
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CameraPushSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(View view) {
        view.setSelected(!view.isSelected());
        if (view.isSelected()) {
            PusherManager.f7472a.C();
        } else {
            PusherManager.f7472a.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final CameraPushSettingActivity this$0, final View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final boolean z = !view.isSelected();
        LocalConfigManager.c(this$0, LocalConfig.PushTimeEnable, String.valueOf(z), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                view.setSelected(z);
                this$0.w();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final CameraPushSettingActivity this$0, RadioGroup radioGroup, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LocalConfigManager.c(this$0, LocalConfig.PushSourceFromAi, String.valueOf(i == R.id.rb01), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$4$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.w();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CameraPushSettingActivity this$0, RadioGroup radioGroup, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LocalConfigManager.c(this$0, LocalConfig.PushQuality, String.valueOf(i == R.id.qt01 ? 240 : 320), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$5$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        PusherManager.f7472a.x();
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this), null, null, new CameraPushSettingActivity$refreshPush$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(boolean z) {
        SurfaceViewRenderer surfaceViewRenderer = g().aiCamera;
        kotlin.jvm.internal.r.d(surfaceViewRenderer, "viewBinding.aiCamera");
        surfaceViewRenderer.setVisibility(z ? 0 : 8);
        UVCCameraTextureView uVCCameraTextureView = g().uvcCamera;
        kotlin.jvm.internal.r.d(uVCCameraTextureView, "viewBinding.uvcCamera");
        uVCCameraTextureView.setVisibility(z ^ true ? 0 : 8);
        if (z) {
            UsbCameraManager.INSTANCE.stopPreviewCamera(CameraIntent.PUSH, this.b);
            AiCameraManager aiCameraManager = AiCameraManager.f7519a;
            SurfaceViewRenderer surfaceViewRenderer2 = g().aiCamera;
            kotlin.jvm.internal.r.d(surfaceViewRenderer2, "viewBinding.aiCamera");
            aiCameraManager.k(surfaceViewRenderer2);
            return;
        }
        this.b = g().uvcCamera.hashCode();
        if (g().uvcCamera.hasSurface()) {
            UsbCameraManager.INSTANCE.startPreviewCamera(CameraIntent.PUSH, g().uvcCamera.getSurface(), this.b);
        } else {
            g().uvcCamera.setCallback(new b());
        }
        AiCameraManager.f7519a.m(g().aiCamera);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "CameraPushSettingActivity";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraPushSettingActivity.m(this.f7966a, view);
            }
        });
        g().titleLayout.titleTv.setText("视频设置");
        g().checkBox.setSelected(PusherManager.f7472a.L());
        g().checkBox.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraPushSettingActivity.n(view);
            }
        });
        g().cbShowTime.setSelected(LocalConfigManager.f(LocalConfig.PushTimeEnable));
        g().cbShowTime.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraPushSettingActivity.o(this.f7962a, view);
            }
        });
        if (AppUtils.b()) {
            g().rb01.setVisibility(8);
        }
        boolean zF = LocalConfigManager.f(LocalConfig.PushSourceFromAi);
        if (!zF || AppUtils.b()) {
            g().radioGroup.check(R.id.rb02);
        } else {
            g().radioGroup.check(R.id.rb01);
        }
        g().radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.n0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                CameraPushSettingActivity.p(this.f7968a, radioGroup, i);
            }
        });
        if (LocalConfigManager.j(LocalConfig.PushQuality, 240) == 240) {
            g().radioQt.check(R.id.qt01);
        } else {
            g().radioQt.check(R.id.qt02);
        }
        g().radioQt.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.j0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                CameraPushSettingActivity.q(this.f7960a, radioGroup, i);
            }
        });
        g().aiCamera.init(AiCameraManager.f7519a.e(), null);
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this), null, null, new AnonymousClass6(zF, null), 3, null);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        UsbCameraManager.INSTANCE.stopPreviewCamera(CameraIntent.PUSH, this.b);
        AiCameraManager.f7519a.m(g().aiCamera);
    }
}
