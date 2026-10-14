package cn.mucang.sundial.library.device;

import android.content.Context;
import android.view.KeyEvent;
import com.amap.api.fence.GeoFence;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001:\u0001%B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b#\u0010$J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H&¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\u0004H&¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000e\u001a\u00020\u0004H&¢\u0006\u0004\b\u000e\u0010\bJ\u000f\u0010\u000f\u001a\u00020\u0004H&¢\u0006\u0004\b\u000f\u0010\bJ!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001f\u001a\u00020\u001e8\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcn/mucang/sundial/library/device/DeviceHelper;", "", "Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;", "initListener", "Lkotlin/v;", "init", "(Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;)V", "free", "()V", "", "isInit", "()Z", "powerOff", "reboot", "restoreSystemLauncher", "makeSelfLauncher", "", "keyCode", "Landroid/view/KeyEvent;", GeoFence.BUNDLE_KEY_FENCESTATUS, "onKeyDown", "(ILandroid/view/KeyEvent;)Z", "", "temperature", "()Ljava/lang/String;", "Ljava/io/File;", "updateApk", "packageName", "silentInstall", "(Ljava/io/File;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "OnInitListener", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class DeviceHelper {
    private final Context context;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;", "", "Lkotlin/v;", "onInit", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public interface OnInitListener {
        void onInit();
    }

    public DeviceHelper(Context context) {
        r.e(context, "context");
        Context applicationContext = context.getApplicationContext();
        r.d(applicationContext, "context.applicationContext");
        this.context = applicationContext;
    }

    public abstract void free();

    protected final Context getContext() {
        return this.context;
    }

    public abstract void init(OnInitListener initListener);

    public abstract boolean isInit();

    public abstract void makeSelfLauncher();

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return false;
    }

    public abstract void powerOff();

    public abstract void reboot();

    public abstract void restoreSystemLauncher();

    public void silentInstall(File updateApk, String packageName) {
        r.e(updateApk, "updateApk");
        r.e(packageName, "packageName");
    }

    public String temperature() {
        return "";
    }
}
