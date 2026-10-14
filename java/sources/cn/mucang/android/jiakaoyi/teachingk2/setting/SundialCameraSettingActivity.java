package cn.mucang.android.jiakaoyi.teachingk2.setting;

import android.content.Context;
import android.content.Intent;
import android.view.Surface;
import android.view.View;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivitySundialCameraSettingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import com.serenegiant.usb.widget.CameraViewInterface;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "()V", "previewId", "", "getStatName", "", "init", "", "onDestroy", "onPreviewFrame", "data", "", "showVideo", "sourceAi", "", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SundialCameraSettingActivity extends BaseViewBindingActivity<ActivitySundialCameraSettingBinding> implements UsbCameraManager.UsbCameraListener {
    public static final a c = new a(null);
    private int b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) SundialCameraSettingActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001c\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$showVideo$1", "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;", "onSurfaceChanged", "", "view", "Lcom/serenegiant/usb/widget/CameraViewInterface;", "surface", "Landroid/view/Surface;", "width", "", "height", "onSurfaceCreated", "onSurfaceDestroy", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements CameraViewInterface.Callback {
        b() {
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceChanged(CameraViewInterface view, Surface surface, int width, int height) {
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceCreated(CameraViewInterface view, Surface surface) {
            UsbCameraManager.INSTANCE.startPreviewCamera(CameraIntent.FACE, surface, SundialCameraSettingActivity.this.b);
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceDestroy(CameraViewInterface view, Surface surface) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SundialCameraSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(final SundialCameraSettingActivity this$0, RadioGroup radioGroup, final int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LocalConfigManager.c(this$0, LocalConfig.SundialCameraFromAi, String.valueOf(i == R.id.rb03), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.SundialCameraSettingActivity$init$2$1
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
                this.this$0.p(i == R.id.rb03);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(boolean z) {
        SurfaceViewRenderer surfaceViewRenderer = g().aiCamera;
        kotlin.jvm.internal.r.d(surfaceViewRenderer, "viewBinding.aiCamera");
        surfaceViewRenderer.setVisibility(z ? 0 : 8);
        UVCCameraTextureView uVCCameraTextureView = g().uvcCamera;
        kotlin.jvm.internal.r.d(uVCCameraTextureView, "viewBinding.uvcCamera");
        uVCCameraTextureView.setVisibility(z ^ true ? 0 : 8);
        if (z) {
            UsbCameraManager.INSTANCE.stopPreviewCamera(CameraIntent.FACE, this.b);
            AiCameraManager aiCameraManager = AiCameraManager.f7519a;
            SurfaceViewRenderer surfaceViewRenderer2 = g().aiCamera;
            kotlin.jvm.internal.r.d(surfaceViewRenderer2, "viewBinding.aiCamera");
            aiCameraManager.k(surfaceViewRenderer2);
            return;
        }
        this.b = g().uvcCamera.hashCode();
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        CameraIntent cameraIntent = CameraIntent.FACE;
        usbCameraManager.registerCameraListener(cameraIntent, this);
        if (g().uvcCamera.hasSurface()) {
            usbCameraManager.startPreviewCamera(cameraIntent, g().uvcCamera.getSurface(), this.b);
        } else {
            g().uvcCamera.setCallback(new b());
        }
        AiCameraManager.f7519a.m(g().aiCamera);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "SundialCameraSettingActivity";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialCameraSettingActivity.l(this.f7984a, view);
            }
        });
        g().titleLayout.titleTv.setText("计时拍照设置");
        boolean zF = LocalConfigManager.f(LocalConfig.SundialCameraFromAi);
        if (zF) {
            g().radioGroup1.check(R.id.rb03);
        } else {
            g().radioGroup1.check(R.id.rb04);
        }
        g().radioGroup1.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.u0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                SundialCameraSettingActivity.m(this.f7982a, radioGroup, i);
            }
        });
        g().aiCamera.init(AiCameraManager.f7519a.e(), null);
        p(zF);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onConnect() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onConnect(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        CameraIntent cameraIntent = CameraIntent.FACE;
        usbCameraManager.unregisterCameraListener(cameraIntent, this);
        usbCameraManager.stopPreviewCamera(cameraIntent, this.b);
        AiCameraManager.f7519a.m(g().aiCamera);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDetached() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onDetached(this);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDisconnect() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onDisconnect(this);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onPreviewFrame(byte[] data) {
        kotlin.jvm.internal.r.e(data, "data");
    }
}
