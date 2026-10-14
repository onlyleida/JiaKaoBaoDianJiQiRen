package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration;

import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.n0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH'¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearLocationListener;", "", "onCurrentGearChange", "", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "onGearLocationChange", "loc", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface GearLocationListener {
    void a(String str);

    void b(Gear gear);
}
