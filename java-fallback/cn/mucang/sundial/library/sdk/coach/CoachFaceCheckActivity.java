package cn.mucang.sundial.library.sdk.coach;

import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
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
import cn.mucang.sundial.library.databinding.TtActivityCoachFaceCheckBinding;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ClickController;
import cn.mucang.sundial.library.util.ConvertNum;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.SubjectUtil;
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
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\br\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0007J7\u0010\u0011\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0007J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0007J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0007J\u000f\u0010\u001c\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u000bH\u0003¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u001fH\u0003¢\u0006\u0004\b$\u0010'J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000bH\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0005H\u0002¢\u0006\u0004\b*\u0010\u0007J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0013H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0013H\u0002¢\u0006\u0004\b.\u0010-J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0007J\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u0007J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0007J\u0019\u00105\u001a\u0002042\b\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0005H\u0014¢\u0006\u0004\b7\u0010\u0007J\u000f\u00108\u001a\u00020\u0005H\u0014¢\u0006\u0004\b8\u0010\u0007J\u000f\u00109\u001a\u00020\u0005H\u0014¢\u0006\u0004\b9\u0010\u0007R\u0016\u0010:\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010;R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0016\u0010>\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010;R\u001d\u0010D\u001a\u00020?8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0016\u0010F\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010J\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010IR\u001c\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00130K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u001d\u0010T\u001a\u00020P8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010A\u001a\u0004\bR\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0018\u0010Y\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0016\u0010[\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010;R\u0016\u0010\\\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010IR\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010`\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010;R\u0018\u0010b\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010d\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010GR\u0016\u0010e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010;R\u0018\u0010f\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010WR\u0016\u0010g\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010i\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010;R\u0018\u0010k\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010m\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010IR\u0016\u0010o\u001a\u00020n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0016\u0010q\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010h¨\u0006s"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;", "Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;", "", "checkCamera", "()Z", "Lkotlin/v;", "observeForLoginLogoutIfNeed", "()V", "signInOutSuccess", "initUVCCamera", "updateTitle", "", "nameStr", "avatarStr", "idCard", "driveType", "filingNo", "updateView", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "code", SocialConstants.PARAM_SEND_MSG, "handleUploadImageResult", "(ILjava/lang/String;)V", "toLoginOrLogout", "showErrorLayout", "showCompleteLayout", "speakToTakePhoto", "isLogin", "isLogout", "path", "Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "createPhotoRecord", "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "Ljava/io/File;", "file", "uploadImage", "(Ljava/io/File;)V", "photoRecord", "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V", "toastCustomMsg", "(Ljava/lang/String;)V", "takePhoto", "delay", "startCountDown", "(I)V", "startCountDownUpload", "cancelCountDown", "initData", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "onDestroy", "courseSubject", "I", "checkMode", "personMode", "eventType", "Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;", "binding", "Ljava/lang/Runnable;", "autoFinishTask", "Ljava/lang/Runnable;", "xyToken", "Ljava/lang/String;", "idNum", "", "fiveDownTimer", "[Ljava/lang/Integer;", "imageFile", "Ljava/io/File;", "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "viewModel$delegate", "getViewModel", "()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "viewModel", "Landroid/os/CountDownTimer;", "uploadCountDownTimer", "Landroid/os/CountDownTimer;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "blankDialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "uploadMode", "uploadPhotoId", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "wavCamera", "Landroid/media/SoundPool;", "soundPool", "Landroid/media/SoundPool;", "checkCameraTask", "streamId", "voiceCountDownTimer", "hasPermission", "Z", "wavTimer", "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "authToken", "", Constant.START_TIME, "J", "takePictureWhenGetInfo", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CoachFaceCheckActivity extends TopBaseActivity {
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
    private String xyToken;

    /* JADX INFO: renamed from: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$initUVCCamera$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"cn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1", "Lcn/mucang/sundial/library/device/CameraResult;", "Lkotlin/v;", "connectSuccess", "()V", "cameraRemoved", "Ljava/io/File;", "file", "takePhotoFinish", "(Ljava/io/File;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C04421 implements CameraResult {
        final /* synthetic */ CoachFaceCheckActivity this$0;

        C04421(CoachFaceCheckActivity r1) {
            this.this$0 = r1;
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void cameraRemoved() {
            CoachFaceCheckActivity.access$setHasPermission$p(this.this$0, false);
            SundialLog.normal("摄像头已移除");
            CoachFaceCheckActivity.access$cancelCountDown(this.this$0);
            CoachFaceCheckActivity.access$checkCamera(this.this$0);
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void connectSuccess() {
            CoachFaceCheckActivity.access$setHasPermission$p(this.this$0, true);
            SundialLog.normal("摄像头连接成功");
            if (this.this$0.isFinishing() == false) goto L5;
            return;
        L5:
            u.e(CoachFaceCheckActivity.access$getCheckCameraTask$p(this.this$0));
            u.h("摄像头连接成功");
            if (CoachFaceCheckActivity.access$getViewModel$p(this.this$0).getInfoReady() == true) goto L8;
        L12:
            CoachFaceCheckActivity.access$setTakePictureWhenGetInfo$p(this.this$0, true);
            ImageView r0 = CoachFaceCheckActivity.access$getBinding$p(this.this$0).previewImg;
            r.d(r0, "binding.previewImg");
            r0.setVisibility(8);
            return;
        L8:
            if (CoachFaceCheckActivity.access$getBlankDialog$p(this.this$0) == null) goto L11;
            BlankDialog r1 = CoachFaceCheckActivity.access$getBlankDialog$p(this.this$0);
            r.c(r1);
            if (r1.isShowing() == true) goto L12;
        L11:
            CoachFaceCheckActivity.access$speakToTakePhoto(this.this$0);
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void takePhotoFinish(final File r2) {
            SundialLog.normal("拍照完成");
            u.f(new CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1(this, r2));
        }
    }

    public CoachFaceCheckActivity() {
        this.binding$delegate = new d(TtActivityCoachFaceCheckBinding.class, new CoachFaceCheckActivity$$special$$inlined$viewBinding$1(this));
        this.viewModel$delegate = new l0(v.b(FaceCheckActivityViewModel.class), new CoachFaceCheckActivity$vm$$inlined$viewModels$2(this), new TopBaseActivity.AnonymousClass1(this));
        this.personMode = PersonMode.NONE.ordinal();
        this.checkMode = CheckMode.OTHER.ordinal();
        this.eventType = EventType.STUDENT_TRAINING.valueOf();
        this.uploadMode = UploadMode.TERMINAL_TAKE.valueOf();
        this.idNum = "";
        this.authToken = "";
        this.xyToken = "";
        this.uploadPhotoId = "";
        this.fiveDownTimer = new Integer[]{5, 4, 3, 2, 1};
        this.checkCameraTask = new CoachFaceCheckActivity$checkCameraTask$1(this);
        this.autoFinishTask = new CoachFaceCheckActivity$autoFinishTask$1(this);
    }

    public static final /* synthetic */ void access$cancelCountDown(CoachFaceCheckActivity r0) {
        r0.cancelCountDown();
    }

    public static final /* synthetic */ boolean access$checkCamera(CoachFaceCheckActivity r0) {
        return r0.checkCamera();
    }

    public static final /* synthetic */ PhotoRecord access$createPhotoRecord(CoachFaceCheckActivity r0, String r1) {
        return r0.createPhotoRecord(r1);
    }

    public static final /* synthetic */ TtActivityCoachFaceCheckBinding access$getBinding$p(CoachFaceCheckActivity r0) {
        return r0.getBinding();
    }

    public static final /* synthetic */ BlankDialog access$getBlankDialog$p(CoachFaceCheckActivity r0) {
        return r0.blankDialog;
    }

    public static final /* synthetic */ BaseCamera access$getCameraUtil$p(CoachFaceCheckActivity r0) {
        return r0.cameraUtil;
    }

    public static final /* synthetic */ Runnable access$getCheckCameraTask$p(CoachFaceCheckActivity r0) {
        return r0.checkCameraTask;
    }

    public static final /* synthetic */ int access$getCheckMode$p(CoachFaceCheckActivity r0) {
        return r0.checkMode;
    }

    public static final /* synthetic */ Integer[] access$getFiveDownTimer$p(CoachFaceCheckActivity r0) {
        return r0.fiveDownTimer;
    }

    public static final /* synthetic */ boolean access$getHasPermission$p(CoachFaceCheckActivity r0) {
        return r0.hasPermission;
    }

    public static final /* synthetic */ File access$getImageFile$p(CoachFaceCheckActivity r0) {
        return r0.imageFile;
    }

    public static final /* synthetic */ int access$getPersonMode$p(CoachFaceCheckActivity r0) {
        return r0.personMode;
    }

    public static final /* synthetic */ SoundPool access$getSoundPool$p(CoachFaceCheckActivity r0) {
        return r0.soundPool;
    }

    public static final /* synthetic */ long access$getStartTime$p(CoachFaceCheckActivity r2) {
        return r2.startTime;
    }

    public static final /* synthetic */ int access$getStreamId$p(CoachFaceCheckActivity r0) {
        return r0.streamId;
    }

    public static final /* synthetic */ boolean access$getTakePictureWhenGetInfo$p(CoachFaceCheckActivity r0) {
        return r0.takePictureWhenGetInfo;
    }

    public static final /* synthetic */ int access$getUploadMode$p(CoachFaceCheckActivity r0) {
        return r0.uploadMode;
    }

    public static final /* synthetic */ String access$getUploadPhotoId$p(CoachFaceCheckActivity r0) {
        return r0.uploadPhotoId;
    }

    public static final /* synthetic */ FaceCheckActivityViewModel access$getViewModel$p(CoachFaceCheckActivity r0) {
        return r0.getViewModel();
    }

    public static final /* synthetic */ int access$getWavCamera$p(CoachFaceCheckActivity r0) {
        return r0.wavCamera;
    }

    public static final /* synthetic */ int access$getWavTimer$p(CoachFaceCheckActivity r0) {
        return r0.wavTimer;
    }

    public static final /* synthetic */ void access$handleUploadImageResult(CoachFaceCheckActivity r0, int r1, String r2) {
        r0.handleUploadImageResult(r1, r2);
    }

    public static final /* synthetic */ boolean access$isLogin(CoachFaceCheckActivity r0) {
        return r0.isLogin();
    }

    public static final /* synthetic */ boolean access$isLogout(CoachFaceCheckActivity r0) {
        return r0.isLogout();
    }

    public static final /* synthetic */ void access$setBlankDialog$p(CoachFaceCheckActivity r0, BlankDialog r1) {
        r0.blankDialog = r1;
    }

    public static final /* synthetic */ void access$setCameraUtil$p(CoachFaceCheckActivity r0, BaseCamera r1) {
        r0.cameraUtil = r1;
    }

    public static final /* synthetic */ void access$setCheckMode$p(CoachFaceCheckActivity r0, int r1) {
        r0.checkMode = r1;
    }

    public static final /* synthetic */ void access$setFiveDownTimer$p(CoachFaceCheckActivity r0, Integer[] r1) {
        r0.fiveDownTimer = r1;
    }

    public static final /* synthetic */ void access$setHasPermission$p(CoachFaceCheckActivity r0, boolean r1) {
        r0.hasPermission = r1;
    }

    public static final /* synthetic */ void access$setImageFile$p(CoachFaceCheckActivity r0, File r1) {
        r0.imageFile = r1;
    }

    public static final /* synthetic */ void access$setPersonMode$p(CoachFaceCheckActivity r0, int r1) {
        r0.personMode = r1;
    }

    public static final /* synthetic */ void access$setSoundPool$p(CoachFaceCheckActivity r0, SoundPool r1) {
        r0.soundPool = r1;
    }

    public static final /* synthetic */ void access$setStartTime$p(CoachFaceCheckActivity r0, long r1) {
        r0.startTime = r1;
    }

    public static final /* synthetic */ void access$setStreamId$p(CoachFaceCheckActivity r0, int r1) {
        r0.streamId = r1;
    }

    public static final /* synthetic */ void access$setTakePictureWhenGetInfo$p(CoachFaceCheckActivity r0, boolean r1) {
        r0.takePictureWhenGetInfo = r1;
    }

    public static final /* synthetic */ void access$setUploadMode$p(CoachFaceCheckActivity r0, int r1) {
        r0.uploadMode = r1;
    }

    public static final /* synthetic */ void access$setUploadPhotoId$p(CoachFaceCheckActivity r0, String r1) {
        r0.uploadPhotoId = r1;
    }

    public static final /* synthetic */ void access$setWavCamera$p(CoachFaceCheckActivity r0, int r1) {
        r0.wavCamera = r1;
    }

    public static final /* synthetic */ void access$setWavTimer$p(CoachFaceCheckActivity r0, int r1) {
        r0.wavTimer = r1;
    }

    public static final /* synthetic */ void access$showCompleteLayout(CoachFaceCheckActivity r0) {
        r0.showCompleteLayout();
    }

    public static final /* synthetic */ void access$showErrorLayout(CoachFaceCheckActivity r0) {
        r0.showErrorLayout();
    }

    public static final /* synthetic */ void access$signInOutSuccess(CoachFaceCheckActivity r0) {
        r0.signInOutSuccess();
    }

    public static final /* synthetic */ void access$speakToTakePhoto(CoachFaceCheckActivity r0) {
        r0.speakToTakePhoto();
    }

    public static final /* synthetic */ void access$startCountDown(CoachFaceCheckActivity r0, int r1) {
        r0.startCountDown(r1);
    }

    public static final /* synthetic */ void access$startCountDownUpload(CoachFaceCheckActivity r0, int r1) {
        r0.startCountDownUpload(r1);
    }

    public static final /* synthetic */ void access$takePhoto(CoachFaceCheckActivity r0) {
        r0.takePhoto();
    }

    public static final /* synthetic */ void access$toLoginOrLogout(CoachFaceCheckActivity r0) {
        r0.toLoginOrLogout();
    }

    public static final /* synthetic */ void access$toastCustomMsg(CoachFaceCheckActivity r0, String r1) {
        r0.toastCustomMsg(r1);
    }

    public static final /* synthetic */ void access$updateView(CoachFaceCheckActivity r0, String r1, String r2, String r3, String r4, String r5) {
        r0.updateView(r1, r2, r3, r4, r5);
    }

    public static final /* synthetic */ void access$uploadImage(CoachFaceCheckActivity r0, PhotoRecord r1) {
        r0.uploadImage(r1);
    }

    private final void cancelCountDown() {
        TextView r0 = getBinding().tvHint;
        r.d(r0, "binding.tvHint");
        r0.setText("");
        CountDownTimer r1 = this.voiceCountDownTimer;
        if (r1 == null) goto L5;
        r1.cancel();
    L5:
        CountDownTimer r2 = this.uploadCountDownTimer;
        if (r2 == null) goto L9;
        r2.cancel();
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

    private final PhotoRecord createPhotoRecord(String r17) {
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
        String r5 = "";
        long r6 = 0;
        if (this.personMode != PersonMode.COACH.ordinal()) goto L17;
        if (r1 == null) goto L16;
        String r7 = r1.getCoachNo();
        if (r7 == null) goto L16;
        r5 = r7;
    L16:
        String r9 = r5;
        long r10 = r6;
    L33:
        UploadImageManager r8 = UploadImageManager.getInstance();
        int r12 = this.uploadMode;
        int r13 = this.eventType;
        Application r11 = MucangConfig.getContext();
        r.d(r11, "MucangConfig.getContext()");
        PhotoRecord r14 = r8.createPhotoRecord(r9, r10, r12, r13, r17, r11.getResources().getDimensionPixelSize(R.dimen.tt__text_size_water));
        r.d(r14, "UploadImageManager.getIn…ext_size_water)\n        )");
        return r14;
    L17:
        if (r3 == null) goto L21;
        String r15 = r3.getStudentNo();
        if (r15 == null) goto L21;
        r5 = r15;
    L21:
        if (r3 == null) goto L23;
        long r16 = r3.getClassroomId();
    L25:
        if (r16 > 0) goto L27;
    L30:
        r6 = System.currentTimeMillis() / ((long) 1000);
        if (r3 == null) goto L16;
        r3.setClassroomId(r6);
        goto L16
    L27:
        if (this.eventType == EventType.STUDENT_SIGN_IN.valueOf()) goto L30;
        r10 = r16;
        r9 = r5;
        goto L33
    L23:
        r16 = 0;
        goto L25
    }

    private final TtActivityCoachFaceCheckBinding getBinding() {
        return (TtActivityCoachFaceCheckBinding) this.binding$delegate.getValue();
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

    static /* synthetic */ void handleUploadImageResult$default(CoachFaceCheckActivity r0, int r1, String r2, int r3, Object r4) {
        if ((r3 & 2) == 0) goto L5;
        r2 = null;
    L5:
        r0.handleUploadImageResult(r1, r2);
    }

    private final void initUVCCamera() {
        C04421 r2 = new C04421(this);
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
        LiveBus.Companion.with(StudentLoginResponseEvent.class).q(this, new AnonymousClass2(this));
        return;
    L13:
        if (this.personMode != r1.ordinal()) goto L18;
        if (this.eventType != EventType.COACH_SIGN_OUT.valueOf()) goto L18;
        LiveBus.Companion.with(CoachLogoutResponseEvent.class).q(this, new C04453(this));
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
        LiveBus.Companion.with(CoachLoginResponseEvent.class).q(this, new C04441(this));
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
        getBinding().exit.setOnClickListener(new ViewOnClickListenerC04501(this));
        u.e(this.autoFinishTask);
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
        Tts.speak(r10, new CoachFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1(r7, this));     // Catch: Throwable -> L24
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
        this.voiceCountDownTimer = new CountDownTimerC04511(this, r10, r5, r7).start();
    }

    private final void startCountDownUpload(final int r9) {
        CountDownTimer r0 = this.uploadCountDownTimer;
        if (r0 == null) goto L5;
        r0.cancel();
    L5:
        final long r4 = (r9 * 1000) + 100;
        final long r6 = 1000;
        this.uploadCountDownTimer = new CountDownTimerC04521(this, r9, r4, r6).start();
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
        TextView r0 = getBinding().tvHint;
        r.d(r0, "binding.tvHint");
        r0.setText(r3);
        if (r3.length() <= 15) goto L5;
        u.j(r3);
        return;
    L5:
        u.h(r3);
    }

    private final void updateTitle() {
        TextView r0 = getBinding().titleIv;
        r.d(r0, "binding.titleIv");
        int r1 = this.personMode;
        PersonMode r2 = PersonMode.COACH;
        if (r1 != r2.ordinal()) goto L8;
        if (this.checkMode != CheckMode.SIGN_IN.ordinal()) goto L8;
        String r3 = "教练签到";
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
        r3 = "学员签到";
    L18:
        if (this.personMode == r5.ordinal()) goto L20;
    L22:
        r3 = "人脸验证";
        goto L23
    L20:
        if (this.checkMode != CheckMode.SIGN_OUT.ordinal()) goto L22;
        r3 = "学员签退";
        goto L23
    L10:
        if (this.checkMode != CheckMode.SIGN_OUT.ordinal()) goto L12;
        r3 = "教练签退";
        goto L23
    }

    private final void updateView(String r7, String r8, String r9, String r10, String r11) {
        TtActivityCoachFaceCheckBinding r0 = getBinding();
        TextView r1 = r0.nameTip;
        r.d(r1, "nameTip");
        int r2 = this.personMode;
        PersonMode r3 = PersonMode.COACH;
        if (r2 != r3.ordinal()) goto L6;
        String r4 = "教练员姓名";
    L9:
        r1.setText(r4);
        TextView r5 = r0.name;
        r.d(r5, Constant.PROTOCOL_WEBVIEW_NAME);
        r5.setText(r7);
        ImageView r12 = r0.previewImg;
        r.d(r12, "previewImg");
        r12.setVisibility(8);
        TextView r13 = r0.tvCardId;
        r.d(r13, "tvCardId");
        r13.setText(KtxsKt.mask(r9, 4, 11));
        TextView r14 = r0.typeTip;
        r.d(r14, "typeTip");
        int r15 = this.personMode;
        if (r15 != r3.ordinal()) goto L13;
        String r16 = "培训车型";
    L16:
        r14.setText(r16);
        TextView r17 = r0.tvCarType;
        r.d(r17, "tvCarType");
        int r18 = this.personMode;
        if (r18 != r3.ordinal()) goto L20;
    L23:
        r17.setText(r10);
        TextView r19 = r0.tvNo;
        r.d(r19, "tvNo");
        r19.setText(r11);
        Glide.with(this).load(r8).into(r0.avatar);
        return;
    L20:
        if (r18 != PersonMode.STUDENT.ordinal()) goto L22;
        r10 = SubjectUtil.INSTANCE.subject2name(SundialManager.getInstance().getCourseTypeByCourseCode(r10));
        goto L23
    L22:
        r10 = null;
        goto L23
    L13:
        if (r15 != PersonMode.STUDENT.ordinal()) goto L15;
        r16 = "培训科目";
        goto L16
    L15:
        r16 = null;
        goto L16
    L6:
        if (r2 != PersonMode.STUDENT.ordinal()) goto L8;
        r4 = "学员姓名";
        goto L9
    L8:
        r4 = null;
        goto L9
    }

    private final void uploadImage(final File r3) {
        SundialLog.normal("上传图片：" + r3.getAbsoluteFile());
        showLoadingDialog("", false);
        MucangConfig.f(new RunnableC04531(this, r3));
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public void initData() {
        Window r0 = getWindow();
        final int r1 = 2822;
        if (r0 == null) goto L7;
        View r2 = r0.getDecorView();
        if (r2 == null) goto L7;
        r2.setSystemUiVisibility(2822);
    L7:
        Window r3 = getWindow();
        if (r3 == null) goto L12;
        View r4 = r3.getDecorView();
        if (r4 == null) goto L12;
        r4.setOnSystemUiVisibilityChangeListener(new ViewOnSystemUiVisibilityChangeListenerC04411(this, r1));
    L12:
        TakePhotoManager.setTakingPhoto(true);
        Intent r5 = getIntent();
        if (r5 == null) goto L27;
        this.personMode = r5.getIntExtra(ExtraKey.personMode, this.personMode);
        this.checkMode = r5.getIntExtra(ExtraKey.checkMode, this.checkMode);
        this.uploadMode = r5.getIntExtra(ExtraKey.uploadMode, this.uploadMode);
        this.eventType = r5.getIntExtra(ExtraKey.uploadEventType, this.eventType);
        String r6 = r5.getStringExtra(ExtraKey.idNum);
        if (r6 != null) goto L18;
        r6 = this.idNum;
    L18:
        this.idNum = r6;
        String r7 = r5.getStringExtra(ExtraKey.authToken);
        if (r7 != null) goto L22;
        r7 = this.authToken;
    L22:
        this.authToken = r7;
        String r8 = r5.getStringExtra(ExtraKey.xyToken);
        if (r8 != null) goto L26;
        r8 = this.xyToken;
    L26:
        this.xyToken = r8;
        this.courseSubject = r5.getIntExtra(ExtraKey.courseSubject, this.courseSubject);
    L27:
        LiveBus.Companion.with(UploadImageEvent.class).q(this, new AnonymousClass3(this));
        observeForLoginLogoutIfNeed();
        SoundPool r9 = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).build()).build();
        this.soundPool = r9;
        int r10 = 0;
        if (r9 == null) goto L30;
        int r11 = r9.load(this, R.raw.wav_camera, 1);
    L31:
        this.wavCamera = r11;
        SoundPool r12 = this.soundPool;
        if (r12 == null) goto L34;
        int r13 = r12.load(this, R.raw.raw_hint, 1);
    L35:
        this.wavTimer = r13;
        Integer[] r14 = this.fiveDownTimer;
        SoundPool r15 = this.soundPool;
        if (r15 == null) goto L38;
        int r16 = r15.load(this, R.raw.tt__5, 1);
    L39:
        r14[0] = Integer.valueOf(r16);
        Integer[] r17 = this.fiveDownTimer;
        SoundPool r18 = this.soundPool;
        if (r18 == null) goto L42;
        int r19 = r18.load(this, R.raw.tt__4, 1);
    L43:
        r17[1] = Integer.valueOf(r19);
        Integer[] r20 = this.fiveDownTimer;
        SoundPool r21 = this.soundPool;
        if (r21 == null) goto L46;
        int r22 = r21.load(this, R.raw.tt__3, 1);
    L47:
        r20[2] = Integer.valueOf(r22);
        Integer[] r23 = this.fiveDownTimer;
        SoundPool r24 = this.soundPool;
        if (r24 == null) goto L50;
        int r25 = r24.load(this, R.raw.tt__2, 1);
    L51:
        r23[3] = Integer.valueOf(r25);
        Integer[] r26 = this.fiveDownTimer;
        SoundPool r27 = this.soundPool;
        if (r27 == null) goto L54;
        r10 = r27.load(this, R.raw.tt__1, 1);
    L54:
        r26[4] = Integer.valueOf(r10);
        return;
    L50:
        r25 = 0;
        goto L51
    L46:
        r22 = 0;
        goto L47
    L42:
        r19 = 0;
        goto L43
    L38:
        r16 = 0;
        goto L39
    L34:
        r13 = 0;
        goto L35
    L30:
        r11 = 0;
        goto L31
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public void initViewModel() {
        super.initViewModel();
        updateTitle();
        getViewModel().getUserCoachData().h(this, new C04431(this));
        getViewModel().getInfo(this.personMode, this.checkMode, this.idNum, this.authToken, this.courseSubject, this.xyToken);
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public View onCreateView(Bundle r4) {
        initUVCCamera();
        getBinding().closeIv.setOnClickListener(new ViewOnClickListenerC04461(this));
        TextView r5 = getBinding().closeIv;
        r.d(r5, "binding.closeIv");
        KtxsKt.setDrawableLeft(r5, R.drawable.tt__guide_ic_back, (int) getResources().getDimension(R.dimen.rpx_38));
        final ClickController r6 = new ClickController(5);
        getBinding().titleIv.setOnClickListener(new ViewOnClickListenerC04472(this, r6));
        getBinding().retry.setOnClickListener(new ViewOnClickListenerC04483(this));
        getBinding().ok.setOnClickListener(new ViewOnClickListenerC04494(this));
        TextView r7 = getBinding().tvDelayNum;
        r.d(r7, "binding.tvDelayNum");
        SundialManager r0 = SundialManager.getInstance();
        r.d(r0, "SundialManager.getInstance()");
        r7.setText(String.valueOf(r0.getLogInOutSecond()));
        LinearLayout r8 = getBinding().rlLayout;
        r.d(r8, "binding.rlLayout");
        r8.setVisibility(4);
        LinearLayout r9 = getBinding().imageErrorLayout;
        r.d(r9, "binding.imageErrorLayout");
        r9.setVisibility(8);
        ConstraintLayout r10 = getBinding().getRoot();
        r.d(r10, "binding.root");
        return r10;
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
        cancelCountDown();
        u.e(this.checkCameraTask);
        Tts.speakStop();
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
        if (r2 == null) goto L13;
        r2.pause();
        return;
    L13:
        return;
    L11:
        SundialLog.normal("关闭摄像头无权限");
        return;
    L5:
        r1 = "签退";
        goto L6
    }

    @Override // androidx.fragment.app.d, android.app.Activity
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

    public static final /* synthetic */ void access$uploadImage(CoachFaceCheckActivity r0, File r1) {
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
