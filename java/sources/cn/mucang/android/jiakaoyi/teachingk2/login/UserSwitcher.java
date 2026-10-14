package cn.mucang.android.jiakaoyi.teachingk2.login;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import androidx.lifecycle.a0;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.facelib.GoogleDetectorFactory;
import cn.mucang.android.facelib.TimeOut;
import cn.mucang.android.facelib.model.NonPerceiveLoginData;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.SwitchStudentDialog;
import cn.mucang.android.jiakaoyi.teachingk2.ui.RobotGuideActivity;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.api.FaceCheckApi;
import cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.model.AnyLoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.iflytek.cloud.SpeechUtility;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import org.opencv.core.Rect;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0013\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010#\u001a\u00020$H\u0007J\u0006\u0010%\u001a\u00020$J\u0012\u0010&\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010\u001bH\u0007J\u0006\u0010(\u001a\u00020$J\b\u0010)\u001a\u00020$H\u0007J\b\u0010*\u001a\u00020$H\u0002J\u0010\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020$2\u0006\u0010'\u001a\u00020\u001b2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020$H\u0002J\u0010\u00105\u001a\u00020$2\u0006\u00106\u001a\u000207H\u0007J\u000e\u00108\u001a\u00020$2\u0006\u0010/\u001a\u000200J\b\u00109\u001a\u00020$H\u0002J\u0006\u0010:\u001a\u00020$J\b\u0010;\u001a\u00020$H\u0002J\u0010\u0010<\u001a\u00020$2\u0006\u00106\u001a\u000207H\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b \u0010\u0003\u001a\u0004\b!\u0010\"¨\u0006="}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginListener;", "()V", "abnormalLoginChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;", "autoLogoutDialog", "Ljava/lang/ref/WeakReference;", "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;", "checkExam", "", "dialog", "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog;", "enableNonPerceive", "getEnableNonPerceive", "()Z", "enableNonPerceive$delegate", "Lkotlin/Lazy;", "faceCheckListener", "cn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher$faceCheckListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher$faceCheckListener$1;", "facePresenter", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;", "isFirstFaceLogin", "lastBelt", "lastDoorClose", "lastStudentByNonPerceive", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "timeOut", "Lcn/mucang/android/facelib/TimeOut;", "userList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "getUserList$annotations", "getUserList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "checkExamError", "", "checkFirstFaceLogin", "clearUser", "user", "destroy", "init", "initFeelNotFace", "onLoginFail", ErrorDialogParams.EXTRA_MESSAGE, "", "onLoginSuccess", "loginData", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "showAutoLogoutDialog", "showSwitchDialog", "activity", "Landroid/app/Activity;", "startCheckAbnormal", "startCheckNoFace", "stopCheckAbnormal", "stopCheckNoFace", "toggleLoginAction", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserSwitcher implements cn.mucang.android.jiakaoyi.signal.c.f.a, FaceLoginListener {
    private static SwitchStudentDialog c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f7306f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static FaceLoginPresenter f7307g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static TimeOut f7308h;
    private static XyUserModel j;
    private static WeakReference<AutoLogoutDialog> k;
    private static AbnormalLoginChecker l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserSwitcher f7303a = new UserSwitcher();
    private static final ListLiveData<XyUserModel> b = new ListLiveData<>();
    private static final Lazy i = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher$enableNonPerceive$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin));
        }
    });
    private static boolean m = true;
    private static final a n = new a();

    @Metadata(d1 = {"\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¨\u0006\u0015"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher$faceCheckListener$1", "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;", "onBrightness", "", "brightness", "", "onCheckFace", "pos", "Lorg/opencv/core/Rect;", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "width", "height", "onCheckFarFace", "onCheckNoFace", "onCheckSuitableFace", "onSuccess", OptionalModuleUtils.FACE, "Landroid/graphics/Bitmap;", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends AbsFaceCheckListener {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void a(Rect pos, int i, int i2) {
            r.e(pos, "pos");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void b(Rect pos, LandmarkEntity landmark, int i, int i2) {
            r.e(pos, "pos");
            r.e(landmark, "landmark");
            if (UserSwitcher.f7308h != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.g("驾驶位有人，关闭无人检测");
                UserSwitcher.f7303a.D();
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void c() {
            if (UserSwitcher.f7308h != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.g("驾驶位无人，准备熄屏弹窗");
                FaceLoginManager.f3000a.O();
                UserSwitcher userSwitcher = UserSwitcher.f7303a;
                userSwitcher.D();
                userSwitcher.x();
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void g(Rect pos) {
            r.e(pos, "pos");
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

    private UserSwitcher() {
    }

    private final void B() {
        if (RobotAccount.i().e() == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.g("开始驾驶位无人检测");
        TimeOut timeOut = f7308h;
        if (timeOut != null) {
            timeOut.d();
        }
        TimeOut timeOut2 = new TimeOut(j0.b(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        f7308h = timeOut2;
        if (timeOut2 == null) {
            return;
        }
        timeOut2.e(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher$startCheckNoFace$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FaceLoginPresenter faceLoginPresenter = UserSwitcher.f7307g;
                if (faceLoginPresenter == null) {
                    return;
                }
                faceLoginPresenter.j0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        if (f7308h != null) {
            FaceLoginPresenter faceLoginPresenter = f7307g;
            if (faceLoginPresenter != null) {
                faceLoginPresenter.l0();
            }
            TimeOut timeOut = f7308h;
            if (timeOut != null) {
                timeOut.d();
            }
            f7308h = null;
        }
    }

    public static final void E(Activity activity) {
        r.e(activity, "activity");
        if (!f7303a.k()) {
            y(activity);
        } else {
            if (activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            RobotAccount.p("toggleLoginAction", null, 2, null);
        }
    }

    public static final void g() {
        f7306f = true;
    }

    public static final void i(XyUserModel xyUserModel) {
        SwitchStudentDialog switchStudentDialog;
        if (xyUserModel == null) {
            return;
        }
        l().t(xyUserModel);
        if (!cn.mucang.android.core.utils.g.b((Collection) l().e()) || (switchStudentDialog = c) == null) {
            return;
        }
        DialogExtensionKt.b(switchStudentDialog);
    }

    private final boolean k() {
        return ((Boolean) i.getValue()).booleanValue();
    }

    public static final ListLiveData<XyUserModel> l() {
        return b;
    }

    public static final void m() {
        m = true;
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.k
            @Override // java.lang.Runnable
            public final void run() {
                UserSwitcher.n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n() {
        RobotAccount.i().i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                UserSwitcher.o((XyUserModel) obj);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        UserSwitcher userSwitcher = f7303a;
        dVar.b(userSwitcher);
        if (userSwitcher.k()) {
            l = new AbnormalLoginChecker();
            userSwitcher.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    public static final void o(XyUserModel xyUserModel) {
        boolean z;
        boolean z2;
        final XyUserModel xyUserModel2;
        AutoLogoutDialog autoLogoutDialog;
        if (xyUserModel == null) {
            f7303a.D();
            WeakReference<AutoLogoutDialog> weakReference = k;
            if (weakReference == null || (autoLogoutDialog = weakReference.get()) == null) {
                return;
            }
            DialogExtensionKt.b(autoLogoutDialog);
            return;
        }
        if (f7303a.k() && !r.a(j, xyUserModel)) {
            String mucangId = xyUserModel.getMucangId();
            XyUserModel xyUserModel3 = j;
            if (!r.a(mucangId, xyUserModel3 == null ? null : xyUserModel3.getMucangId())) {
                List list = (List) l().e();
                if (list != null) {
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            String mucangId2 = ((XyUserModel) it.next()).getMucangId();
                            XyUserModel xyUserModel4 = j;
                            if (r.a(mucangId2, xyUserModel4 == null ? null : xyUserModel4.getMucangId())) {
                                z = true;
                                break;
                            }
                        }
                    } else {
                        z = false;
                        break;
                    }
                    z2 = z;
                }
                if (z2 && (xyUserModel2 = j) != null) {
                    cn.mucang.android.jiakaoyi.framework.log.f.g("当前登录的学员和上次无感识别的学员不是同一个，删掉上次学员(" + ((Object) xyUserModel2.getName()) + ")的人脸照片");
                    n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            UserSwitcher.p(xyUserModel2);
                        }
                    });
                }
            }
            j = null;
        }
        List<XyUserModel> listJ = (List) l().e();
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        for (XyUserModel xyUserModel5 : listJ) {
            if (xyUserModel.getStudentId() == xyUserModel5.getStudentId()) {
                l().t(xyUserModel5);
                break;
            }
        }
        if (xyUserModel.isCoach()) {
            return;
        }
        l().p(0, xyUserModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(XyUserModel it) {
        r.e(it, "$it");
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        String strValueOf = String.valueOf(it.getStudentId());
        String name = it.getName();
        if (name == null) {
            name = "";
        }
        faceLoginManager.u(strValueOf, name);
        FaceCheckApi faceCheckApi = new FaceCheckApi();
        String strValueOf2 = String.valueOf(it.getXyToken());
        cn.mucang.android.jiakaoyi.framework.log.f.g("删掉上次学员（" + ((Object) it.getName()) + "）的人脸数据结果：" + faceCheckApi.o(strValueOf2 != null ? strValueOf2 : ""));
    }

    private final void q() {
        SourceVideoStream sourceVideoStreamA = new FaceLoginVideoFactory().a();
        GoogleDetectorFactory googleDetectorFactory = new GoogleDetectorFactory();
        f7307g = new FaceLoginPresenter(j0.b(), 112, 112, i0.d("key_face_limit_pixel_v2", FaceLoginPresenter.B.b()), sourceVideoStreamA, googleDetectorFactory, n);
        FaceLoginManager.f3000a.I(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(Activity activity, XyUserModel user, LoginData loginData) throws InterruptedException {
        r.e(user, "$user");
        r.e(loginData, "$loginData");
        r.d(activity, "activity");
        LoginManager.D(activity, user, LoginType.FACE, loginData, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        AutoLogoutDialog autoLogoutDialog;
        Activity it = MucangConfig.i();
        if (it.isFinishing() || it.isDestroyed() || RobotAccount.i().e() == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            WeakReference<AutoLogoutDialog> weakReference = k;
            v vVar = null;
            if (weakReference != null && (autoLogoutDialog = weakReference.get()) != null) {
                DialogExtensionKt.b(autoLogoutDialog);
                vVar = v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
        r.d(it, "it");
        AutoLogoutDialog autoLogoutDialog2 = new AutoLogoutDialog(it);
        k = new WeakReference<>(autoLogoutDialog2);
        autoLogoutDialog2.show();
    }

    public static final void y(Activity activity) {
        SwitchStudentDialog switchStudentDialog;
        r.e(activity, "activity");
        if (f7303a.k() || cn.mucang.android.core.utils.g.b((Collection) b.e())) {
            return;
        }
        SwitchStudentDialog switchStudentDialog2 = c;
        boolean z = false;
        if (switchStudentDialog2 != null && switchStudentDialog2.isShowing()) {
            z = true;
        }
        if (z && (switchStudentDialog = c) != null) {
            DialogExtensionKt.b(switchStudentDialog);
        }
        SwitchStudentDialog switchStudentDialog3 = new SwitchStudentDialog(activity);
        c = switchStudentDialog3;
        switchStudentDialog3.show();
        SwitchStudentDialog switchStudentDialog4 = c;
        if (switchStudentDialog4 == null) {
            return;
        }
        switchStudentDialog4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.l
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                UserSwitcher.z(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(DialogInterface dialogInterface) {
        c = null;
    }

    public final void A(LoginData loginData) {
        r.e(loginData, "loginData");
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        faceLoginManager.O();
        faceLoginManager.N();
        if (loginData instanceof NonPerceiveLoginData) {
            cn.mucang.android.facelib.x.a.a("无感知人脸登录，不再继续注册");
            return;
        }
        LoginType loginType = loginData instanceof AnyLoginData ? LoginType.QR_CODE : LoginType.MOBILE_OR_IDCARD;
        cn.mucang.android.jiakaoyi.framework.log.f.g("开始异常登录检测流程");
        AbnormalLoginChecker abnormalLoginChecker = l;
        if (abnormalLoginChecker == null) {
            return;
        }
        abnormalLoginChecker.r(loginType);
    }

    public final void C() {
        cn.mucang.android.jiakaoyi.framework.log.f.g("停止异常登录检测流程");
        AbnormalLoginChecker abnormalLoginChecker = l;
        if (abnormalLoginChecker == null) {
            return;
        }
        abnormalLoginChecker.s();
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener
    public void a(String message) {
        r.e(message, "message");
        if (RobotAccount.i().e() != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.g("无感识别失败，当前已登录");
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener
    public void b(final XyUserModel user, final LoginData loginData) {
        AutoLogoutDialog autoLogoutDialog;
        r.e(user, "user");
        r.e(loginData, "loginData");
        WeakReference<AutoLogoutDialog> weakReference = k;
        if (weakReference != null && (autoLogoutDialog = weakReference.get()) != null) {
            DialogExtensionKt.b(autoLogoutDialog);
        }
        j = user;
        XyUserModel xyUserModelE = RobotAccount.i().e();
        if (r.a(xyUserModelE == null ? null : xyUserModelE.getMucangId(), user.getMucangId())) {
            cn.mucang.android.jiakaoyi.framework.log.f.g("无感识别成功，是同一个账号，无需切换");
            return;
        }
        XyUserModel xyUserModelE2 = RobotAccount.i().e();
        if ((xyUserModelE2 == null ? null : xyUserModelE2.getMucangId()) != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.g("无感识别成功，非同一个账号，切换");
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.g("无感识别成功，当前未登录，开始登录");
        }
        final Activity activityI = MucangConfig.i();
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activityI).i(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.n
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws InterruptedException {
                UserSwitcher.w(activityI, user, loginData);
            }
        }, k0.a(R.string.teachbase_logging_in), k0.a(R.string.teachbase_login_fail), null);
    }

    public final void h() {
        if (m && k()) {
            m = false;
            cn.mucang.android.jiakaoyi.framework.log.f.g("首次使用无感登录");
            FaceLoginManager.f3000a.L("nonstandard");
        }
    }

    public final void j() {
        C();
        D();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a != KeMu.K3 || k()) {
            boolean z = false;
            boolean z2 = f7304d && !signalGetter.d().f5266d;
            if (f7305e && !signalGetter.d().j) {
                if (k() && !RobotAccount.f7298a.l()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.g("有人开门准备下车");
                    j = null;
                    FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
                    faceLoginManager.N();
                    faceLoginManager.O();
                    B();
                }
                z2 = true;
            }
            if (k() && !RobotAccount.f7298a.l() && ((!f7305e && signalGetter.d().j) || (!f7304d && signalGetter.d().f5266d && !signalGetter.d().j))) {
                Activity activityI = MucangConfig.i();
                if ((activityI instanceof LoginActivity) || (activityI instanceof UnityMainActivity) || (activityI instanceof RobotGuideActivity)) {
                    AbnormalLoginChecker abnormalLoginChecker = l;
                    if (abnormalLoginChecker != null && abnormalLoginChecker.getF7289g()) {
                        z = true;
                    }
                    if (z) {
                        cn.mucang.android.jiakaoyi.framework.log.f.g("正在进行异常登录检测，不无感识别");
                    } else {
                        cn.mucang.android.jiakaoyi.framework.log.f.g("有人上车了，准备无感登录");
                        FaceLoginManager.f3000a.L("nonstandard");
                    }
                }
            }
            if (z2 && !signalGetter.d().f5266d && !signalGetter.d().j) {
                Activity activityI2 = MucangConfig.i();
                if (activityI2 instanceof UnityMainActivity) {
                    y(activityI2);
                }
            }
            f7304d = signalGetter.d().f5266d;
            f7305e = signalGetter.d().j;
        }
    }
}
