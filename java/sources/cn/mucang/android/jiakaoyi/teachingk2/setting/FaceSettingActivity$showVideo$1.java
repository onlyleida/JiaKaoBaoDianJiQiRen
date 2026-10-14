package cn.mucang.android.jiakaoyi.teachingk2.setting;

import android.graphics.Bitmap;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import kotlin.Metadata;
import org.opencv.android.Utils;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$TestListener;", "bmp", "Landroid/graphics/Bitmap;", "getBmp", "()Landroid/graphics/Bitmap;", "setBmp", "(Landroid/graphics/Bitmap;)V", "showBrightnessImg", "", "mat", "Lorg/opencv/core/Mat;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceSettingActivity$showVideo$1 implements FaceLoginPresenter.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f7921a;
    final /* synthetic */ FaceSettingActivity b;

    FaceSettingActivity$showVideo$1(FaceSettingActivity faceSettingActivity) {
        this.b = faceSettingActivity;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.b
    public void a(Mat mat) {
        kotlin.jvm.internal.r.e(mat, "mat");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(mat.width(), mat.height(), Bitmap.Config.RGB_565);
        this.f7921a = bitmapCreateBitmap;
        kotlin.jvm.internal.r.c(bitmapCreateBitmap);
        Utils.matToBitmap(mat, bitmapCreateBitmap);
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this.b), null, null, new FaceSettingActivity$showVideo$1$showBrightnessImg$1(this.b, this, null), 3, null);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Bitmap getF7921a() {
        return this.f7921a;
    }
}
