package cn.mucang.sundial.library.activity;

import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.lifecycle.l0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.PhotoRecord;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CoachLoginResponseEvent;
import cn.mucang.sundial.android.eventbus.event.CoachLogoutResponseEvent;
import cn.mucang.sundial.android.eventbus.event.StudentLoginResponseEvent;
import cn.mucang.sundial.android.eventbus.event.StudentLogoutResponseEvent;
import cn.mucang.sundial.android.eventbus.event.UploadImageEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageResult;
import cn.mucang.sundial.android.tcp.upload.UploadMode;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityFaceCheckBinding;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ConvertNum;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.ServerTimeHelper;
import cn.mucang.sundial.library.viewmodel.FaceCheckActivityViewModel;
import cn.mucang.sundial.library.widget.BlankDialog;
import cn.mucang.sundial.library.widget.FaceCheckFailDialog;
import com.bumptech.glide.Glide;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.u.d;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 q2\u00020\u0001:\u0001qB\u0007¢\u0006\u0004\bp\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0007J\u001f\u0010\u000e\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0007J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0007J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u000bH\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u001cH\u0003¢\u0006\u0004\b!\u0010$J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010\u0007J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0010H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0010H\u0002¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020\u0005H\u0002¢\u0006\u0004\b,\u0010\u0007J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0007J\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\u0007J\u0019\u00102\u001a\u0002012\b\u00100\u001a\u0004\u0018\u00010/H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0005H\u0014¢\u0006\u0004\b4\u0010\u0007J\u000f\u00105\u001a\u00020\u0005H\u0014¢\u0006\u0004\b5\u0010\u0007J\u000f\u00106\u001a\u00020\u0005H\u0014¢\u0006\u0004\b6\u0010\u0007J\u000f\u00107\u001a\u00020\u0002H\u0016¢\u0006\u0004\b7\u0010\u0004J\u000f\u00108\u001a\u00020\u0005H\u0016¢\u0006\u0004\b8\u0010\u0007R\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010@\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010B\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010?R\u0016\u0010C\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010AR\u0016\u0010D\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010=R\u0016\u0010E\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010=R\u0016\u0010F\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010?R\u0016\u0010H\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u001c\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00100J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010T\u001a\u00020S8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010V\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010?R\u0016\u0010W\u001a\u00020S8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010UR\u0016\u0010X\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010?R\u001d\u0010^\u001a\u00020Y8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\u001d\u0010c\u001a\u00020_8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010[\u001a\u0004\ba\u0010bR\u0016\u0010d\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010?R\u0018\u0010f\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010i\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010k\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010?R\u0018\u0010l\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010n\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010?R\u0018\u0010o\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010j¨\u0006r"}, d2 = {"Lcn/mucang/sundial/library/activity/FaceCheckActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "", "checkCamera", "()Z", "Lkotlin/v;", "observeForLoginLogoutIfNeed", "()V", "signInOutSuccess", "initUVCCamera", "updateTitle", "", "nameStr", "avatarStr", "updateView", "(Ljava/lang/String;Ljava/lang/String;)V", "", "code", SocialConstants.PARAM_SEND_MSG, "handleUploadImageResult", "(ILjava/lang/String;)V", "toLoginOrLogout", "showErrorLayout", "showCompleteLayout", "speakToTakePhoto", "isLogin", "isLogout", "path", "Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "createPhotoRecord", "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "Ljava/io/File;", "file", "uploadImage", "(Ljava/io/File;)V", "photoRecord", "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V", "toastCustomMsg", "(Ljava/lang/String;)V", "takePhoto", "delay", "startCountDown", "(I)V", "startCountDownUpload", "cancelCountDown", "initData", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "onDestroy", "isHiddenSelfCheckBtn", "onBackPressed", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "authToken", "Ljava/lang/String;", "personMode", "I", "hasPermission", "Z", "streamId", "takePictureWhenGetInfo", "idNum", "uploadPhotoId", "wavTimer", "", Constant.START_TIME, "J", "", "fiveDownTimer", "[Ljava/lang/Integer;", "Landroid/media/SoundPool;", "soundPool", "Landroid/media/SoundPool;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "blankDialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "Ljava/lang/Runnable;", "checkCameraTask", "Ljava/lang/Runnable;", "wavCamera", "autoFinishTask", "checkMode", "Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;", "binding", "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "viewModel$delegate", "getViewModel", "()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "viewModel", "eventType", "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "Landroid/os/CountDownTimer;", "uploadCountDownTimer", "Landroid/os/CountDownTimer;", "courseSubject", "imageFile", "Ljava/io/File;", "uploadMode", "voiceCountDownTimer", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class FaceCheckActivity extends BaseActivity {
    public static final Companion Companion = null;
    public static final String TAG = "FaceCheckActivity";
    private String authToken;
    private final Runnable autoFinishTask;
    private final f binding$delegate;
    private BlankDialog blankDialog;
    private CameraResult cameraResult;
    private BaseCamera cameraUtil;
    private final Runnable checkCameraTask;
    private int checkMode;
    private int courseSubject;
    private int eventType;
    private Integer[] fiveDownTimer;
    private boolean hasPermission;
    private String idNum;
    private File imageFile;
    private int personMode;
    private SoundPool soundPool;
    private long startTime;
    private int streamId;
    private boolean takePictureWhenGetInfo;
    private CountDownTimer uploadCountDownTimer;
    private int uploadMode;
    private String uploadPhotoId;
    private final f viewModel$delegate;
    private CountDownTimer voiceCountDownTimer;
    private int wavCamera;
    private int wavTimer;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcn/mucang/sundial/library/activity/FaceCheckActivity$Companion;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o r1) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.FaceCheckActivity$initUVCCamera$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"cn/mucang/sundial/library/activity/FaceCheckActivity$initUVCCamera$1", "Lcn/mucang/sundial/library/device/CameraResult;", "Lkotlin/v;", "connectSuccess", "()V", "cameraRemoved", "Ljava/io/File;", "file", "takePhotoFinish", "(Ljava/io/File;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C04051 implements CameraResult {
        final /* synthetic */ FaceCheckActivity this$0;

        C04051(FaceCheckActivity r1) {
            this.this$0 = r1;
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void cameraRemoved() {
            FaceCheckActivity.access$setHasPermission$p(this.this$0, false);
            SundialLog.normal("摄像头已移除");
            FaceCheckActivity.access$cancelCountDown(this.this$0);
            FaceCheckActivity.access$checkCamera(this.this$0);
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void connectSuccess() {
            FaceCheckActivity.access$setHasPermission$p(this.this$0, true);
            SundialLog.normal("摄像头连接成功");
            if (this.this$0.isFinishing() == false) goto L5;
            return;
        L5:
            u.e(FaceCheckActivity.access$getCheckCameraTask$p(this.this$0));
            u.h("摄像头连接成功");
            if (FaceCheckActivity.access$getViewModel$p(this.this$0).getInfoReady() == true) goto L8;
        L12:
            FaceCheckActivity.access$setTakePictureWhenGetInfo$p(this.this$0, true);
            ImageView r0 = FaceCheckActivity.access$getBinding$p(this.this$0).previewImg;
            r.d(r0, "binding.previewImg");
            r0.setVisibility(8);
            return;
        L8:
            if (FaceCheckActivity.access$getBlankDialog$p(this.this$0) == null) goto L11;
            BlankDialog r1 = FaceCheckActivity.access$getBlankDialog$p(this.this$0);
            r.c(r1);
            if (r1.isShowing() == true) goto L12;
        L11:
            FaceCheckActivity.access$speakToTakePhoto(this.this$0);
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void takePhotoFinish(final File r2) {
            SundialLog.normal("拍照完成");
            u.f(new FaceCheckActivity$initUVCCamera$1$takePhotoFinish$1(this, r2));
        }
    }

    static {
        Companion = new Companion(null);
    }

    public FaceCheckActivity() {
        this.binding$delegate = new d(TtActivityFaceCheckBinding.class, new FaceCheckActivity$$special$$inlined$viewBinding$1(this));
        this.viewModel$delegate = new l0(v.b(FaceCheckActivityViewModel.class), new FaceCheckActivity$vm$$inlined$viewModels$2(this), new BaseActivity.C04031(this));
        this.personMode = PersonMode.NONE.ordinal();
        this.checkMode = CheckMode.OTHER.ordinal();
        this.eventType = EventType.STUDENT_TRAINING.valueOf();
        this.uploadMode = UploadMode.TERMINAL_TAKE.valueOf();
        this.idNum = "";
        this.authToken = "";
        this.uploadPhotoId = "";
        this.fiveDownTimer = new Integer[]{5, 4, 3, 2, 1};
        this.checkCameraTask = new FaceCheckActivity$checkCameraTask$1(this);
        this.autoFinishTask = new FaceCheckActivity$autoFinishTask$1(this);
    }

    public static final /* synthetic */ void access$cancelCountDown(FaceCheckActivity r0) {
        r0.cancelCountDown();
    }

    public static final /* synthetic */ boolean access$checkCamera(FaceCheckActivity r0) {
        return r0.checkCamera();
    }

    public static final /* synthetic */ PhotoRecord access$createPhotoRecord(FaceCheckActivity r0, String r1) {
        return r0.createPhotoRecord(r1);
    }

    public static final /* synthetic */ TtActivityFaceCheckBinding access$getBinding$p(FaceCheckActivity r0) {
        return r0.getBinding();
    }

    public static final /* synthetic */ BlankDialog access$getBlankDialog$p(FaceCheckActivity r0) {
        return r0.blankDialog;
    }

    public static final /* synthetic */ BaseCamera access$getCameraUtil$p(FaceCheckActivity r0) {
        return r0.cameraUtil;
    }

    public static final /* synthetic */ Runnable access$getCheckCameraTask$p(FaceCheckActivity r0) {
        return r0.checkCameraTask;
    }

    public static final /* synthetic */ int access$getCheckMode$p(FaceCheckActivity r0) {
        return r0.checkMode;
    }

    public static final /* synthetic */ Integer[] access$getFiveDownTimer$p(FaceCheckActivity r0) {
        return r0.fiveDownTimer;
    }

    public static final /* synthetic */ boolean access$getHasPermission$p(FaceCheckActivity r0) {
        return r0.hasPermission;
    }

    public static final /* synthetic */ File access$getImageFile$p(FaceCheckActivity r0) {
        return r0.imageFile;
    }

    public static final /* synthetic */ int access$getPersonMode$p(FaceCheckActivity r0) {
        return r0.personMode;
    }

    public static final /* synthetic */ SoundPool access$getSoundPool$p(FaceCheckActivity r0) {
        return r0.soundPool;
    }

    public static final /* synthetic */ long access$getStartTime$p(FaceCheckActivity r2) {
        return r2.startTime;
    }

    public static final /* synthetic */ int access$getStreamId$p(FaceCheckActivity r0) {
        return r0.streamId;
    }

    public static final /* synthetic */ boolean access$getTakePictureWhenGetInfo$p(FaceCheckActivity r0) {
        return r0.takePictureWhenGetInfo;
    }

    public static final /* synthetic */ int access$getUploadMode$p(FaceCheckActivity r0) {
        return r0.uploadMode;
    }

    public static final /* synthetic */ String access$getUploadPhotoId$p(FaceCheckActivity r0) {
        return r0.uploadPhotoId;
    }

    public static final /* synthetic */ FaceCheckActivityViewModel access$getViewModel$p(FaceCheckActivity r0) {
        return r0.getViewModel();
    }

    public static final /* synthetic */ int access$getWavCamera$p(FaceCheckActivity r0) {
        return r0.wavCamera;
    }

    public static final /* synthetic */ int access$getWavTimer$p(FaceCheckActivity r0) {
        return r0.wavTimer;
    }

    public static final /* synthetic */ void access$handleUploadImageResult(FaceCheckActivity r0, int r1, String r2) {
        r0.handleUploadImageResult(r1, r2);
    }

    public static final /* synthetic */ boolean access$isLogin(FaceCheckActivity r0) {
        return r0.isLogin();
    }

    public static final /* synthetic */ boolean access$isLogout(FaceCheckActivity r0) {
        return r0.isLogout();
    }

    public static final /* synthetic */ void access$setBlankDialog$p(FaceCheckActivity r0, BlankDialog r1) {
        r0.blankDialog = r1;
    }

    public static final /* synthetic */ void access$setCameraUtil$p(FaceCheckActivity r0, BaseCamera r1) {
        r0.cameraUtil = r1;
    }

    public static final /* synthetic */ void access$setCheckMode$p(FaceCheckActivity r0, int r1) {
        r0.checkMode = r1;
    }

    public static final /* synthetic */ void access$setFiveDownTimer$p(FaceCheckActivity r0, Integer[] r1) {
        r0.fiveDownTimer = r1;
    }

    public static final /* synthetic */ void access$setHasPermission$p(FaceCheckActivity r0, boolean r1) {
        r0.hasPermission = r1;
    }

    public static final /* synthetic */ void access$setImageFile$p(FaceCheckActivity r0, File r1) {
        r0.imageFile = r1;
    }

    public static final /* synthetic */ void access$setPersonMode$p(FaceCheckActivity r0, int r1) {
        r0.personMode = r1;
    }

    public static final /* synthetic */ void access$setSoundPool$p(FaceCheckActivity r0, SoundPool r1) {
        r0.soundPool = r1;
    }

    public static final /* synthetic */ void access$setStartTime$p(FaceCheckActivity r0, long r1) {
        r0.startTime = r1;
    }

    public static final /* synthetic */ void access$setStreamId$p(FaceCheckActivity r0, int r1) {
        r0.streamId = r1;
    }

    public static final /* synthetic */ void access$setTakePictureWhenGetInfo$p(FaceCheckActivity r0, boolean r1) {
        r0.takePictureWhenGetInfo = r1;
    }

    public static final /* synthetic */ void access$setUploadMode$p(FaceCheckActivity r0, int r1) {
        r0.uploadMode = r1;
    }

    public static final /* synthetic */ void access$setUploadPhotoId$p(FaceCheckActivity r0, String r1) {
        r0.uploadPhotoId = r1;
    }

    public static final /* synthetic */ void access$setWavCamera$p(FaceCheckActivity r0, int r1) {
        r0.wavCamera = r1;
    }

    public static final /* synthetic */ void access$setWavTimer$p(FaceCheckActivity r0, int r1) {
        r0.wavTimer = r1;
    }

    public static final /* synthetic */ void access$showCompleteLayout(FaceCheckActivity r0) {
        r0.showCompleteLayout();
    }

    public static final /* synthetic */ void access$showErrorLayout(FaceCheckActivity r0) {
        r0.showErrorLayout();
    }

    public static final /* synthetic */ void access$signInOutSuccess(FaceCheckActivity r0) {
        r0.signInOutSuccess();
    }

    public static final /* synthetic */ void access$speakToTakePhoto(FaceCheckActivity r0) {
        r0.speakToTakePhoto();
    }

    public static final /* synthetic */ void access$startCountDown(FaceCheckActivity r0, int r1) {
        r0.startCountDown(r1);
    }

    public static final /* synthetic */ void access$startCountDownUpload(FaceCheckActivity r0, int r1) {
        r0.startCountDownUpload(r1);
    }

    public static final /* synthetic */ void access$takePhoto(FaceCheckActivity r0) {
        r0.takePhoto();
    }

    public static final /* synthetic */ void access$toLoginOrLogout(FaceCheckActivity r0) {
        r0.toLoginOrLogout();
    }

    public static final /* synthetic */ void access$toastCustomMsg(FaceCheckActivity r0, String r1) {
        r0.toastCustomMsg(r1);
    }

    public static final /* synthetic */ void access$updateView(FaceCheckActivity r0, String r1, String r2) {
        r0.updateView(r1, r2);
    }

    public static final /* synthetic */ void access$uploadImage(FaceCheckActivity r0, PhotoRecord r1) {
        r0.uploadImage(r1);
    }

    private final void cancelCountDown() {
        CountDownTimer r0 = this.voiceCountDownTimer;
        if (r0 == null) goto L5;
        r0.cancel();
    L5:
        CountDownTimer r1 = this.uploadCountDownTimer;
        if (r1 == null) goto L9;
        r1.cancel();
        return;
    }

    private final boolean checkCamera() {
        boolean r1 = false;
        if (isFinishing() == false) goto L5;
        return false;
    L5:
        BaseCamera r0 = this.cameraUtil;
        if (r0 == null) goto L8;
        int r2 = r0.cameraCount();
    L9:
        if (r2 <= 0) goto L11;
        r1 = true;
    L11:
        if (r1 == true) goto L13;
        Resources r3 = getResources();
        int r4 = R.string.tt_voice_face_check_fail_no_camera;
        SundialLog.normal(r3.getText(r4));
        u.g(r4);
        String r5 = getString(r4);
        r.d(r5, "getString(R.string.tt_vo…ace_check_fail_no_camera)");
        Tts.speak$default(r5, null, 2, null);
        finish();
    L13:
        return r1;
    L8:
        r2 = 0;
        goto L9
    }

    private final PhotoRecord createPhotoRecord(String r20) {
        CoachInfo r1 = getViewModel().getCoachInfoData();
        if (r1 != null) goto L6;
        SundialManager r2 = SundialManager.getInstance();
        r.d(r2, "SundialManager.getInstance()");
        r1 = r2.getLastCoach();
    L6:
        StudentInfo r3 = getViewModel().getStudentInfoData();
        if (r3 != null) goto L10;
        SundialManager r4 = SundialManager.getInstance();
        r.d(r4, "SundialManager.getInstance()");
        r3 = r4.getLastStudent();
    L10:
        long r5 = 0;
        if (this.personMode != PersonMode.STUDENT.ordinal()) goto L23;
        long r7 = ServerTimeHelper.getServerTime();
        if (isLogin() == false) goto L20;
        if (r7 == 0) goto L18;
    L24:
        long r17 = r7;
        String r8 = "";
        if (this.personMode != PersonMode.COACH.ordinal()) goto L32;
        if (r1 == null) goto L30;
        String r6 = r1.getCoachNo();
        if (r6 == null) goto L30;
        r8 = r6;
    L30:
        long r11 = r5;
    L31:
        String r10 = r8;
        UploadImageManager r9 = UploadImageManager.getInstance();
        int r13 = this.uploadMode;
        int r14 = this.eventType;
        Application r12 = MucangConfig.getContext();
        r.d(r12, "MucangConfig.getContext()");
        PhotoRecord r15 = r9.createPhotoRecord(r10, r11, r13, r14, r20, r12.getResources().getDimensionPixelSize(R.dimen.tt__text_size_water), r17);
        r.d(r15, "UploadImageManager.getIn…ze_water), time\n        )");
        return r15;
    L32:
        if (r3 == null) goto L36;
        String r16 = r3.getStudentNo();
        if (r16 == null) goto L36;
        r8 = r16;
    L36:
        if (r3 == null) goto L38;
        long r18 = r3.getClassroomId();
    L40:
        if (r18 > 0) goto L42;
    L45:
        r5 = r17 / ((long) 1000);
        if (r3 == null) goto L30;
        r3.setClassroomId(r5);
        goto L30
    L42:
        if (this.eventType == EventType.STUDENT_SIGN_IN.valueOf()) goto L45;
        r11 = r18;
        goto L31
    L38:
        r18 = 0;
        goto L40
    L18:
        throw new IllegalArgumentException("获取服务端时间失败");
    L20:
        if (System.currentTimeMillis() < r7) goto L22;
        r7 = System.currentTimeMillis();
        SundialLog.normal("createPhotoRecord：使用系统时间 " + r7);
        goto L24
    L22:
        SundialLog.normal("createPhotoRecord：使用服务端时间 " + r7);
        goto L24
    L23:
        r7 = System.currentTimeMillis();
        goto L24
    }

    private final TtActivityFaceCheckBinding getBinding() {
        return (TtActivityFaceCheckBinding) this.binding$delegate.getValue();
    }

    private final FaceCheckActivityViewModel getViewModel() {
        return (FaceCheckActivityViewModel) this.viewModel$delegate.getValue();
    }

    private final void handleUploadImageResult(int r7, String r8) {
        if (isFinishing() == false) goto L6;
        return;
    L6:
        if (r7 == UploadImageResult.SUCCESS) goto L8;
        boolean r1 = false;
        if (this.checkMode != CheckMode.SIGN_IN.ordinal()) goto L24;
        if (r8 != null) goto L18;
    L19:
        r1 = true;
    L20:
        if (r1 == false) goto L22;
        r8 = getString(R.string.tt_voice_fail_to_upload_picture);
    L22:
        r.d(r8, "if (msg.isNullOrEmpty())…_upload_picture) else msg");
        Tts.speak$default(r8, null, 2, null);
        showErrorLayout();
        return;
    L18:
        if (r8.length() != 0) goto L20;
    L24:
        if (this.checkMode != CheckMode.SIGN_OUT.ordinal()) goto L35;
        GlobalData r9 = GlobalData.INSTANCE;
        r9.incrementSignOutErrorCount(this.personMode);
        if (r9.getSignOutErrorCount(this.personMode) <= 3) goto L28;
        Tts.speak$default("人脸验证失败！是否强制签退？", null, 2, null);
        new FaceCheckFailDialog.Builder(this, true).setContent(new AnonymousClass1(this)).show();
        return;
    L28:
        if (r8 != null) goto L30;
    L31:
        r1 = true;
    L32:
        if (r1 == false) goto L34;
        r8 = getString(R.string.tt_voice_face_check_fail);
    L34:
        r.d(r8, "if (msg.isNullOrEmpty())…face_check_fail) else msg");
        Tts.speak$default(r8, null, 2, null);
        showErrorLayout();
        return;
    L30:
        if (r8.length() != 0) goto L32;
    L35:
        if (r8 != null) goto L37;
    L38:
        r1 = true;
    L39:
        if (r1 == false) goto L41;
        r8 = getString(R.string.tt_voice_face_check_fail);
    L41:
        r.d(r8, "if (msg.isNullOrEmpty())…face_check_fail) else msg");
        Tts.speak$default(r8, null, 2, null);
        showErrorLayout();
        return;
    L37:
        if (r8.length() != 0) goto L39;
    L8:
        if (isLogin() == false) goto L10;
    L13:
        toLoginOrLogout();
        return;
    L10:
        if (isLogout() == true) goto L13;
        setResult(-1);
        finish();
    }

    static /* synthetic */ void handleUploadImageResult$default(FaceCheckActivity r0, int r1, String r2, int r3, Object r4) {
        if ((r3 & 2) == 0) goto L5;
        r2 = null;
    L5:
        r0.handleUploadImageResult(r1, r2);
    }

    private final void initUVCCamera() {
        C04051 r2 = new C04051(this);
        this.cameraResult = r2;
        BaseCamera r0 = SundialDevice.Companion.createCameraUtil(this, r2, getBinding().cameraView, getBinding().cameraLayout, true);
        this.cameraUtil = r0;
        if (r0 == null) goto L5;
        r0.init();
    L5:
        BaseCamera r1 = this.cameraUtil;
        boolean r3 = true;
        if (r1 != null) goto L8;
    L10:
        r3 = false;
    L11:
        this.hasPermission = r3;
        SundialLog.normal("判断摄像头权限：" + this.hasPermission);
        if (this.hasPermission == true) goto L17;
        SundialLog.normal("获取摄像头权限并拍照");
        BaseCamera r4 = this.cameraUtil;
        if (r4 == null) goto L18;
        r4.open();
        return;
    L18:
        return;
    L17:
        return;
    L8:
        if (r1.hasPermission() != true) goto L10;
        goto L10
    }

    private final boolean isLogin() {
        if (this.eventType != EventType.COACH_SIGN_IN.valueOf()) goto L5;
    L8:
        return true;
    L5:
        if (this.eventType == EventType.STUDENT_SIGN_IN.valueOf()) goto L8;
        return false;
    }

    private final boolean isLogout() {
        if (this.eventType != EventType.COACH_SIGN_OUT.valueOf()) goto L5;
    L8:
        return true;
    L5:
        if (this.eventType == EventType.STUDENT_SIGN_OUT.valueOf()) goto L8;
        return false;
    }

    private final void observeForLoginLogoutIfNeed() {
        int r0 = this.personMode;
        PersonMode r1 = PersonMode.COACH;
        if (r0 == r1.ordinal()) goto L5;
    L7:
        int r2 = this.personMode;
        PersonMode r3 = PersonMode.STUDENT;
        if (r2 != r3.ordinal()) goto L13;
        if (this.eventType != EventType.STUDENT_SIGN_IN.valueOf()) goto L13;
        LiveBus.Companion.with(StudentLoginResponseEvent.class).q(this, new C04082(this));
        return;
    L13:
        if (this.personMode != r1.ordinal()) goto L18;
        if (this.eventType != EventType.COACH_SIGN_OUT.valueOf()) goto L18;
        LiveBus.Companion.with(CoachLogoutResponseEvent.class).q(this, new AnonymousClass3(this));
        return;
    L18:
        if (this.personMode == r3.ordinal()) goto L20;
        return;
    L20:
        if (this.eventType != EventType.STUDENT_SIGN_OUT.valueOf()) goto L27;
        LiveBus.Companion.with(StudentLogoutResponseEvent.class).q(this, new AnonymousClass4(this));
        return;
    L27:
        return;
    L5:
        if (this.eventType != EventType.COACH_SIGN_IN.valueOf()) goto L7;
        LiveBus.Companion.with(CoachLoginResponseEvent.class).q(this, new C04071(this));
    }

    private final void showCompleteLayout() {
        LinearLayout r0 = getBinding().imageErrorLayout;
        r.d(r0, "binding.imageErrorLayout");
        r0.setVisibility(0);
        TextView r1 = getBinding().ok;
        r.d(r1, "binding.ok");
        r1.setVisibility(0);
        TextView r2 = getBinding().exit;
        r.d(r2, "binding.exit");
        r2.setVisibility(8);
    }

    private final void showErrorLayout() {
        LinearLayout r0 = getBinding().imageErrorLayout;
        r.d(r0, "binding.imageErrorLayout");
        r0.setVisibility(0);
        TextView r1 = getBinding().ok;
        r.d(r1, "binding.ok");
        r1.setVisibility(8);
        TextView r2 = getBinding().exit;
        r.d(r2, "binding.exit");
        r2.setVisibility(0);
        u.d(this.autoFinishTask, 30000);
    }

    private final void signInOutSuccess() {
        GlobalData.INSTANCE.clearSignOutErrorCount(this.personMode);
        setResult(-1);
        finish();
    }

    private final void speakToTakePhoto() {
        cancelCountDown();
        Result.a r0 = Result.Companion;     // Catch: Throwable -> L24
        LinearLayout r1 = getBinding().imageErrorLayout;     // Catch: Throwable -> L24
        r.d(r1, "binding.imageErrorLayout");     // Catch: Throwable -> L24
        r1.setVisibility(8);     // Catch: Throwable -> L24
        u.e(this.autoFinishTask);     // Catch: Throwable -> L24
        ImageView r2 = getBinding().previewImg;     // Catch: Throwable -> L24
        r.d(r2, "binding.previewImg");     // Catch: Throwable -> L24
        r2.setVisibility(8);     // Catch: Throwable -> L24
        BaseCamera r3 = this.cameraUtil;     // Catch: Throwable -> L24
        if (r3 != null) goto L6;
    L8:
        boolean r4 = false;
    L9:
        if (r4 == false) goto L11;
    L15:
        SundialLog.normal("无语音检测摄像头数量");     // Catch: Throwable -> L24
        if (isFinishing() == false) goto L18;
    L22:
        Result.m139constructorimpl(kotlin.v.f15822a);     // Catch: Throwable -> L24
        return;
    L18:
        if (checkCamera() == false) goto L22;
        BaseCamera r5 = this.cameraUtil;     // Catch: Throwable -> L24
        if (r5 == null) goto L22;
        r5.takePhoto();     // Catch: Throwable -> L24
        goto L22
    L11:
        if (isLogin() == false) goto L13;
    L14:
        SundialManager r6 = SundialManager.getInstance();     // Catch: Throwable -> L24
        r.d(r6, "SundialManager.getInstance()");     // Catch: Throwable -> L24
        final int r7 = r6.getLogInOutSecond();     // Catch: Throwable -> L24
        String r8 = new ConvertNum(r7).convert();     // Catch: Throwable -> L24
        int r9 = R.string.tt_voice_take_pic;     // Catch: Throwable -> L24
        SundialLog.normal(getString(r9, new Object[]{r8}));     // Catch: Throwable -> L24
        String r10 = getString(r9, new Object[]{r8});     // Catch: Throwable -> L24
        r.d(r10, "getString(R.string.tt_voice_take_pic, delayNum)");     // Catch: Throwable -> L24
        Tts.speak(r10, new FaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1(r7, this));     // Catch: Throwable -> L24
        goto L22
    L13:
        if (isLogout() == false) goto L15;
    L6:
        if (r3.isolatePreviewPage() != true) goto L8;
        r4 = true;
    L24:
        th = move-exception;
        Result.a r11 = Result.Companion;
        Result.m139constructorimpl(k.a(th));
    }

    private final void startCountDown(final int r10) {
        TextView r0 = getBinding().tvDelayNum;
        r.d(r0, "binding.tvDelayNum");
        r0.setText(String.valueOf(r10));
        LinearLayout r1 = getBinding().rlLayout;
        r.d(r1, "binding.rlLayout");
        r1.setVisibility(0);
        final long r5 = (r10 * 1000) + 100;
        final long r7 = 1000;
        this.voiceCountDownTimer = new CountDownTimerC04131(this, r10, r5, r7).start();
    }

    private final void startCountDownUpload(final int r9) {
        CountDownTimer r0 = this.uploadCountDownTimer;
        if (r0 == null) goto L5;
        r0.cancel();
    L5:
        final long r4 = (r9 * 1000) + 100;
        final long r6 = 1000;
        this.uploadCountDownTimer = new CountDownTimerC04141(this, r9, r4, r6).start();
    }

    private final void takePhoto() {
        if (this.takePictureWhenGetInfo == false) goto L6;
        this.takePictureWhenGetInfo = false;
        speakToTakePhoto();
        return;
    }

    private final void toLoginOrLogout() {
        if (isLogin() == false) goto L9;
        if (this.personMode != PersonMode.COACH.ordinal()) goto L7;
        LoginUtil.INSTANCE.executeCoachLogin(this, getViewModel().getCoachInfoData());
        return;
    L7:
        LoginUtil.INSTANCE.executeStudentLogin(this, getViewModel().getStudentInfoData());
        return;
    L9:
        if (isLogout() == false) goto L14;
        LoginUtil.INSTANCE.executeSignOut(this, this.personMode);
        return;
    }

    private final void toastCustomMsg(String r3) {
        if (r3.length() <= 15) goto L5;
        u.j(r3);
        return;
    L5:
        u.h(r3);
    }

    private final void updateTitle() {
        TextView r0 = getBinding().title;
        r.d(r0, "binding.title");
        int r1 = this.personMode;
        PersonMode r2 = PersonMode.COACH;
        if (r1 != r2.ordinal()) goto L8;
        if (this.checkMode != CheckMode.SIGN_IN.ordinal()) goto L8;
        String r3 = "教练签到验证";
    L23:
        r0.setText(r3);
        return;
    L8:
        if (this.personMode == r2.ordinal()) goto L10;
    L12:
        int r4 = this.personMode;
        PersonMode r5 = PersonMode.STUDENT;
        if (r4 != r5.ordinal()) goto L18;
        if (this.checkMode != CheckMode.SIGN_IN.ordinal()) goto L18;
        r3 = "签到人脸验证";
    L18:
        if (this.personMode == r5.ordinal()) goto L20;
    L22:
        r3 = "人脸验证";
        goto L23
    L20:
        if (this.checkMode != CheckMode.SIGN_OUT.ordinal()) goto L22;
        r3 = "签退人脸验证";
        goto L23
    L10:
        if (this.checkMode != CheckMode.SIGN_OUT.ordinal()) goto L12;
        r3 = "教练签退验证";
        goto L23
    }

    private final void updateView(String r5, String r6) {
        TtActivityFaceCheckBinding r0 = getBinding();
        TextView r1 = r0.name;
        r.d(r1, Constant.PROTOCOL_WEBVIEW_NAME);
        int r2 = this.personMode;
        if (r2 != PersonMode.COACH.ordinal()) goto L6;
        String r7 = "教练员：" + r5;
    L9:
        r1.setText(r7);
        ImageView r8 = r0.previewImg;
        r.d(r8, "previewImg");
        r8.setVisibility(8);
        Glide.with(this).load(r6).into(r0.avatar);
        return;
    L6:
        if (r2 != PersonMode.STUDENT.ordinal()) goto L8;
        r7 = "学员：" + r5;
        goto L9
    L8:
        r7 = null;
        goto L9
    }

    private final void uploadImage(final File r3) {
        SundialLog.normal("上传图片：" + r3.getAbsoluteFile());
        showLoadingDialog("", false);
        MucangConfig.f(new RunnableC04151(this, r3));
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        TakePhotoManager.setTakingPhoto(true);
        Intent r1 = getIntent();
        if (r1 == null) goto L13;
        this.personMode = r1.getIntExtra(ExtraKey.personMode, this.personMode);
        this.checkMode = r1.getIntExtra(ExtraKey.checkMode, this.checkMode);
        this.uploadMode = r1.getIntExtra(ExtraKey.uploadMode, this.uploadMode);
        this.eventType = r1.getIntExtra(ExtraKey.uploadEventType, this.eventType);
        String r2 = r1.getStringExtra(ExtraKey.idNum);
        if (r2 != null) goto L8;
        r2 = this.idNum;
    L8:
        this.idNum = r2;
        String r3 = r1.getStringExtra(ExtraKey.authToken);
        if (r3 != null) goto L12;
        r3 = this.authToken;
    L12:
        this.authToken = r3;
        this.courseSubject = r1.getIntExtra(ExtraKey.courseSubject, this.courseSubject);
    L13:
        LiveBus.Companion.with(UploadImageEvent.class).q(this, new AnonymousClass2(this));
        observeForLoginLogoutIfNeed();
        SoundPool r4 = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).build()).build();
        this.soundPool = r4;
        int r5 = 0;
        if (r4 == null) goto L16;
        int r6 = r4.load(this, R.raw.wav_camera, 1);
    L17:
        this.wavCamera = r6;
        SoundPool r7 = this.soundPool;
        if (r7 == null) goto L20;
        int r8 = r7.load(this, R.raw.raw_hint, 1);
    L21:
        this.wavTimer = r8;
        Integer[] r9 = this.fiveDownTimer;
        SoundPool r10 = this.soundPool;
        if (r10 == null) goto L24;
        int r11 = r10.load(this, R.raw.tt__5, 1);
    L25:
        r9[0] = Integer.valueOf(r11);
        Integer[] r12 = this.fiveDownTimer;
        SoundPool r13 = this.soundPool;
        if (r13 == null) goto L28;
        int r14 = r13.load(this, R.raw.tt__4, 1);
    L29:
        r12[1] = Integer.valueOf(r14);
        Integer[] r15 = this.fiveDownTimer;
        SoundPool r16 = this.soundPool;
        if (r16 == null) goto L32;
        int r17 = r16.load(this, R.raw.tt__3, 1);
    L33:
        r15[2] = Integer.valueOf(r17);
        Integer[] r18 = this.fiveDownTimer;
        SoundPool r19 = this.soundPool;
        if (r19 == null) goto L36;
        int r20 = r19.load(this, R.raw.tt__2, 1);
    L37:
        r18[3] = Integer.valueOf(r20);
        Integer[] r21 = this.fiveDownTimer;
        SoundPool r22 = this.soundPool;
        if (r22 == null) goto L40;
        r5 = r22.load(this, R.raw.tt__1, 1);
    L40:
        r21[4] = Integer.valueOf(r5);
        return;
    L36:
        r20 = 0;
        goto L37
    L32:
        r17 = 0;
        goto L33
    L28:
        r14 = 0;
        goto L29
    L24:
        r11 = 0;
        goto L25
    L20:
        r8 = 0;
        goto L21
    L16:
        r6 = 0;
        goto L17
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initViewModel() {
        super.initViewModel();
        updateTitle();
        getViewModel().getUserData().h(this, new C04061(this));
        FaceCheckActivityViewModel.getInfo$default(getViewModel(), this.personMode, this.checkMode, this.idNum, this.authToken, this.courseSubject, null, 32, null);
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public boolean isHiddenSelfCheckBtn() {
        return true;
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if ((System.currentTimeMillis() - this.startTime) < 10000) goto L5;
        super.onBackPressed();
        return;
    L5:
        SundialLog.normal("点击返回键，剩余时间：" + ((System.currentTimeMillis() - this.startTime) / ((long) 1000)) + 's');
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle r3) {
        initUVCCamera();
        getBinding().exit.setOnClickListener(new ViewOnClickListenerC04091(this));
        getBinding().retry.setOnClickListener(new ViewOnClickListenerC04102(this));
        getBinding().ok.setOnClickListener(new ViewOnClickListenerC04113(this));
        TextView r4 = getBinding().tvDelayNum;
        r.d(r4, "binding.tvDelayNum");
        SundialManager r0 = SundialManager.getInstance();
        r.d(r0, "SundialManager.getInstance()");
        r4.setText(String.valueOf(r0.getLogInOutSecond()));
        LinearLayout r5 = getBinding().rlLayout;
        r.d(r5, "binding.rlLayout");
        r5.setVisibility(4);
        LinearLayout r6 = getBinding().imageErrorLayout;
        r.d(r6, "binding.imageErrorLayout");
        r6.setVisibility(8);
        getBaseBinding().version.setOnClickListener(ViewOnClickListenerC04124.INSTANCE);
        RelativeLayout r7 = getBinding().getRoot();
        r.d(r7, "binding.root");
        return r7;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SoundPool r0 = this.soundPool;
        if (r0 == null) goto L5;
        r0.release();
    L5:
        BaseCamera r1 = this.cameraUtil;
        if (r1 == null) goto L8;
        r1.release();
    L8:
        u.e(this.autoFinishTask);
        TakePhotoManager.setTakingPhoto(false);
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        StringBuilder r0 = new StringBuilder();
        r0.append("离开");
        if (isLogin() == false) goto L5;
        String r1 = "签到";
    L6:
        r0.append(r1);
        r0.append("拍照页面");
        SundialLog.normal(r0.toString());
        if (this.hasPermission == false) goto L11;
        SundialLog.normal("关闭摄像头");
        BaseCamera r2 = this.cameraUtil;
        if (r2 == null) goto L12;
        r2.pause();
    L12:
        cancelCountDown();
        u.e(this.checkCameraTask);
        return;
    L11:
        SundialLog.normal("关闭摄像头无权限");
        goto L12
    L5:
        r1 = "签退";
        goto L6
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.startTime = System.currentTimeMillis();
        StringBuilder r0 = new StringBuilder();
        r0.append("打开");
        if (isLogin() == false) goto L5;
        String r1 = "签到";
    L6:
        r0.append(r1);
        r0.append("拍照页面");
        SundialLog.normal(r0.toString());
        if (this.hasPermission == false) goto L12;
        SundialLog.normal("打开摄像头");
        BaseCamera r2 = this.cameraUtil;
        if (r2 == null) goto L11;
        r2.open();
    L11:
        u.d(this.checkCameraTask, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        return;
    L12:
        SundialLog.normal("打开摄像头无权限");
        return;
    L5:
        r1 = "签退";
        goto L6
    }

    public static final /* synthetic */ void access$uploadImage(FaceCheckActivity r0, File r1) {
        r0.uploadImage(r1);
    }

    private final void uploadImage(PhotoRecord r3) {
        String r0 = r3.getPhotoId();
        r.d(r0, "photoRecord.photoId");
        this.uploadPhotoId = r0;
        if (this.personMode != PersonMode.STUDENT.ordinal()) goto L5;
        UploadImageManager.getInstance().uploadPhotoByClassroom(r3);
        return;
    L5:
        UploadImageManager.getInstance().uploadPhoto(r3);
    }
}
