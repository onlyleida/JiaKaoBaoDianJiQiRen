package cn.mucang.sundial.library.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityCameraTestBinding;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.tts.Tts;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.io.File;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000f\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0004R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcn/mucang/sundial/library/activity/CameTestActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "", "checkCamera", "()Z", "Lkotlin/v;", "initUVCCamera", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "onDestroy", "isHiddenSelfCheckBtn", "Ljava/lang/Runnable;", "checkCameraTask", "Ljava/lang/Runnable;", "Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;", "viewBinding$delegate", "Lkotlin/f;", "getViewBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;", "viewBinding", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CameTestActivity extends BaseActivity {
    private BaseCamera cameraUtil;

    /* JADX INFO: renamed from: viewBinding$delegate, reason: from kotlin metadata */
    private final Lazy viewBinding = new ViewBindingLazy(TtActivityCameraTestBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.CameTestActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });
    private final Runnable checkCameraTask = new Runnable() { // from class: cn.mucang.sundial.library.activity.CameTestActivity$checkCameraTask$1
        @Override // java.lang.Runnable
        public final void run() {
            this.this$0.checkCamera();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkCamera() {
        if (isFinishing()) {
            return false;
        }
        BaseCamera baseCamera = this.cameraUtil;
        boolean z = (baseCamera != null ? baseCamera.cameraCount() : 0) > 0;
        if (!z) {
            int i = R.string.tt_voice_face_check_fail_no_camera;
            u.g(i);
            String string = getString(i);
            r.d(string, "getString(R.string.tt_vo…ace_check_fail_no_camera)");
            Tts.speak$default(string, null, 2, null);
            finish();
        }
        return z;
    }

    private final TtActivityCameraTestBinding getViewBinding() {
        return (TtActivityCameraTestBinding) this.viewBinding.getValue();
    }

    private final void initUVCCamera() {
        BaseCamera baseCameraCreateCameraUtil = SundialDevice.INSTANCE.createCameraUtil(this, new CameraResult() { // from class: cn.mucang.sundial.library.activity.CameTestActivity$initUVCCamera$cameraResult$1
            @Override // cn.mucang.sundial.library.device.CameraResult
            public void cameraRemoved() {
                this.this$0.checkCamera();
            }

            @Override // cn.mucang.sundial.library.device.CameraResult
            public void connectSuccess() {
                if (this.this$0.isFinishing()) {
                    return;
                }
                u.e(this.this$0.checkCameraTask);
            }

            @Override // cn.mucang.sundial.library.device.CameraResult
            public void takePhotoFinish(File file) {
            }
        }, getViewBinding().cameraView, getViewBinding().cameraLayout, true);
        this.cameraUtil = baseCameraCreateCameraUtil;
        if (baseCameraCreateCameraUtil != null) {
            baseCameraCreateCameraUtil.init();
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public boolean isHiddenSelfCheckBtn() {
        return true;
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TakePhotoManager.setTakingPhoto(true);
        initUVCCamera();
        ConstraintLayout root = getViewBinding().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.release();
        }
        TakePhotoManager.setTakingPhoto(false);
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.pause();
        }
        u.e(this.checkCameraTask);
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.open();
        }
        u.d(this.checkCameraTask, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }
}
