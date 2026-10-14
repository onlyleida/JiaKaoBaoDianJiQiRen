package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.a0;
import androidx.lifecycle.s;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginFaceBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceBorderView;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.uilib.login.ClassTimeManager;
import cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.BuildConfig;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import com.tencent.connect.common.Constants;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.t1;
import org.opencv.core.Rect;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\f*\u0001\u0012\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001IB)\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\u0002\u0010\fJ\b\u0010(\u001a\u00020\tH\u0016J\b\u0010)\u001a\u00020\tH\u0002J\b\u0010*\u001a\u00020\tH\u0003J\u001a\u0010+\u001a\u00020\t2\u0010\b\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0002J\b\u0010-\u001a\u00020\tH\u0016J\b\u0010.\u001a\u00020\tH\u0016J\b\u0010/\u001a\u00020\tH\u0016J\b\u00100\u001a\u00020\tH\u0002J\u0010\u00101\u001a\u00020\t2\u0006\u00102\u001a\u000203H\u0016J\u0018\u00104\u001a\u00020\t2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020>H\u0016J\b\u0010?\u001a\u00020\tH\u0016J\u0010\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u000203H\u0002J\u0010\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\u000bH\u0016J\b\u0010D\u001a\u00020\tH\u0002J\b\u0010E\u001a\u00020\tH\u0002J\u0010\u0010F\u001a\u00020\t2\u0006\u0010G\u001a\u00020\u000bH\u0016J\b\u0010H\u001a\u00020\tH\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R+\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\n  *\u0004\u0018\u00010\u001f0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0015R\u001a\u0010%\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u000b0&X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006J"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;", "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginListener;", "binding", "switchType", "Lkotlin/Function0;", "", "faceSelected", "", "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "checkFaceTime", "", "delayJob", "Lkotlinx/coroutines/Job;", "faceCheckListener", "cn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$faceCheckListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$faceCheckListener$1;", "getFaceSelected", "()Lkotlin/jvm/functions/Function0;", "farFaceTime", "<set-?>", "isStarted", "()Z", "setStarted", "(Z)V", "isStarted$delegate", "Lkotlin/properties/ReadWriteProperty;", "rotateAnimator", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "scanAnimator", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "getSwitchType", "triggers", "", "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;", "init", "innerDestroy", "innerStart", "innerStop", "actionInMain", "onConnect", "onDetached", "onDisconnect", "onFail", "onLoginFail", ErrorDialogParams.EXTRA_MESSAGE, "", "onLoginSuccess", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "loginData", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "onMaskResult", "maskResult", "", "onPreviewFrame", "data", "", "release", "setText", "text", TtmlNode.START, "fromUser", "startAnimation", "startPreview", "stop", "switch", "stopAnimation", "Condition", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceLoginLogic extends BaseLogic<LayoutLoginFaceBinding> implements UsbCameraManager.UsbCameraListener, MaskDetectorListener, FaceLoginListener {
    static final /* synthetic */ KProperty<Object>[] m = {v.f(new MutablePropertyReference1Impl(FaceLoginLogic.class, "isStarted", "isStarted()Z", 0))};
    private final Function0<kotlin.v> b;
    private final Function0<Boolean> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Condition, Boolean> f7321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile long f7322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile long f7323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReadWriteProperty f7324g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private i0 f7325h;
    private t1 i;
    private final ValueAnimator j;
    private ValueAnimator k;
    private final a l;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NO_FACE' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;", "", "text", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getText", "()Ljava/lang/String;", "NO_FACE", "FAR_FACE", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Condition {
        private static final /* synthetic */ Condition[] $VALUES;
        public static final Condition FAR_FACE;
        public static final Condition NO_FACE;
        private final String text;

        private static final /* synthetic */ Condition[] $values() {
            return new Condition[]{NO_FACE, FAR_FACE};
        }

        static {
            String strA = k0.a(R.string.teachbase_no_detected_face);
            r.d(strA, "getString(R.string.teachbase_no_detected_face)");
            NO_FACE = new Condition("NO_FACE", 0, strA);
            String strA2 = k0.a(R.string.teachbase_near_camera);
            r.d(strA2, "getString(R.string.teachbase_near_camera)");
            FAR_FACE = new Condition("FAR_FACE", 1, strA2);
            $VALUES = $values();
        }

        private Condition(String str, int i, String str2) {
            super(str, i);
            this.text = str2;
        }

        public static Condition valueOf(String str) {
            return (Condition) Enum.valueOf(Condition.class, str);
        }

        public static Condition[] values() {
            return (Condition[]) $VALUES.clone();
        }

        public final String getText() {
            return this.text;
        }
    }

    @Metadata(d1 = {"\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¨\u0006\u0015"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$faceCheckListener$1", "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;", "onBrightness", "", "brightness", "", "onCheckFace", "pos", "Lorg/opencv/core/Rect;", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "width", "height", "onCheckFarFace", "onCheckNoFace", "onCheckSuitableFace", "onSuccess", OptionalModuleUtils.FACE, "Landroid/graphics/Bitmap;", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends AbsFaceCheckListener {
        final /* synthetic */ LayoutLoginFaceBinding b;

        a(LayoutLoginFaceBinding layoutLoginFaceBinding) {
            this.b = layoutLoginFaceBinding;
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void a(Rect pos, int i, int i2) {
            r.e(pos, "pos");
            Map map = FaceLoginLogic.this.f7321d;
            Condition condition = Condition.FAR_FACE;
            Object obj = map.get(condition);
            r.c(obj);
            if (((Boolean) obj).booleanValue()) {
                return;
            }
            FaceLoginLogic.this.f7323f = System.currentTimeMillis();
            FaceLoginLogic.this.I(condition.getText());
            FaceLoginLogic.this.f7321d.put(condition, Boolean.TRUE);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void b(Rect pos, LandmarkEntity landmark, int i, int i2) {
            r.e(pos, "pos");
            r.e(landmark, "landmark");
            if (MucangConfig.v()) {
                this.b.borderView.a(pos, i);
            }
            t1 t1Var = FaceLoginLogic.this.i;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            FaceLoginLogic.this.i = null;
            Map map = FaceLoginLogic.this.f7321d;
            Condition condition = Condition.NO_FACE;
            Object obj = map.get(condition);
            r.c(obj);
            if (((Boolean) obj).booleanValue()) {
                FaceLoginLogic.this.f7321d.put(condition, Boolean.FALSE);
                FaceLoginLogic faceLoginLogic = FaceLoginLogic.this;
                String strA = k0.a(R.string.teachbase_checking);
                r.d(strA, "getString(R.string.teachbase_checking)");
                faceLoginLogic.I(strA);
            }
            FaceLoginLogic.this.f7322e = System.currentTimeMillis();
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void c() {
            Boolean bool = Boolean.FALSE;
            t1 t1Var = FaceLoginLogic.this.i;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            FaceLoginLogic.this.i = null;
            Map map = FaceLoginLogic.this.f7321d;
            Condition condition = Condition.NO_FACE;
            Object obj = map.get(condition);
            r.c(obj);
            if (!((Boolean) obj).booleanValue() && System.currentTimeMillis() - FaceLoginLogic.this.f7322e > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                FaceLoginLogic.this.I(condition.getText());
                FaceLoginLogic.this.f7321d.put(condition, Boolean.TRUE);
                FaceLoginLogic.this.f7321d.put(Condition.FAR_FACE, bool);
            }
            Object obj2 = FaceLoginLogic.this.f7321d.get(condition);
            r.c(obj2);
            if (!((Boolean) obj2).booleanValue() || System.currentTimeMillis() - FaceLoginLogic.this.f7322e <= 30000) {
                return;
            }
            FaceLoginLogic.this.f7321d.put(condition, bool);
            FaceLoginLogic.this.f7322e = System.currentTimeMillis();
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void g(Rect pos) {
            r.e(pos, "pos");
            Map map = FaceLoginLogic.this.f7321d;
            Condition condition = Condition.FAR_FACE;
            Object obj = map.get(condition);
            r.c(obj);
            if (((Boolean) obj).booleanValue()) {
                FaceLoginLogic.this.f7321d.put(condition, Boolean.FALSE);
                FaceLoginLogic faceLoginLogic = FaceLoginLogic.this;
                String strA = k0.a(R.string.teachbase_checking);
                r.d(strA, "getString(R.string.teachbase_checking)");
                faceLoginLogic.I(strA);
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void h(int i) {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void i(Bitmap face, cn.mucang.jiakaoyi.uilib.login.face.m result) {
            r.e(face, "face");
            r.e(result, "result");
        }
    }

    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J)\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\b¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlin/properties/Delegates$observable$1", "Lkotlin/properties/ObservableProperty;", "afterChange", "", "property", "Lkotlin/reflect/KProperty;", "oldValue", "newValue", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class b extends ObservableProperty<Boolean> {
        final /* synthetic */ Object b;
        final /* synthetic */ LayoutLoginFaceBinding c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Object obj, Object obj2, LayoutLoginFaceBinding layoutLoginFaceBinding) {
            super(obj2);
            this.b = obj;
            this.c = layoutLoginFaceBinding;
        }

        @Override // kotlin.properties.ObservableProperty
        protected void c(KProperty<?> property, Boolean bool, Boolean bool2) {
            r.e(property, "property");
            boolean zBooleanValue = bool2.booleanValue();
            bool.booleanValue();
            TextView textView = this.c.btnFaceCheck;
            r.d(textView, "binding.btnFaceCheck");
            textView.setVisibility(zBooleanValue ^ true ? 0 : 8);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaceLoginLogic(LayoutLoginFaceBinding binding, Function0<kotlin.v> switchType, Function0<Boolean> faceSelected) {
        super(binding);
        r.e(binding, "binding");
        r.e(switchType, "switchType");
        r.e(faceSelected, "faceSelected");
        this.b = switchType;
        this.c = faceSelected;
        Condition condition = Condition.NO_FACE;
        Boolean bool = Boolean.FALSE;
        this.f7321d = o0.l(kotlin.l.a(condition, bool), kotlin.l.a(Condition.FAR_FACE, bool));
        Delegates delegates = Delegates.f15824a;
        this.f7324g = new b(bool, bool, binding);
        this.j = ValueAnimator.ofInt(0, 360).setDuration(3000L);
        this.l = new a(binding);
    }

    private final void A(Function0<kotlin.v> function0) {
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        faceLoginManager.H(null);
        faceLoginManager.J(null);
        faceLoginManager.O();
        i0 i0Var = this.f7325h;
        if (i0Var != null) {
            kotlinx.coroutines.g.b(i0Var, null, null, new FaceLoginLogic$innerStop$1(this, function0, null), 3, null);
        }
        t1 t1Var = this.i;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.i = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void B(FaceLoginLogic faceLoginLogic, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        faceLoginLogic.A(function0);
    }

    private final void G() {
        String strA = k0.a(R.string.teachbase_face_match_fail_hint);
        r.d(strA, "getString(R.string.teachbase_face_match_fail_hint)");
        I(strA);
        A(new FaceLoginLogic$onFail$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(boolean z) {
        this.f7324g.a(this, m[0], Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.g(r.m("线上人脸识别登录：", str));
        i0 i0Var = this.f7325h;
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new FaceLoginLogic$setText$1(this, str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J() {
        if (!this.j.isStarted()) {
            this.j.setInterpolator(new LinearInterpolator());
            this.j.setRepeatCount(-1);
            this.j.setTarget(d().circleIv);
            this.j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.j
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    FaceLoginLogic.K(this.f7340a, valueAnimator);
                }
            });
            this.j.start();
        }
        ValueAnimator valueAnimator = this.k;
        if (valueAnimator != null && !valueAnimator.isStarted()) {
            valueAnimator.setInterpolator(new LinearInterpolator());
            valueAnimator.setRepeatCount(-1);
            valueAnimator.setTarget(d().scanView);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.d
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    FaceLoginLogic.L(this.f7334a, valueAnimator2);
                }
            });
            valueAnimator.start();
        }
        View view = d().scanView;
        r.d(view, "binding.scanView");
        view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(FaceLoginLogic this$0, ValueAnimator valueAnimator) {
        r.e(this$0, "this$0");
        ImageView imageView = this$0.d().circleIv;
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        imageView.setRotation(((Integer) animatedValue).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(FaceLoginLogic this$0, ValueAnimator valueAnimator) {
        r.e(this$0, "this$0");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        ViewGroup.LayoutParams layoutParams = this$0.d().scanView.getLayoutParams();
        layoutParams.height = iIntValue;
        this$0.d().scanView.setLayoutParams(layoutParams);
    }

    private final void M() {
        boolean zF = LocalConfigManager.f(LocalConfig.FaceLoginFromAi);
        SurfaceViewRenderer surfaceViewRenderer = d().aiCamera;
        r.d(surfaceViewRenderer, "binding.aiCamera");
        surfaceViewRenderer.setVisibility(zF ? 0 : 8);
        UVCCameraTextureView uVCCameraTextureView = d().camera;
        r.d(uVCCameraTextureView, "binding.camera");
        uVCCameraTextureView.setVisibility(zF ^ true ? 0 : 8);
        if (zF) {
            FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
            SurfaceViewRenderer surfaceViewRenderer2 = d().aiCamera;
            r.d(surfaceViewRenderer2, "binding.aiCamera");
            faceLoginManager.M(surfaceViewRenderer2);
            return;
        }
        FaceLoginManager faceLoginManager2 = FaceLoginManager.f3000a;
        UVCCameraTextureView uVCCameraTextureView2 = d().camera;
        r.d(uVCCameraTextureView2, "binding.camera");
        faceLoginManager2.M(uVCCameraTextureView2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        View view = d().scanView;
        r.d(view, "binding.scanView");
        view.setVisibility(8);
        this.j.cancel();
        ValueAnimator valueAnimator = this.k;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(FaceLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.z();
        this$0.J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(FaceLoginLogic this$0, Pair pair) {
        r.e(this$0, "this$0");
        if (pair != null && pair.getFirst() == LoginType.FACE && ((Boolean) pair.getSecond()).booleanValue()) {
            B(this$0, null, 1, null);
        }
    }

    private final void y() {
        boolean zF = LocalConfigManager.f(LocalConfig.FaceLoginFromAi);
        UsbCameraManager.INSTANCE.unregisterCameraListener(CameraIntent.FACE, this);
        if (zF) {
            FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
            SurfaceViewRenderer surfaceViewRenderer = d().aiCamera;
            r.d(surfaceViewRenderer, "binding.aiCamera");
            faceLoginManager.P(surfaceViewRenderer);
            return;
        }
        FaceLoginManager faceLoginManager2 = FaceLoginManager.f3000a;
        UVCCameraTextureView uVCCameraTextureView = d().camera;
        r.d(uVCCameraTextureView, "binding.camera");
        faceLoginManager2.P(uVCCameraTextureView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z() {
        this.f7322e = System.currentTimeMillis();
        System.currentTimeMillis();
        Iterator<T> it = this.f7321d.entrySet().iterator();
        while (it.hasNext()) {
            ((Map.Entry) it.next()).setValue(Boolean.FALSE);
        }
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        faceLoginManager.H(this.l);
        faceLoginManager.J(this);
        faceLoginManager.L(BuildConfig.FLAVOR_feat);
        J();
        H(true);
        String strA = k0.a(R.string.teachbase_keep_face_hint);
        r.d(strA, "getString(R.string.teachbase_keep_face_hint)");
        I(strA);
        t1 t1Var = this.i;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        i0 i0Var = this.f7325h;
        this.i = i0Var != null ? kotlinx.coroutines.g.b(i0Var, null, null, new FaceLoginLogic$innerStart$2(this, null), 3, null) : null;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener
    public void a(String message) {
        r.e(message, "message");
        G();
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener
    public void b(XyUserModel user, LoginData loginData) {
        r.e(user, "user");
        r.e(loginData, "loginData");
        String strA = k0.a(R.string.teachbase_face_recog_success);
        r.d(strA, "getString(R.string.teachbase_face_recog_success)");
        I(strA);
        A(new FaceLoginLogic$onLoginSuccess$1(this, user, loginData));
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener
    public void e(int i) {
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void f() {
        boolean zF = LocalConfigManager.f(LocalConfig.FaceLoginFromAi);
        this.k = ValueAnimator.ofInt(0, (int) MucangConfig.getContext().getResources().getDimension(R.dimen.rpx_399)).setDuration(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        d().btnFaceCheck.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceLoginLogic.w(this.f7335a, view);
            }
        });
        if (!zF) {
            UsbCameraManager.INSTANCE.registerCameraListener(CameraIntent.FACE, this);
        } else if (!d().aiCamera.isSelected()) {
            d().aiCamera.init(AiCameraManager.f7519a.e(), null);
            d().aiCamera.setSelected(true);
        }
        this.f7325h = s.a(c());
        ClassTimeManager.f9354a.c().h(c(), new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                FaceLoginLogic.x(this.f7336a, (Pair) obj);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void g() {
        super.g();
        y();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void h(boolean z) {
        super.h(z);
        FaceBorderView faceBorderView = d().borderView;
        r.d(faceBorderView, "binding.borderView");
        faceBorderView.setVisibility(MucangConfig.v() ? 0 : 8);
        z();
        M();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void j(boolean z) {
        super.j(z);
        B(this, null, 1, null);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onConnect() {
        if (!this.c.invoke().booleanValue() || c().isFinishing() || c().isDestroyed() || !c().getLifecycle().b().isAtLeast(Lifecycle.State.RESUMED)) {
            return;
        }
        z();
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        UVCCameraTextureView uVCCameraTextureView = d().camera;
        r.d(uVCCameraTextureView, "binding.camera");
        faceLoginManager.M(uVCCameraTextureView);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDetached() {
        if (!this.c.invoke().booleanValue() || c().isFinishing() || c().isDestroyed() || !c().getLifecycle().b().isAtLeast(Lifecycle.State.RESUMED)) {
            return;
        }
        String strA = k0.a(R.string.teachbase_no_detected_camera_hint);
        r.d(strA, "getString(R.string.teach…_no_detected_camera_hint)");
        I(strA);
        A(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.FaceLoginLogic.onDetached.1
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
                TextView textView = FaceLoginLogic.this.d().btnFaceCheck;
                r.d(textView, "binding.btnFaceCheck");
                textView.setVisibility(8);
            }
        });
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDisconnect() {
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onPreviewFrame(byte[] data) {
        r.e(data, "data");
    }

    public final Function0<kotlin.v> v() {
        return this.b;
    }
}
