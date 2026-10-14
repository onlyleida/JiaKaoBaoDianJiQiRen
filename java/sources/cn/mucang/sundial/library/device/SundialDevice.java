package cn.mucang.sundial.library.device;

import android.content.Context;
import android.view.TextureView;
import android.widget.FrameLayout;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.location.LocationStrategy;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.gnss.BaseDataStrategy;
import cn.mucang.sundial.library.util.GlobalData;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b \u0010!J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ5\u0010\u0013\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcn/mucang/sundial/library/device/SundialDevice;", "", "Landroid/content/Context;", "context", "Lcn/mucang/sundial/android/location/LocationStrategy;", "locationStrategy", "(Landroid/content/Context;)Lcn/mucang/sundial/android/location/LocationStrategy;", "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;", "dataStrategy", "()Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;", "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Landroid/view/TextureView;", "textureView", "Landroid/widget/FrameLayout;", "frameLayout", "", "needPreview", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;", "Lcn/mucang/sundial/library/device/DeviceHelper;", "deviceHelper", "(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;", "Lcn/mucang/sundial/library/device/IcReader;", "icReader", "(Landroid/content/Context;)Lcn/mucang/sundial/library/device/IcReader;", "allowGotoBackground", "()Z", "Lkotlin/v;", "gotoBackground", "(Landroid/content/Context;)V", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class SundialDevice {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J=\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/device/SundialDevice$Companion;", "", "Landroid/content/Context;", "context", "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Landroid/view/TextureView;", "textureView", "Landroid/widget/FrameLayout;", "frameLayout", "", "needPreview", "Lcn/mucang/sundial/library/device/BaseCamera;", "createCameraUtil", "(Landroid/content/Context;Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final BaseCamera createCameraUtil(Context context, CameraResult cameraResult, TextureView textureView, FrameLayout frameLayout, boolean needPreview) {
            r.e(context, "context");
            GlobalData globalData = GlobalData.INSTANCE;
            return (globalData.getUseDebugCamera() && MucangConfig.v()) ? new DebugCameraUtil(cameraResult) : globalData.getDevice().cameraUtil(cameraResult, textureView, frameLayout, needPreview);
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    public static final BaseCamera createCameraUtil(Context context, CameraResult cameraResult, TextureView textureView, FrameLayout frameLayout, boolean z) {
        return INSTANCE.createCameraUtil(context, cameraResult, textureView, frameLayout, z);
    }

    public boolean allowGotoBackground() {
        return false;
    }

    public abstract BaseCamera cameraUtil(CameraResult cameraResult, TextureView textureView, FrameLayout frameLayout, boolean needPreview);

    public abstract BaseDataStrategy dataStrategy();

    public DeviceHelper deviceHelper(Context context) {
        r.e(context, "context");
        return new NoopDeviceHelper(context);
    }

    public void gotoBackground(Context context) {
        r.e(context, "context");
        SundialLog.normal("计时应用退到后台");
    }

    public IcReader icReader(Context context) {
        r.e(context, "context");
        return new NoopIcReader();
    }

    public abstract LocationStrategy locationStrategy(Context context);
}
