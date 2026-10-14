package cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager;

import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import com.amap.api.fence.GeoFence;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.a0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;", "", "handleEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "showLastTeach", "", "unitySetStatus", "state", "", "data", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface BaseTeachFunc {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.a0$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public static boolean a(BaseTeachFunc baseTeachFunc, AutoTeachEvent event) {
            kotlin.jvm.internal.r.e(baseTeachFunc, "this");
            kotlin.jvm.internal.r.e(event, "event");
            return false;
        }

        public static void b(BaseTeachFunc baseTeachFunc) {
            kotlin.jvm.internal.r.e(baseTeachFunc, "this");
        }

        public static void c(BaseTeachFunc baseTeachFunc, int i, String str) {
            kotlin.jvm.internal.r.e(baseTeachFunc, "this");
        }
    }

    boolean a(AutoTeachEvent autoTeachEvent);

    void c();

    void i(int i, String str);
}
