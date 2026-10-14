package cn.mucang.jiakaoyi.uilib.login.face;

import kotlin.Metadata;
import org.opencv.core.Rect;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/OpencvHelper;", "", "()V", "formatMat", "", "rect", "Lorg/opencv/core/Rect;", "maxWidth", "", "maxHeight", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OpencvHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OpencvHelper f9399a = new OpencvHelper();

    private OpencvHelper() {
    }

    public final boolean a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int i5;
        kotlin.jvm.internal.r.e(rect, "rect");
        int i6 = rect.x;
        if (i6 < 0) {
            rect.width += i6;
            rect.x = 0;
        }
        int i7 = rect.x;
        if (rect.width + i7 > i) {
            int iE = kotlin.ranges.f.e(i7, i);
            rect.x = iE;
            rect.width = i - iE;
        }
        int i8 = rect.width;
        if (i8 % 2 != 0) {
            rect.width = kotlin.ranges.f.b(i8 - 1, 2);
        }
        int i9 = rect.y;
        if (i9 < 0) {
            rect.height += i9;
            rect.y = 0;
        }
        int i10 = rect.y;
        if (rect.height + i10 > i2) {
            int iE2 = kotlin.ranges.f.e(i10, i2);
            rect.y = iE2;
            rect.height = i2 - iE2;
        }
        int i11 = rect.height;
        if (i11 % 3 != 0) {
            rect.height = kotlin.ranges.f.b(i11 - (i11 % 3), 3);
        }
        int i12 = rect.x;
        return i12 >= 0 && (i3 = rect.width) > 0 && i12 + i3 <= i && (i4 = rect.y) >= 0 && (i5 = rect.height) > 0 && i4 + i5 <= i2;
    }
}
