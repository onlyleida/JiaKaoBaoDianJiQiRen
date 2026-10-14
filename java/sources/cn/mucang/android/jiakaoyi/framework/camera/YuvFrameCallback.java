package cn.mucang.android.jiakaoyi.framework.camera;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.camera.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007H&¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "", "onFrame", "", "byteArray", "", "width", "", "height", "stride", "size", "timeUs", "", "rotation", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface YuvFrameCallback {
    void a(byte[] bArr, int i, int i2, int i3, int i4, long j, int i5);
}
