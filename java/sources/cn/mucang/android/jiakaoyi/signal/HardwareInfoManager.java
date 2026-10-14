package cn.mucang.android.jiakaoyi.signal;

import androidx.lifecycle.BusLiveData;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000%\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0007R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0018\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager;", "", "()V", "hardwareInfoObserver", "cn/mucang/android/jiakaoyi/signal/HardwareInfoManager$hardwareInfoObserver$1", "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$hardwareInfoObserver$1;", "onResultCallBack", "Ljava/lang/ref/WeakReference;", "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;", "getInfo", "", "callback", "OnResult", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HardwareInfoManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HardwareInfoManager f5207a = new HardwareInfoManager();
    private static final b b = new b();
    private static WeakReference<a> c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.a$a */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;", "", "onResult", "", "info", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(HardwareInfo hardwareInfo);
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.a$b */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/signal/HardwareInfoManager$hardwareInfoObserver$1", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "onChanged", "", "it", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements a0<HardwareInfo> {
        b() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(HardwareInfo it) {
            a aVar;
            r.e(it, "it");
            WeakReference weakReference = HardwareInfoManager.c;
            if ((weakReference == null ? null : (a) weakReference.get()) != null) {
                f.o(r.m("回调设备获取状态：", it.serialNumber));
                WeakReference weakReference2 = HardwareInfoManager.c;
                if (weakReference2 != null && (aVar = (a) weakReference2.get()) != null) {
                    aVar.a(it);
                }
            } else {
                f.o("回调对象获取为空");
            }
            LiveBus.d(HardwareInfo.class).m(this);
            f.o(r.m("获取到硬件发送的设备信息：", it.serialNumber));
        }
    }

    private HardwareInfoManager() {
    }

    public static final void b(a aVar) {
        c = new WeakReference<>(aVar);
        BusLiveData busLiveDataD = LiveBus.d(HardwareInfo.class);
        b bVar = b;
        busLiveDataD.m(bVar);
        LiveBus.d(HardwareInfo.class).i(bVar);
        f.o("发送获取序列号指令");
        McCommandManager.f5380a.f();
    }
}
