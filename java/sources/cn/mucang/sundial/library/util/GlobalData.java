package cn.mucang.sundial.library.util;

import android.app.Application;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.PreferenceUtils;
import cn.mucang.sundial.library.activity.DebugActivity;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.viewmodel.StudentInfoViewModel;
import com.iflytek.speech.UtilityConfig;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\tR$\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcn/mucang/sundial/library/util/GlobalData;", "", "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "getStudentInfoModel", "()Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "", "personMode", "Lkotlin/v;", "incrementSignOutErrorCount", "(I)V", "getSignOutErrorCount", "(I)I", "clearSignOutErrorCount", "", "value", "getUseDebugCamera", "()Z", "setUseDebugCamera", "(Z)V", "useDebugCamera", "Ljava/util/concurrent/atomic/AtomicInteger;", "coachSignOutErrorCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "studentSignOutErrorCount", "studentInfoModel", "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "Lcn/mucang/sundial/library/device/SundialDevice;", UtilityConfig.KEY_DEVICE_INFO, "Lcn/mucang/sundial/library/device/SundialDevice;", "getDevice", "()Lcn/mucang/sundial/library/device/SundialDevice;", "setDevice", "(Lcn/mucang/sundial/library/device/SundialDevice;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GlobalData {
    public static SundialDevice device;
    private static StudentInfoViewModel studentInfoModel;
    public static final GlobalData INSTANCE = new GlobalData();
    private static final AtomicInteger coachSignOutErrorCount = new AtomicInteger(0);
    private static final AtomicInteger studentSignOutErrorCount = new AtomicInteger(0);

    private GlobalData() {
    }

    public final void clearSignOutErrorCount(int personMode) {
        if (personMode == PersonMode.COACH.ordinal()) {
            coachSignOutErrorCount.set(0);
        } else {
            studentSignOutErrorCount.set(0);
        }
    }

    public final SundialDevice getDevice() {
        SundialDevice sundialDevice = device;
        if (sundialDevice != null) {
            return sundialDevice;
        }
        r.u(UtilityConfig.KEY_DEVICE_INFO);
        throw null;
    }

    public final int getSignOutErrorCount(int personMode) {
        return personMode == PersonMode.COACH.ordinal() ? coachSignOutErrorCount.get() : studentSignOutErrorCount.get();
    }

    public final StudentInfoViewModel getStudentInfoModel() {
        if (DeviceUtils.isSingleApk(MucangConfig.getContext())) {
            return null;
        }
        if (studentInfoModel == null) {
            Application applicationD = com.blankj.utilcode.util.Utils.d();
            r.d(applicationD, "Utils.getApp()");
            studentInfoModel = new StudentInfoViewModel(applicationD);
        }
        return studentInfoModel;
    }

    public final boolean getUseDebugCamera() {
        if (MucangConfig.v()) {
            if (PreferenceUtils.getBoolean(DebugActivity.PREF_FILE, DebugActivity.KEY_DEBUG_CAMERA, MucangConfig.v() && DeviceUtils.isSingleApk(MucangConfig.getContext()))) {
                return true;
            }
        }
        return false;
    }

    public final void incrementSignOutErrorCount(int personMode) {
        if (personMode == PersonMode.COACH.ordinal()) {
            coachSignOutErrorCount.incrementAndGet();
        } else {
            studentSignOutErrorCount.incrementAndGet();
        }
    }

    public final void setDevice(SundialDevice sundialDevice) {
        r.e(sundialDevice, "<set-?>");
        device = sundialDevice;
    }

    public final void setUseDebugCamera(boolean z) {
        PreferenceUtils.putBoolean(DebugActivity.PREF_FILE, DebugActivity.KEY_DEBUG_CAMERA, z);
    }
}
