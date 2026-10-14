package cn.mucang.android.jiakaoyi.teachingk2.setting;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.facelib.GoogleDetectorFactory;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityFaceSettingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.UsbCameraAdapter;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener;
import cn.mucang.jiakaoyi.uilib.socket.model.LogUploadRequest;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import org.opencv.core.Rect;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0006\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0014J\b\u0010\u0014\u001a\u00020\u0013H\u0014J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;", "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;", "()V", "faceCheckListener", "cn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;", "faceChecker", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;", "fps", "", "time", "", "videoSource", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "getStatName", "", "init", "", "onDestroy", "onMaskResult", "maskResult", "showVideo", "sourceAi", "", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceSettingActivity extends BaseViewBindingActivity<ActivityFaceSettingBinding> implements MaskDetectorListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f7913g = new a(null);
    private SourceVideoStream b;
    private FaceLoginPresenter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FaceSettingActivity$faceCheckListener$1 f7916f = new AbsFaceCheckListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.FaceSettingActivity$faceCheckListener$1
        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void a(Rect pos, int i, int i2) {
            kotlin.jvm.internal.r.e(pos, "pos");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void b(Rect pos, LandmarkEntity landmark, int i, int i2) {
            kotlin.jvm.internal.r.e(pos, "pos");
            kotlin.jvm.internal.r.e(landmark, "landmark");
            this.f7920a.f7915e++;
            if (System.currentTimeMillis() - this.f7920a.f7914d > 1000) {
                this.f7920a.f7914d = System.currentTimeMillis();
                kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this.f7920a), null, null, new FaceSettingActivity$faceCheckListener$1$onCheckFace$1(this.f7920a, null), 3, null);
                this.f7920a.f7915e = 0;
            }
            this.f7920a.g().box.a(pos, i);
            TextView textView = this.f7920a.g().tvFaceRatio;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(pos.height / i2)}, 1));
            kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
            textView.setText(kotlin.jvm.internal.r.m("当前人脸占比：", str));
            this.f7920a.g().landmark.a(kotlin.collections.u.m(landmark.getEyeLeft(), landmark.getEyeRight(), landmark.getLeftEar(), landmark.getRightEar(), landmark.getLeftCheek(), landmark.getRightCheck(), landmark.getNose(), landmark.getMouthBottom()));
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void c() {
            this.f7920a.f7915e++;
            if (System.currentTimeMillis() - this.f7920a.f7914d > 1000) {
                this.f7920a.f7914d = System.currentTimeMillis();
                kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this.f7920a), null, null, new FaceSettingActivity$faceCheckListener$1$onCheckNoFace$1(this.f7920a, null), 3, null);
                this.f7920a.f7915e = 0;
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener, cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void d(int i) {
            this.f7920a.g().tvBlurVar.setText(kotlin.jvm.internal.r.m("当前清晰度值：", Integer.valueOf(i)));
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener, cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void e(int i) {
            this.f7920a.g().tvHighLightRate.setText(kotlin.jvm.internal.r.m("当前高亮占比：", Integer.valueOf(i)));
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener, cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void f(float f2, float f3, float f4) {
            this.f7920a.g().tvAngleWrong.setText("角度不合适（x:y:z）[" + ((int) f2) + ", " + ((int) f3) + ", " + ((int) f4) + ']');
            if (f3 >= 45.0f || f3 <= -40.0f) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.g("角度不合适(Debug)， angleX:" + f2 + ", Y:" + f3 + ", Z:" + f4);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void g(Rect pos) {
            kotlin.jvm.internal.r.e(pos, "pos");
            this.f7920a.g().tvAngleWrong.setText("角度合适");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void h(int i) {
            this.f7920a.g().tvBrightness.setText(kotlin.jvm.internal.r.m("当前人脸亮度：", Integer.valueOf(i)));
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void i(Bitmap face, cn.mucang.jiakaoyi.uilib.login.face.m result) {
            kotlin.jvm.internal.r.e(face, "face");
            kotlin.jvm.internal.r.e(result, "result");
            kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this.f7920a), null, null, new FaceSettingActivity$faceCheckListener$1$onSuccess$1(this.f7920a, face, null), 3, null);
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) FaceSettingActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "text", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "core-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            String string;
            Integer numJ;
            if (s == null || (string = s.toString()) == null || (numJ = kotlin.text.s.j(string)) == null) {
                return;
            }
            int iIntValue = numJ.intValue();
            if (iIntValue > 255) {
                FaceSettingActivity.this.g().etOnline.setText("255");
                iIntValue = 255;
            }
            cn.mucang.android.jiakaoyi.framework.utils.i0.k("key_face_limit_pixel_v2", iIntValue);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence text, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence text, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "text", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "core-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            String string;
            Integer numJ;
            if (s == null || (string = s.toString()) == null || (numJ = kotlin.text.s.j(string)) == null) {
                return;
            }
            int iIntValue = numJ.intValue();
            if (iIntValue > 50) {
                FaceSettingActivity.this.g().etBlur.setText("50");
                iIntValue = 50;
            }
            cn.mucang.android.jiakaoyi.framework.utils.i0.k("key_face_limit_blur", iIntValue);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence text, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence text, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "text", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "core-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements TextWatcher {
        public d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            String string;
            Integer numJ;
            if (s == null || (string = s.toString()) == null || (numJ = kotlin.text.s.j(string)) == null) {
                return;
            }
            int iIntValue = numJ.intValue();
            if (iIntValue > 50) {
                FaceSettingActivity.this.g().etBlur.setText("50");
                iIntValue = 50;
            }
            cn.mucang.android.jiakaoyi.framework.utils.i0.k("key_face_limit_blur_night", iIntValue);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence text, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence text, int start, int before, int count) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(boolean z) {
        if (this.c != null) {
            if (z) {
                SourceVideoStream sourceVideoStream = this.b;
                if (sourceVideoStream != null) {
                    SurfaceViewRenderer surfaceViewRenderer = g().aiCamera;
                    kotlin.jvm.internal.r.d(surfaceViewRenderer, "viewBinding.aiCamera");
                    sourceVideoStream.d(surfaceViewRenderer);
                }
            } else {
                SourceVideoStream sourceVideoStream2 = this.b;
                if (sourceVideoStream2 != null) {
                    UVCCameraTextureView uVCCameraTextureView = g().uvcCamera;
                    kotlin.jvm.internal.r.d(uVCCameraTextureView, "viewBinding.uvcCamera");
                    sourceVideoStream2.d(uVCCameraTextureView);
                }
            }
            FaceLoginPresenter faceLoginPresenter = this.c;
            if (faceLoginPresenter != null) {
                faceLoginPresenter.l0();
            }
            FaceLoginPresenter faceLoginPresenter2 = this.c;
            if (faceLoginPresenter2 != null) {
                faceLoginPresenter2.P();
            }
        }
        this.b = z ? new AiCameraAdapter() : new UsbCameraAdapter(CameraIntent.FACE);
        int iD = cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_pixel_v2", FaceLoginPresenter.B.b());
        androidx.lifecycle.m mVarA = androidx.lifecycle.s.a(this);
        SourceVideoStream sourceVideoStream3 = this.b;
        kotlin.jvm.internal.r.c(sourceVideoStream3);
        FaceLoginPresenter faceLoginPresenter3 = new FaceLoginPresenter(mVarA, 200, 200, iD, sourceVideoStream3, new GoogleDetectorFactory(), this.f7916f);
        this.c = faceLoginPresenter3;
        if (faceLoginPresenter3 != null) {
            faceLoginPresenter3.h0(this);
        }
        IFaceFilter iFaceFilterG = LocalConfigManager.f(LocalConfig.FaceLoginFromAi) ? AiFaceCoverManager.f7292a.g() : null;
        FaceLoginPresenter faceLoginPresenter4 = this.c;
        if (faceLoginPresenter4 != null) {
            faceLoginPresenter4.g0(iFaceFilterG);
        }
        FaceLoginPresenter faceLoginPresenter5 = this.c;
        if (faceLoginPresenter5 != null) {
            faceLoginPresenter5.i0(new FaceSettingActivity$showVideo$1(this));
        }
        SurfaceViewRenderer surfaceViewRenderer2 = g().aiCamera;
        kotlin.jvm.internal.r.d(surfaceViewRenderer2, "viewBinding.aiCamera");
        surfaceViewRenderer2.setVisibility(z ? 0 : 8);
        UVCCameraTextureView uVCCameraTextureView2 = g().uvcCamera;
        kotlin.jvm.internal.r.d(uVCCameraTextureView2, "viewBinding.uvcCamera");
        uVCCameraTextureView2.setVisibility(z ^ true ? 0 : 8);
        FaceLoginPresenter faceLoginPresenter6 = this.c;
        if (faceLoginPresenter6 != null) {
            faceLoginPresenter6.j0();
        }
        if (z) {
            SourceVideoStream sourceVideoStream4 = this.b;
            if (sourceVideoStream4 == null) {
                return;
            }
            SurfaceViewRenderer surfaceViewRenderer3 = g().aiCamera;
            kotlin.jvm.internal.r.d(surfaceViewRenderer3, "viewBinding.aiCamera");
            sourceVideoStream4.b(surfaceViewRenderer3);
            return;
        }
        SourceVideoStream sourceVideoStream5 = this.b;
        if (sourceVideoStream5 == null) {
            return;
        }
        UVCCameraTextureView uVCCameraTextureView3 = g().uvcCamera;
        kotlin.jvm.internal.r.d(uVCCameraTextureView3, "viewBinding.uvcCamera");
        sourceVideoStream5.b(uVCCameraTextureView3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(FaceSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(View view) {
        LiveBus.c(new LogUploadRequest());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final FaceSettingActivity this$0, RadioGroup radioGroup, final int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LocalConfigManager.c(this$0, LocalConfig.FaceLoginFromAi, String.valueOf(i == R.id.rb03), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.FaceSettingActivity$init$4$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                int i2 = i;
                int i3 = R.id.rb03;
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("切换人脸登录摄像头：", i2 == i3 ? "ai" : "usb"));
                this$0.A(i == i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(View view) {
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams("温馨提示", "是否清除离线人脸数据", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, (View.OnClickListener) new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FaceSettingActivity.s(view2);
            }
        }, false, 72, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(View view) {
        FaceLoginManager.f3000a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(int i) {
        if (i == 1) {
            cn.mucang.android.core.utils.u.h("请摘下口罩");
            TtsManager.r("请摘下口罩", TtsGrade.SuperLevel);
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener
    public void e(final int i) {
        DebounceUtil.f3633a.b("onMaskResult", 3000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.q0
            @Override // java.lang.Runnable
            public final void run() {
                FaceSettingActivity.z(i);
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "FaceSettingActivity";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceSettingActivity.o(this.f7972a, view);
            }
        });
        g().titleLayout.titleTv.setText("人脸登录设置");
        boolean zF = LocalConfigManager.f(LocalConfig.FaceLoginFromAi);
        if (zF) {
            g().landmark.b(1280, 720);
            FrameLayout frameLayout = g().videoContainer;
            kotlin.jvm.internal.r.d(frameLayout, "viewBinding.videoContainer");
            ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            g().landmark.b(1280, 720);
            bVar.F = "1280:720";
            frameLayout.setLayoutParams(bVar);
            g().radioGroup1.check(R.id.rb03);
        } else {
            g().landmark.b(640, 480);
            FrameLayout frameLayout2 = g().videoContainer;
            kotlin.jvm.internal.r.d(frameLayout2, "viewBinding.videoContainer");
            ViewGroup.LayoutParams layoutParams2 = frameLayout2.getLayoutParams();
            Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            g().landmark.b(640, 480);
            bVar2.F = "640:480";
            frameLayout2.setLayoutParams(bVar2);
            g().radioGroup1.check(R.id.rb04);
        }
        g().radioGroup1.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.o0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                FaceSettingActivity.q(this.f7970a, radioGroup, i);
            }
        });
        g().aiCamera.init(AiCameraManager.f7519a.e(), null);
        A(zF);
        g().btnClearFace.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceSettingActivity.r(view);
            }
        });
        EditText editText = g().etOnline;
        FaceLoginPresenter.a aVar = FaceLoginPresenter.B;
        editText.setText(String.valueOf(cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_pixel_v2", aVar.b())));
        EditText editText2 = g().etOnline;
        kotlin.jvm.internal.r.d(editText2, "viewBinding.etOnline");
        editText2.addTextChangedListener(new b());
        g().etBlur.setText(String.valueOf(cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_blur", aVar.a())));
        EditText editText3 = g().etBlur;
        kotlin.jvm.internal.r.d(editText3, "viewBinding.etBlur");
        editText3.addTextChangedListener(new c());
        g().etBlurNight.setText(String.valueOf(cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_blur_night", (int) (((double) aVar.a()) * 0.6d))));
        EditText editText4 = g().etBlurNight;
        kotlin.jvm.internal.r.d(editText4, "viewBinding.etBlurNight");
        editText4.addTextChangedListener(new d());
        g().cbBlur.setChecked(cn.mucang.android.jiakaoyi.framework.utils.i0.b("key_face_enable_limit_blur", true));
        CheckBox checkBox = g().cbBlur;
        kotlin.jvm.internal.r.d(checkBox, "viewBinding.cbBlur");
        cn.mucang.android.jiakaoyi.teachingk2.p0.i(checkBox, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.FaceSettingActivity.init.9
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(boolean z) {
                cn.mucang.android.jiakaoyi.framework.utils.i0.i("key_face_enable_limit_blur", z);
            }
        });
        g().checkBox.setChecked(cn.mucang.android.jiakaoyi.framework.utils.i0.b("key_face_local_debug", false));
        CheckBox checkBox2 = g().checkBox;
        kotlin.jvm.internal.r.d(checkBox2, "viewBinding.checkBox");
        cn.mucang.android.jiakaoyi.teachingk2.p0.i(checkBox2, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.FaceSettingActivity.init.10
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(boolean z) {
                cn.mucang.android.jiakaoyi.framework.utils.i0.i("key_face_local_debug", z);
            }
        });
        TextView textView = g().uploadImage;
        kotlin.jvm.internal.r.d(textView, "viewBinding.uploadImage");
        textView.setVisibility(MucangConfig.v() ? 0 : 8);
        g().uploadImage.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceSettingActivity.p(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (g().radioGroup1.getCheckedRadioButtonId() == R.id.rb03) {
            SourceVideoStream sourceVideoStream = this.b;
            if (sourceVideoStream != null) {
                SurfaceViewRenderer surfaceViewRenderer = g().aiCamera;
                kotlin.jvm.internal.r.d(surfaceViewRenderer, "viewBinding.aiCamera");
                sourceVideoStream.d(surfaceViewRenderer);
            }
        } else {
            SourceVideoStream sourceVideoStream2 = this.b;
            if (sourceVideoStream2 != null) {
                UVCCameraTextureView uVCCameraTextureView = g().uvcCamera;
                kotlin.jvm.internal.r.d(uVCCameraTextureView, "viewBinding.uvcCamera");
                sourceVideoStream2.d(uVCCameraTextureView);
            }
        }
        FaceLoginPresenter faceLoginPresenter = this.c;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.l0();
        }
        FaceLoginPresenter faceLoginPresenter2 = this.c;
        if (faceLoginPresenter2 == null) {
            return;
        }
        faceLoginPresenter2.P();
    }
}
