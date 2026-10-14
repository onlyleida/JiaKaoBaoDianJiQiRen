package cn.mucang.android.jky.camera;

import cn.mucang.android.jiakaoyi.framework.utils.r0;
import com.tencent.open.SocialConstants;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0001\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003J\u0006\u0010\u000f\u001a\u00020\u0003J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R2\u0010\u0006\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00030\u0003 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00030\u0003\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nj\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jky/camera/CameraIntent;", "", SocialConstants.PARAM_APP_DESC, "", "key", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "cache", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "kotlin.jvm.PlatformType", "getDesc", "()Ljava/lang/String;", "getKey", "bindSerial", "", "serial", "getBindSerial", "getDevice", "", "isSerialNoBind", "", "PUSH", "FACE", "Companion", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum CameraIntent {
    PUSH("视频推流", "push__camera_serial"),
    FACE("人脸识别", "face__camera_serial");

    private final r0<String> cache;
    private final String desc;
    private final String key;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<CameraIntent> cacheList = ArraysKt___ArraysKt.h0(values());

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jky/camera/CameraIntent$Companion;", "", "()V", "cacheList", "", "Lcn/mucang/android/jky/camera/CameraIntent;", "getCacheList", "()Ljava/util/List;", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final List<CameraIntent> getCacheList() {
            return CameraIntent.cacheList;
        }
    }

    CameraIntent(String str, String str2) {
        this.desc = str;
        this.key = str2;
        this.cache = r0.i(str2, "NULL");
    }

    public final void bindSerial(String serial) {
        kotlin.jvm.internal.r.e(serial, "serial");
        this.cache.j(serial);
    }

    public final String getBindSerial() {
        String strB = this.cache.b();
        Objects.requireNonNull(strB, "null cannot be cast to non-null type kotlin.String");
        return strB;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getDevice() {
        String str;
        String str2 = this.key;
        if (kotlin.jvm.internal.r.a(str2, "push__camera_serial")) {
            str = "push__camera_index_new";
        } else {
            str = kotlin.jvm.internal.r.a(str2, "face__camera_serial") ? "face__camera_index_new" : "";
        }
        r0<Integer> r0VarF = r0.f(str, -1);
        kotlin.jvm.internal.r.d(r0VarF, "ofInt(oldKey, -1 as Int)");
        Integer numB = r0VarF.b();
        kotlin.jvm.internal.r.d(numB, "typeCache.get()");
        return numB.intValue();
    }

    public final String getKey() {
        return this.key;
    }

    public final boolean isSerialNoBind() {
        String strB = this.cache.b();
        Objects.requireNonNull(strB, "null cannot be cast to non-null type kotlin.String");
        return kotlin.jvm.internal.r.a(strB, "NULL");
    }
}
