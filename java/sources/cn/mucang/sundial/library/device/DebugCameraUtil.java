package cn.mucang.sundial.library.device;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.tcp.utils.PictureUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcn/mucang/sundial/library/device/DebugCameraUtil;", "Lcn/mucang/sundial/library/device/BaseCamera;", "Lkotlin/v;", "init", "()V", "takePhoto", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "pause", "release", "", "cameraCount", "()I", "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "", "testFaceUrl", "Ljava/lang/String;", "getTestFaceUrl", "()Ljava/lang/String;", "setTestFaceUrl", "(Ljava/lang/String;)V", "<init>", "(Lcn/mucang/sundial/library/device/CameraResult;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class DebugCameraUtil extends BaseCamera {
    private final CameraResult cameraResult;
    private String testFaceUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public DebugCameraUtil() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DebugCameraUtil(CameraResult cameraResult, int i, o oVar) {
        this((i & 1) != 0 ? null : cameraResult);
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public int cameraCount() {
        return 1;
    }

    public final String getTestFaceUrl() {
        return this.testFaceUrl;
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void init() {
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void open() {
        CameraResult cameraResult = this.cameraResult;
        if (cameraResult != null) {
            cameraResult.connectSuccess();
        }
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void pause() {
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void release() {
    }

    public final void setTestFaceUrl(String str) {
        r.e(str, "<set-?>");
        this.testFaceUrl = str;
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void takePhoto() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.device.DebugCameraUtil.takePhoto.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    File file = new File(new File(PictureUtil.getPicDir(MucangConfig.getContext())), "testFaceUrl");
                    String testFaceUrl = DebugCameraUtil.this.getTestFaceUrl();
                    if (testFaceUrl.length() == 0) {
                        testFaceUrl = "https://sundial.image.mucang.cn/mc-sundial/2020/12/21/16/5f5c0f43edc34fd9a808fee888c205c4.jpg";
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        if (file.exists()) {
                            file.delete();
                        }
                        j.g(testFaceUrl, file, null);
                        Result.m139constructorimpl(v.f15822a);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m139constructorimpl(k.a(th));
                    }
                    CameraResult cameraResult = DebugCameraUtil.this.cameraResult;
                    if (cameraResult != null) {
                        cameraResult.takePhotoFinish(file);
                    }
                } catch (Exception e2) {
                    t.e("Camera", "Take picture failed", e2);
                    CameraResult cameraResult2 = DebugCameraUtil.this.cameraResult;
                    if (cameraResult2 != null) {
                        cameraResult2.takePhotoFinish(null);
                    }
                }
            }
        });
    }

    public DebugCameraUtil(CameraResult cameraResult) {
        this.cameraResult = cameraResult;
        this.testFaceUrl = "";
    }
}
