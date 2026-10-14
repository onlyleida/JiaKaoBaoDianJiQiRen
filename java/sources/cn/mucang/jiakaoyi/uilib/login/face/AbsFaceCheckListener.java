package cn.mucang.jiakaoyi.uilib.login.face;

import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.iflytek.cloud.SpeechUtility;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH\u0016J(\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016¨\u0006\u001f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;", "()V", "onAngleWrong", "", "angleX", "", "angleY", "angleZ", "onBlurVar", "blur", "", "onBrightness", "brightness", "onCheckFace", "pos", "Lorg/opencv/core/Rect;", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "width", "height", "onCheckFarFace", "onCheckNoFace", "onCheckSuitableFace", "onHighLight", "highLightRate", "onSuccess", OptionalModuleUtils.FACE, "Landroid/graphics/Bitmap;", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsFaceCheckListener implements FaceCheckListener {
    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
    public void d(int i) {
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
    public void e(int i) {
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
    public void f(float f2, float f3, float f4) {
    }
}
