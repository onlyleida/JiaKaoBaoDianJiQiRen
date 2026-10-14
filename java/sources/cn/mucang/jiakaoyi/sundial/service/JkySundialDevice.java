package cn.mucang.jiakaoyi.sundial.service;

import android.app.Activity;
import android.content.Context;
import android.view.TextureView;
import android.widget.FrameLayout;
import cn.mucang.jiakaoyi.sundial.service.strategy.CameraStrategy;
import cn.mucang.jiakaoyi.sundial.service.strategy.JkyDataStrategy;
import cn.mucang.jiakaoyi.sundial.service.strategy.JkyLocationStrategy;
import cn.mucang.sundial.android.location.LocationStrategy;
import cn.mucang.sundial.android.tcp.data.gnss.BaseDataStrategy;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import cn.mucang.sundial.library.device.SundialDevice;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.service.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0016J.\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/service/JkySundialDevice;", "Lcn/mucang/sundial/library/device/SundialDevice;", "()V", "<set-?>", "Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyDataStrategy;", "data", "getData", "()Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyDataStrategy;", "Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyLocationStrategy;", "location", "getLocation", "()Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyLocationStrategy;", "allowGotoBackground", "", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "textureView", "Landroid/view/TextureView;", "frameLayout", "Landroid/widget/FrameLayout;", "needPreview", "dataStrategy", "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;", "gotoBackground", "", "context", "Landroid/content/Context;", "locationStrategy", "Lcn/mucang/sundial/android/location/LocationStrategy;", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkySundialDevice extends SundialDevice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JkyDataStrategy f9167a;
    private JkyLocationStrategy b;

    /* JADX INFO: renamed from: a, reason: from getter */
    public final JkyDataStrategy getF9167a() {
        return this.f9167a;
    }

    @Override // cn.mucang.sundial.library.device.SundialDevice
    public boolean allowGotoBackground() {
        return true;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final JkyLocationStrategy getB() {
        return this.b;
    }

    @Override // cn.mucang.sundial.library.device.SundialDevice
    public BaseCamera cameraUtil(CameraResult cameraResult, TextureView textureView, FrameLayout frameLayout, boolean needPreview) {
        return new CameraStrategy(cameraResult, textureView, frameLayout, needPreview);
    }

    @Override // cn.mucang.sundial.library.device.SundialDevice
    public BaseDataStrategy dataStrategy() {
        if (this.f9167a == null) {
            this.f9167a = new JkyDataStrategy();
        }
        JkyDataStrategy jkyDataStrategy = this.f9167a;
        r.c(jkyDataStrategy);
        return jkyDataStrategy;
    }

    @Override // cn.mucang.sundial.library.device.SundialDevice
    public void gotoBackground(Context context) {
        r.e(context, "context");
        super.gotoBackground(context);
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "gotoBackground");
        Activity activityB = cn.mucang.android.core.utils.d.b(context);
        if (activityB == null) {
            return;
        }
        activityB.finish();
    }

    @Override // cn.mucang.sundial.library.device.SundialDevice
    public LocationStrategy locationStrategy(Context context) {
        r.e(context, "context");
        if (this.b == null) {
            this.b = new JkyLocationStrategy();
        }
        JkyLocationStrategy jkyLocationStrategy = this.b;
        r.c(jkyLocationStrategy);
        return jkyLocationStrategy;
    }
}
