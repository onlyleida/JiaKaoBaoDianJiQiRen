package cn.mucang.sundial.library.device;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b&\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/device/BaseCamera;", "Lcn/mucang/sundial/library/device/TtCamera;", "", "picPath", "Ljava/lang/String;", "getPicPath", "()Ljava/lang/String;", "setPicPath", "(Ljava/lang/String;)V", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class BaseCamera implements TtCamera {
    public static final String SUFFIX_JPEG = ".jpg";
    private String picPath = "";

    protected final String getPicPath() {
        return this.picPath;
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public boolean hasPermission() {
        return TtCamera.DefaultImpls.hasPermission(this);
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public boolean isolatePreviewPage() {
        return TtCamera.DefaultImpls.isolatePreviewPage(this);
    }

    protected final void setPicPath(String str) {
        r.e(str, "<set-?>");
        this.picPath = str;
    }
}
