package cn.mucang.sundial.library.util;

import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import java.io.File;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"cn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1", "Lcn/mucang/sundial/library/device/CameraResult;", "Lkotlin/v;", "connectSuccess", "()V", "cameraRemoved", "Ljava/io/File;", "file", "takePhotoFinish", "(Ljava/io/File;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class AutoTakePhotoHelper$cameraResult$1 implements CameraResult {
    final /* synthetic */ AutoTakePhotoHelper this$0;

    AutoTakePhotoHelper$cameraResult$1(AutoTakePhotoHelper autoTakePhotoHelper) {
        this.this$0 = autoTakePhotoHelper;
    }

    @Override // cn.mucang.sundial.library.device.CameraResult
    public void cameraRemoved() {
    }

    @Override // cn.mucang.sundial.library.device.CameraResult
    public void connectSuccess() {
        u.e(this.this$0.checkCameraTask);
        if (TakePhotoManager.isTakingPhoto()) {
            return;
        }
        TakePhotoManager.setTakingPhoto(true);
        try {
            this.this$0.playSound(new Runnable() { // from class: cn.mucang.sundial.library.util.AutoTakePhotoHelper$cameraResult$1$connectSuccess$1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseCamera baseCamera = this.this$0.this$0.cameraUtil;
                    if (baseCamera != null) {
                        baseCamera.takePhoto();
                    }
                }
            });
        } catch (Exception unused) {
            BaseCamera baseCamera = this.this$0.cameraUtil;
            if (baseCamera != null) {
                baseCamera.takePhoto();
            }
        }
    }

    @Override // cn.mucang.sundial.library.device.CameraResult
    public void takePhotoFinish(File file) {
        this.this$0.releaseCamera();
        if (file == null || !file.exists()) {
            return;
        }
        this.this$0.uploadImage(file);
    }
}
