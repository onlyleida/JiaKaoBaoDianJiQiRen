package cn.mucang.sundial.library.device;

import android.content.Context;
import android.content.Intent;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.h;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\bJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\bJ\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcn/mucang/sundial/library/device/NoopDeviceHelper;", "Lcn/mucang/sundial/library/device/DeviceHelper;", "Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;", "initListener", "Lkotlin/v;", "init", "(Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;)V", "free", "()V", "", "isInit", "()Z", "powerOff", "reboot", "restoreSystemLauncher", "makeSelfLauncher", "Ljava/io/File;", "updateApk", "", "packageName", "silentInstall", "(Ljava/io/File;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class NoopDeviceHelper extends DeviceHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoopDeviceHelper(Context context) {
        super(context);
        r.e(context, "context");
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void free() {
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void init(DeviceHelper.OnInitListener initListener) {
        r.e(initListener, "initListener");
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public boolean isInit() {
        return true;
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void makeSelfLauncher() {
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void powerOff() {
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void reboot() {
        h.a("reboot", false);
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void restoreSystemLauncher() {
    }

    @Override // cn.mucang.sundial.library.device.DeviceHelper
    public void silentInstall(File updateApk, String packageName) {
        r.e(updateApk, "updateApk");
        r.e(packageName, "packageName");
        Intent intent = new Intent("cn.mucang.android.install");
        intent.setPackage("cn.mucang.android.installer");
        intent.putExtra("file_path", updateApk.getAbsolutePath());
        intent.putExtra("package_name", packageName);
        intent.putExtra("auto_start", true);
        Utils.d().startService(intent);
    }
}
