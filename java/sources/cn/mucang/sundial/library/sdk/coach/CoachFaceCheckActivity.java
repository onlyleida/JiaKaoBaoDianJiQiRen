package cn.mucang.sundial.library.sdk.coach;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.d;
import androidx.lifecycle.a0;
import androidx.lifecycle.l0;
import androidx.lifecycle.n0;
import androidx.lifecycle.s;
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
import cn.mucang.sundial.library.activity.DebugActivity;
import cn.mucang.sundial.library.databinding.TtActivityCoachFaceCheckBinding;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import cn.mucang.sundial.library.device.DebugCameraUtil;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.SpeakListener;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ClickController;
import cn.mucang.sundial.library.util.ConvertNum;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.SubjectUtil;
import cn.mucang.sundial.library.viewmodel.FaceCheckActivityViewModel;
import cn.mucang.sundial.library.widget.BlankDialog;
import cn.mucang.sundial.library.widget.DialogCallBack;
import cn.mucang.sundial.library.widget.FaceCheckFailDialog;
import cn.mucang.sundial.library.widget.ReLoginConfirmDialog;
import com.alibaba.fastjson.JSON;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.io.File;
import java.util.concurrent.ExecutionException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.k;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\br\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0007J7\u0010\u0011\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0007J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0007J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0007J\u000f\u0010\u001c\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u000bH\u0003¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u001fH\u0003¢\u0006\u0004\b$\u0010'J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000bH\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0005H\u0002¢\u0006\u0004\b*\u0010\u0007J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0013H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0013H\u0002¢\u0006\u0004\b.\u0010-J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0007J\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u0007J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0007J\u0019\u00105\u001a\u0002042\b\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0005H\u0014¢\u0006\u0004\b7\u0010\u0007J\u000f\u00108\u001a\u00020\u0005H\u0014¢\u0006\u0004\b8\u0010\u0007J\u000f\u00109\u001a\u00020\u0005H\u0014¢\u0006\u0004\b9\u0010\u0007R\u0016\u0010:\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010;R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0016\u0010>\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010;R\u001d\u0010D\u001a\u00020?8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0016\u0010F\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010J\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010IR\u001c\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00130K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u001d\u0010T\u001a\u00020P8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010A\u001a\u0004\bR\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0018\u0010Y\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0016\u0010[\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010;R\u0016\u0010\\\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010IR\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010`\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010;R\u0018\u0010b\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010d\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010GR\u0016\u0010e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010;R\u0018\u0010f\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010WR\u0016\u0010g\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010i\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010;R\u0018\u0010k\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010m\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010IR\u0016\u0010o\u001a\u00020n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0016\u0010q\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010h¨\u0006s"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;", "Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;", "", "checkCamera", "()Z", "Lkotlin/v;", "observeForLoginLogoutIfNeed", "()V", "signInOutSuccess", "initUVCCamera", "updateTitle", "", "nameStr", "avatarStr", "idCard", "driveType", "filingNo", "updateView", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "code", SocialConstants.PARAM_SEND_MSG, "handleUploadImageResult", "(ILjava/lang/String;)V", "toLoginOrLogout", "showErrorLayout", "showCompleteLayout", "speakToTakePhoto", "isLogin", "isLogout", "path", "Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "createPhotoRecord", "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "Ljava/io/File;", "file", "uploadImage", "(Ljava/io/File;)V", "photoRecord", "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V", "toastCustomMsg", "(Ljava/lang/String;)V", "takePhoto", "delay", "startCountDown", "(I)V", "startCountDownUpload", "cancelCountDown", "initData", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "onDestroy", "courseSubject", "I", "checkMode", "personMode", "eventType", "Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;", "binding", "Ljava/lang/Runnable;", "autoFinishTask", "Ljava/lang/Runnable;", "xyToken", "Ljava/lang/String;", "idNum", "", "fiveDownTimer", "[Ljava/lang/Integer;", "imageFile", "Ljava/io/File;", "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "viewModel$delegate", "getViewModel", "()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "viewModel", "Landroid/os/CountDownTimer;", "uploadCountDownTimer", "Landroid/os/CountDownTimer;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "blankDialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "uploadMode", "uploadPhotoId", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "wavCamera", "Landroid/media/SoundPool;", "soundPool", "Landroid/media/SoundPool;", "checkCameraTask", "streamId", "voiceCountDownTimer", "hasPermission", "Z", "wavTimer", "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "authToken", "", Constant.START_TIME, "J", "takePictureWhenGetInfo", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CoachFaceCheckActivity extends TopBaseActivity {
    private BlankDialog blankDialog;
    private CameraResult cameraResult;
    private BaseCamera cameraUtil;
    private int courseSubject;
    private boolean hasPermission;
    private File imageFile;
    private SoundPool soundPool;
    private long startTime;
    private int streamId;
    private boolean takePictureWhenGetInfo;
    private CountDownTimer uploadCountDownTimer;
    private CountDownTimer voiceCountDownTimer;
    private int wavCamera;
    private int wavTimer;

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityCoachFaceCheckBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel = new l0(v.b(FaceCheckActivityViewModel.class), new Function0<n0>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$vm$$inlined$viewModels$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final n0 invoke() {
            n0 viewModelStore = this.getViewModelStore();
            r.d(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }, new TopBaseActivity.AnonymousClass1());
    private int personMode = PersonMode.NONE.ordinal();
    private int checkMode = CheckMode.OTHER.ordinal();
    private int eventType = EventType.STUDENT_TRAINING.valueOf();
    private int uploadMode = UploadMode.TERMINAL_TAKE.valueOf();
    private String idNum = "";
    private String authToken = "";
    private String xyToken = "";
    private String uploadPhotoId = "";
    private Integer[] fiveDownTimer = {5, 4, 3, 2, 1};
    private final Runnable checkCameraTask = new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$checkCameraTask$1
        @Override // java.lang.Runnable
        public final void run() {
            SundialLog.normal("5秒拍照超时");
            this.this$0.checkCamera();
        }
    };
    private final Runnable autoFinishTask = new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$autoFinishTask$1
        @Override // java.lang.Runnable
        public final void run() {
            SundialLog.normal("30秒结束，自动退出页面");
            this.this$0.finish();
        }
    };

    /* JADX INFO: renamed from: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$initUVCCamera$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"cn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1", "Lcn/mucang/sundial/library/device/CameraResult;", "Lkotlin/v;", "connectSuccess", "()V", "cameraRemoved", "Ljava/io/File;", "file", "takePhotoFinish", "(Ljava/io/File;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C04241 implements CameraResult {
        C04241() {
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void cameraRemoved() {
            CoachFaceCheckActivity.this.hasPermission = false;
            SundialLog.normal("摄像头已移除");
            CoachFaceCheckActivity.this.cancelCountDown();
            CoachFaceCheckActivity.this.checkCamera();
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
        
            if (r0.isShowing() == false) goto L11;
         */
        @Override // cn.mucang.sundial.library.device.CameraResult
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void connectSuccess() {
            /*
                r3 = this;
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                r1 = 1
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$setHasPermission$p(r0, r1)
                java.lang.String r0 = "摄像头连接成功"
                cn.mucang.sundial.android.log.SundialLog.normal(r0)
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r2 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                boolean r2 = r2.isFinishing()
                if (r2 == 0) goto L14
                return
            L14:
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r2 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                java.lang.Runnable r2 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$getCheckCameraTask$p(r2)
                cn.mucang.android.core.utils.u.e(r2)
                cn.mucang.android.core.utils.u.h(r0)
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                cn.mucang.sundial.library.viewmodel.FaceCheckActivityViewModel r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$getViewModel$p(r0)
                boolean r0 = r0.getInfoReady()
                if (r0 == 0) goto L49
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                cn.mucang.sundial.library.widget.BlankDialog r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$getBlankDialog$p(r0)
                if (r0 == 0) goto L43
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                cn.mucang.sundial.library.widget.BlankDialog r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$getBlankDialog$p(r0)
                kotlin.jvm.internal.r.c(r0)
                boolean r0 = r0.isShowing()
                if (r0 != 0) goto L49
            L43:
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$speakToTakePhoto(r0)
                goto L60
            L49:
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$setTakePictureWhenGetInfo$p(r0, r1)
                cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.this
                cn.mucang.sundial.library.databinding.TtActivityCoachFaceCheckBinding r0 = cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.access$getBinding$p(r0)
                android.widget.ImageView r0 = r0.previewImg
                java.lang.String r1 = "binding.previewImg"
                kotlin.jvm.internal.r.d(r0, r1)
                r1 = 8
                r0.setVisibility(r1)
            L60:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.C04241.connectSuccess():void");
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void takePhotoFinish(final File file) {
            SundialLog.normal("拍照完成");
            u.f(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (CoachFaceCheckActivity.this.isFinishing()) {
                        return;
                    }
                    File file2 = file;
                    if (file2 == null || !file2.exists()) {
                        Tts.speak$default("拍照失败", null, 2, null);
                        CoachFaceCheckActivity.this.showErrorLayout();
                        return;
                    }
                    CoachFaceCheckActivity.this.imageFile = file;
                    ImageView imageView = CoachFaceCheckActivity.this.getBinding().previewImg;
                    r.d(imageView, "binding.previewImg");
                    imageView.setVisibility(0);
                    Glide.with((d) CoachFaceCheckActivity.this).load(Uri.fromFile(file)).transform(new CenterInside()).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).into(CoachFaceCheckActivity.this.getBinding().previewImg);
                    CoachFaceCheckActivity.this.showCompleteLayout();
                    CoachFaceCheckActivity.this.startCountDownUpload(10);
                    CoachFaceCheckActivity.this.startTime = System.currentTimeMillis();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelCountDown() {
        TextView textView = getBinding().tvHint;
        r.d(textView, "binding.tvHint");
        textView.setText("");
        CountDownTimer countDownTimer = this.voiceCountDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.uploadCountDownTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkCamera() {
        if (isFinishing()) {
            return false;
        }
        BaseCamera baseCamera = this.cameraUtil;
        boolean z = (baseCamera != null ? baseCamera.cameraCount() : 0) > 0;
        if (!z) {
            Resources resources = getResources();
            int i = R.string.tt_voice_face_check_fail_no_camera;
            SundialLog.normal(resources.getText(i));
            u.g(i);
            String string = getString(i);
            r.d(string, "getString(R.string.tt_vo…ace_check_fail_no_camera)");
            Tts.speak$default(string, null, 2, null);
            finish();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PhotoRecord createPhotoRecord(String path) {
        long j;
        String str;
        String studentNo;
        String coachNo;
        CoachInfo coachInfoData = getViewModel().getCoachInfoData();
        if (coachInfoData == null) {
            SundialManager sundialManager = SundialManager.getInstance();
            r.d(sundialManager, "SundialManager.getInstance()");
            coachInfoData = sundialManager.getLastCoach();
        }
        StudentInfo studentInfoData = getViewModel().getStudentInfoData();
        if (studentInfoData == null) {
            SundialManager sundialManager2 = SundialManager.getInstance();
            r.d(sundialManager2, "SundialManager.getInstance()");
            studentInfoData = sundialManager2.getLastStudent();
        }
        String str2 = "";
        long jCurrentTimeMillis = 0;
        if (this.personMode != PersonMode.COACH.ordinal()) {
            if (studentInfoData != null && (studentNo = studentInfoData.getStudentNo()) != null) {
                str2 = studentNo;
            }
            long classroomId = studentInfoData != null ? studentInfoData.getClassroomId() : 0L;
            if (classroomId <= 0 || this.eventType == EventType.STUDENT_SIGN_IN.valueOf()) {
                jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
                if (studentInfoData != null) {
                    studentInfoData.setClassroomId(jCurrentTimeMillis);
                }
            } else {
                j = classroomId;
                str = str2;
            }
            UploadImageManager uploadImageManager = UploadImageManager.getInstance();
            int i = this.uploadMode;
            int i2 = this.eventType;
            Application context = MucangConfig.getContext();
            r.d(context, "MucangConfig.getContext()");
            PhotoRecord photoRecordCreatePhotoRecord = uploadImageManager.createPhotoRecord(str, j, i, i2, path, context.getResources().getDimensionPixelSize(R.dimen.tt__text_size_water));
            r.d(photoRecordCreatePhotoRecord, "UploadImageManager.getIn…ext_size_water)\n        )");
            return photoRecordCreatePhotoRecord;
        }
        if (coachInfoData != null && (coachNo = coachInfoData.getCoachNo()) != null) {
            str2 = coachNo;
        }
        str = str2;
        j = jCurrentTimeMillis;
        UploadImageManager uploadImageManager2 = UploadImageManager.getInstance();
        int i3 = this.uploadMode;
        int i4 = this.eventType;
        Application context2 = MucangConfig.getContext();
        r.d(context2, "MucangConfig.getContext()");
        PhotoRecord photoRecordCreatePhotoRecord2 = uploadImageManager2.createPhotoRecord(str, j, i3, i4, path, context2.getResources().getDimensionPixelSize(R.dimen.tt__text_size_water));
        r.d(photoRecordCreatePhotoRecord2, "UploadImageManager.getIn…ext_size_water)\n        )");
        return photoRecordCreatePhotoRecord2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TtActivityCoachFaceCheckBinding getBinding() {
        return (TtActivityCoachFaceCheckBinding) this.binding.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FaceCheckActivityViewModel getViewModel() {
        return (FaceCheckActivityViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleUploadImageResult(int code, String msg) {
        if (isFinishing()) {
            return;
        }
        if (code == UploadImageResult.SUCCESS) {
            if (isLogin() || isLogout()) {
                toLoginOrLogout();
                return;
            } else {
                setResult(-1);
                finish();
                return;
            }
        }
        if (this.checkMode == CheckMode.SIGN_IN.ordinal()) {
            if (msg == null || msg.length() == 0) {
                msg = getString(R.string.tt_voice_fail_to_upload_picture);
            }
            r.d(msg, "if (msg.isNullOrEmpty())…_upload_picture) else msg");
            Tts.speak$default(msg, null, 2, null);
            showErrorLayout();
            return;
        }
        if (this.checkMode != CheckMode.SIGN_OUT.ordinal()) {
            if (msg == null || msg.length() == 0) {
                msg = getString(R.string.tt_voice_face_check_fail);
            }
            r.d(msg, "if (msg.isNullOrEmpty())…face_check_fail) else msg");
            Tts.speak$default(msg, null, 2, null);
            showErrorLayout();
            return;
        }
        GlobalData globalData = GlobalData.INSTANCE;
        globalData.incrementSignOutErrorCount(this.personMode);
        if (globalData.getSignOutErrorCount(this.personMode) > 3) {
            Tts.speak$default("人脸验证失败！是否强制签退？", null, 2, null);
            new FaceCheckFailDialog.Builder(this, true).setContent(new DialogCallBack() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.handleUploadImageResult.1
                @Override // cn.mucang.sundial.library.widget.DialogCallBack
                public void onSelect(int index) {
                    if (index == 0) {
                        CoachFaceCheckActivity.this.toLoginOrLogout();
                    } else {
                        CoachFaceCheckActivity.this.speakToTakePhoto();
                    }
                }
            }).show();
            return;
        }
        if (msg == null || msg.length() == 0) {
            msg = getString(R.string.tt_voice_face_check_fail);
        }
        r.d(msg, "if (msg.isNullOrEmpty())…face_check_fail) else msg");
        Tts.speak$default(msg, null, 2, null);
        showErrorLayout();
    }

    static /* synthetic */ void handleUploadImageResult$default(CoachFaceCheckActivity coachFaceCheckActivity, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        coachFaceCheckActivity.handleUploadImageResult(i, str);
    }

    private final void initUVCCamera() {
        C04241 c04241 = new C04241();
        this.cameraResult = c04241;
        BaseCamera baseCameraCreateCameraUtil = SundialDevice.INSTANCE.createCameraUtil(this, c04241, getBinding().cameraView, getBinding().cameraLayout, true);
        this.cameraUtil = baseCameraCreateCameraUtil;
        if (baseCameraCreateCameraUtil != null) {
            baseCameraCreateCameraUtil.init();
        }
        BaseCamera baseCamera = this.cameraUtil;
        this.hasPermission = baseCamera != null && baseCamera.hasPermission();
        SundialLog.normal("判断摄像头权限：" + this.hasPermission);
        if (this.hasPermission) {
            return;
        }
        SundialLog.normal("获取摄像头权限并拍照");
        BaseCamera baseCamera2 = this.cameraUtil;
        if (baseCamera2 != null) {
            baseCamera2.open();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLogin() {
        return this.eventType == EventType.COACH_SIGN_IN.valueOf() || this.eventType == EventType.STUDENT_SIGN_IN.valueOf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLogout() {
        return this.eventType == EventType.COACH_SIGN_OUT.valueOf() || this.eventType == EventType.STUDENT_SIGN_OUT.valueOf();
    }

    private final void observeForLoginLogoutIfNeed() {
        int i = this.personMode;
        PersonMode personMode = PersonMode.COACH;
        if (i == personMode.ordinal() && this.eventType == EventType.COACH_SIGN_IN.valueOf()) {
            LiveBus.INSTANCE.with(CoachLoginResponseEvent.class).q(this, new a0<CoachLoginResponseEvent>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.observeForLoginLogoutIfNeed.1
                @Override // androidx.lifecycle.a0
                public final void onChanged(CoachLoginResponseEvent it) {
                    CoachFaceCheckActivity.this.hideLoadingDialog();
                    if (LoginUtil.INSTANCE.coachLoginSuccess()) {
                        SundialLog.normal("教练签到成功");
                        CoachFaceCheckActivity.this.signInOutSuccess();
                        return;
                    }
                    r.d(it, "it");
                    String extraMessage = it.getExtraMessage();
                    if (extraMessage == null || extraMessage.length() == 0) {
                        extraMessage = CoachFaceCheckActivity.this.getString(R.string.tt_login_fail);
                    }
                    SundialLog.normal(extraMessage);
                    CoachFaceCheckActivity.this.toastCustomMsg(extraMessage);
                    CoachFaceCheckActivity.this.showErrorLayout();
                }
            });
            return;
        }
        int i2 = this.personMode;
        PersonMode personMode2 = PersonMode.STUDENT;
        if (i2 == personMode2.ordinal() && this.eventType == EventType.STUDENT_SIGN_IN.valueOf()) {
            LiveBus.INSTANCE.with(StudentLoginResponseEvent.class).q(this, new a0<StudentLoginResponseEvent>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.observeForLoginLogoutIfNeed.2
                @Override // androidx.lifecycle.a0
                public final void onChanged(StudentLoginResponseEvent it) {
                    CoachFaceCheckActivity.this.hideLoadingDialog();
                    if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                        SundialLog.normal("学员签到成功");
                        CoachFaceCheckActivity.this.signInOutSuccess();
                        return;
                    }
                    r.d(it, "it");
                    String message = it.getExtraMessage();
                    if (message == null || message.length() == 0) {
                        message = CoachFaceCheckActivity.this.getString(R.string.tt_login_fail);
                    }
                    CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                    r.d(message, "message");
                    coachFaceCheckActivity.toastCustomMsg(message);
                    SundialLog.normal(message);
                    CoachFaceCheckActivity.this.showErrorLayout();
                }
            });
            return;
        }
        if (this.personMode == personMode.ordinal() && this.eventType == EventType.COACH_SIGN_OUT.valueOf()) {
            LiveBus.INSTANCE.with(CoachLogoutResponseEvent.class).q(this, new a0<CoachLogoutResponseEvent>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.observeForLoginLogoutIfNeed.3
                @Override // androidx.lifecycle.a0
                public final void onChanged(CoachLogoutResponseEvent coachLogoutResponseEvent) {
                    if (LoginUtil.INSTANCE.coachLoginSuccess()) {
                        CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                        int i3 = R.string.tt_sign_out_fail;
                        String string = coachFaceCheckActivity.getString(i3);
                        r.d(string, "getString(R.string.tt_sign_out_fail)");
                        Tts.speak$default(string, null, 2, null);
                        SundialLog.normal("教练" + CoachFaceCheckActivity.this.getString(i3));
                        CoachFaceCheckActivity.this.showErrorLayout();
                        return;
                    }
                    CoachFaceCheckActivity coachFaceCheckActivity2 = CoachFaceCheckActivity.this;
                    int i4 = R.string.tt_sign_out_success;
                    String string2 = coachFaceCheckActivity2.getString(i4);
                    r.d(string2, "getString(R.string.tt_sign_out_success)");
                    Tts.speak$default(string2, null, 2, null);
                    SundialLog.normal("教练" + CoachFaceCheckActivity.this.getString(i4));
                    CoachFaceCheckActivity.this.signInOutSuccess();
                }
            });
        } else if (this.personMode == personMode2.ordinal() && this.eventType == EventType.STUDENT_SIGN_OUT.valueOf()) {
            LiveBus.INSTANCE.with(StudentLogoutResponseEvent.class).q(this, new a0<StudentLogoutResponseEvent>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.observeForLoginLogoutIfNeed.4
                @Override // androidx.lifecycle.a0
                public final void onChanged(StudentLogoutResponseEvent studentLogoutResponseEvent) {
                    if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                        CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                        int i3 = R.string.tt_sign_out_fail;
                        String string = coachFaceCheckActivity.getString(i3);
                        r.d(string, "getString(R.string.tt_sign_out_fail)");
                        Tts.speak$default(string, null, 2, null);
                        SundialLog.normal("学员" + CoachFaceCheckActivity.this.getString(i3));
                        CoachFaceCheckActivity.this.showErrorLayout();
                        return;
                    }
                    CoachFaceCheckActivity coachFaceCheckActivity2 = CoachFaceCheckActivity.this;
                    int i4 = R.string.tt_sign_out_success;
                    String string2 = coachFaceCheckActivity2.getString(i4);
                    r.d(string2, "getString(R.string.tt_sign_out_success)");
                    Tts.speak$default(string2, null, 2, null);
                    SundialLog.normal("学员" + CoachFaceCheckActivity.this.getString(i4));
                    CoachFaceCheckActivity.this.signInOutSuccess();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCompleteLayout() {
        LinearLayout linearLayout = getBinding().imageErrorLayout;
        r.d(linearLayout, "binding.imageErrorLayout");
        linearLayout.setVisibility(0);
        TextView textView = getBinding().ok;
        r.d(textView, "binding.ok");
        textView.setVisibility(0);
        TextView textView2 = getBinding().exit;
        r.d(textView2, "binding.exit");
        textView2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorLayout() {
        LinearLayout linearLayout = getBinding().imageErrorLayout;
        r.d(linearLayout, "binding.imageErrorLayout");
        linearLayout.setVisibility(0);
        TextView textView = getBinding().ok;
        r.d(textView, "binding.ok");
        textView.setVisibility(8);
        TextView textView2 = getBinding().exit;
        r.d(textView2, "binding.exit");
        textView2.setVisibility(0);
        getBinding().exit.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.showErrorLayout.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CoachFaceCheckActivity.this.finish();
            }
        });
        u.e(this.autoFinishTask);
        u.d(this.autoFinishTask, 30000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void signInOutSuccess() {
        GlobalData.INSTANCE.clearSignOutErrorCount(this.personMode);
        setResult(-1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void speakToTakePhoto() {
        BaseCamera baseCamera;
        cancelCountDown();
        try {
            Result.Companion companion = Result.INSTANCE;
            LinearLayout linearLayout = getBinding().imageErrorLayout;
            r.d(linearLayout, "binding.imageErrorLayout");
            linearLayout.setVisibility(8);
            u.e(this.autoFinishTask);
            ImageView imageView = getBinding().previewImg;
            r.d(imageView, "binding.previewImg");
            imageView.setVisibility(8);
            BaseCamera baseCamera2 = this.cameraUtil;
            if ((baseCamera2 != null && baseCamera2.isolatePreviewPage()) || !(isLogin() || isLogout())) {
                SundialLog.normal("无语音检测摄像头数量");
                if (!isFinishing() && checkCamera() && (baseCamera = this.cameraUtil) != null) {
                    baseCamera.takePhoto();
                }
            } else {
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                final int logInOutSecond = sundialManager.getLogInOutSecond();
                String strConvert = new ConvertNum(logInOutSecond).convert();
                int i = R.string.tt_voice_take_pic;
                SundialLog.normal(getString(i, new Object[]{strConvert}));
                String string = getString(i, new Object[]{strConvert});
                r.d(string, "getString(R.string.tt_voice_take_pic, delayNum)");
                Tts.speak(string, new SpeakListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1
                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onBufferProgress(int i2, int i3, int i4, String str) {
                        SpeakListener.DefaultImpls.onBufferProgress(this, i2, i3, i4, str);
                    }

                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onCompleted(int errorCode, String errorMsg) {
                        if (this.isFinishing() || this.isDestroyed()) {
                            return;
                        }
                        this.startCountDown(logInOutSecond);
                        u.d(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SundialLog.normal("语音倒计时完毕检测摄像头数量");
                                if (this.isFinishing() || !this.checkCamera()) {
                                    return;
                                }
                                SundialLog.normal("拍照");
                                BaseCamera baseCamera3 = this.cameraUtil;
                                if (baseCamera3 != null) {
                                    baseCamera3.takePhoto();
                                }
                            }
                        }, ((long) logInOutSecond) * 1000);
                    }

                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onEvent(int i2, int i3, int i4, Bundle bundle) {
                        SpeakListener.DefaultImpls.onEvent(this, i2, i3, i4, bundle);
                    }

                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onSpeakBegin() {
                        SpeakListener.DefaultImpls.onSpeakBegin(this);
                    }

                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onSpeakPaused() {
                        SpeakListener.DefaultImpls.onSpeakPaused(this);
                    }

                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onSpeakProgress(int i2, int i3, int i4) {
                        SpeakListener.DefaultImpls.onSpeakProgress(this, i2, i3, i4);
                    }

                    @Override // cn.mucang.sundial.library.tts.SpeakListener
                    public void onSpeakResumed() {
                        SpeakListener.DefaultImpls.onSpeakResumed(this);
                    }
                });
            }
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCountDown(final int delay) {
        TextView textView = getBinding().tvDelayNum;
        r.d(textView, "binding.tvDelayNum");
        textView.setText(String.valueOf(delay));
        LinearLayout linearLayout = getBinding().rlLayout;
        r.d(linearLayout, "binding.rlLayout");
        linearLayout.setVisibility(0);
        this.voiceCountDownTimer = new CountDownTimer((delay * 1000) + 100, 1000L) { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.startCountDown.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                TextView textView2 = CoachFaceCheckActivity.this.getBinding().tvDelayNum;
                r.d(textView2, "binding.tvDelayNum");
                textView2.setText("0秒");
                LinearLayout linearLayout2 = CoachFaceCheckActivity.this.getBinding().rlLayout;
                r.d(linearLayout2, "binding.rlLayout");
                linearLayout2.setVisibility(4);
                SoundPool soundPool = CoachFaceCheckActivity.this.soundPool;
                if (soundPool != null) {
                    soundPool.play(CoachFaceCheckActivity.this.wavCamera, 1.0f, 1.0f, 1, 0, 1.0f);
                }
                SoundPool soundPool2 = CoachFaceCheckActivity.this.soundPool;
                if (soundPool2 != null) {
                    soundPool2.stop(CoachFaceCheckActivity.this.streamId);
                }
            }

            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onTick(long millisUntilFinished) {
                int i = (int) ((millisUntilFinished + ((long) 50)) / ((long) 1000));
                if (i <= 0) {
                    return;
                }
                TextView textView2 = CoachFaceCheckActivity.this.getBinding().tvDelayNum;
                r.d(textView2, "binding.tvDelayNum");
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append((char) 31186);
                textView2.setText(sb.toString());
                CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                int iPlay = 0;
                if (i > 5) {
                    SoundPool soundPool = coachFaceCheckActivity.soundPool;
                    if (soundPool != null) {
                        iPlay = soundPool.play(CoachFaceCheckActivity.this.wavTimer, 1.0f, 1.0f, 1, 0, 1.0f);
                    }
                } else {
                    SoundPool soundPool2 = coachFaceCheckActivity.soundPool;
                    if (soundPool2 != null) {
                        iPlay = soundPool2.play(CoachFaceCheckActivity.this.fiveDownTimer[5 - i].intValue(), 1.0f, 1.0f, 1, 0, 1.0f);
                    }
                }
                coachFaceCheckActivity.streamId = iPlay;
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCountDownUpload(final int delay) {
        CountDownTimer countDownTimer = this.uploadCountDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.uploadCountDownTimer = new CountDownTimer((delay * 1000) + 100, 1000L) { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.startCountDownUpload.1
            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onFinish() {
                TextView textView = CoachFaceCheckActivity.this.getBinding().ok;
                r.d(textView, "binding.ok");
                textView.setText("确定 (0s)");
                if (CoachFaceCheckActivity.this.imageFile != null) {
                    File file = CoachFaceCheckActivity.this.imageFile;
                    r.c(file);
                    if (file.exists()) {
                        SundialLog.normal("10s倒计时完上传照片");
                        CoachFaceCheckActivity.this.cancelCountDown();
                        CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                        File file2 = coachFaceCheckActivity.imageFile;
                        r.c(file2);
                        coachFaceCheckActivity.uploadImage(file2);
                    }
                }
            }

            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onTick(long millisUntilFinished) {
                TextView textView = CoachFaceCheckActivity.this.getBinding().ok;
                r.d(textView, "binding.ok");
                textView.setText("确定 (" + ((millisUntilFinished + ((long) 50)) / ((long) 1000)) + "s)");
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void takePhoto() {
        if (this.takePictureWhenGetInfo) {
            this.takePictureWhenGetInfo = false;
            speakToTakePhoto();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toLoginOrLogout() {
        if (!isLogin()) {
            if (isLogout()) {
                LoginUtil.INSTANCE.executeSignOut(this, this.personMode);
            }
        } else if (this.personMode == PersonMode.COACH.ordinal()) {
            LoginUtil.INSTANCE.executeCoachLogin(this, getViewModel().getCoachInfoData());
        } else {
            LoginUtil.INSTANCE.executeStudentLogin(this, getViewModel().getStudentInfoData());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toastCustomMsg(String msg) {
        TextView textView = getBinding().tvHint;
        r.d(textView, "binding.tvHint");
        textView.setText(msg);
        if (msg.length() > 15) {
            u.j(msg);
        } else {
            u.h(msg);
        }
    }

    private final void updateTitle() {
        String str;
        TextView textView = getBinding().titleIv;
        r.d(textView, "binding.titleIv");
        int i = this.personMode;
        PersonMode personMode = PersonMode.COACH;
        if (i == personMode.ordinal() && this.checkMode == CheckMode.SIGN_IN.ordinal()) {
            str = "教练签到";
        } else if (this.personMode == personMode.ordinal() && this.checkMode == CheckMode.SIGN_OUT.ordinal()) {
            str = "教练签退";
        } else {
            int i2 = this.personMode;
            PersonMode personMode2 = PersonMode.STUDENT;
            if (i2 == personMode2.ordinal() && this.checkMode == CheckMode.SIGN_IN.ordinal()) {
                str = "学员签到";
            } else {
                str = (this.personMode == personMode2.ordinal() && this.checkMode == CheckMode.SIGN_OUT.ordinal()) ? "学员签退" : "人脸验证";
            }
        }
        textView.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateView(String nameStr, String avatarStr, String idCard, String driveType, String filingNo) {
        String str;
        String str2;
        TtActivityCoachFaceCheckBinding binding = getBinding();
        TextView nameTip = binding.nameTip;
        r.d(nameTip, "nameTip");
        int i = this.personMode;
        PersonMode personMode = PersonMode.COACH;
        if (i == personMode.ordinal()) {
            str = "教练员姓名";
        } else {
            str = i == PersonMode.STUDENT.ordinal() ? "学员姓名" : null;
        }
        nameTip.setText(str);
        TextView name = binding.name;
        r.d(name, "name");
        name.setText(nameStr);
        ImageView previewImg = binding.previewImg;
        r.d(previewImg, "previewImg");
        previewImg.setVisibility(8);
        TextView tvCardId = binding.tvCardId;
        r.d(tvCardId, "tvCardId");
        tvCardId.setText(KtxsKt.mask(idCard, 4, 11));
        TextView typeTip = binding.typeTip;
        r.d(typeTip, "typeTip");
        int i2 = this.personMode;
        if (i2 == personMode.ordinal()) {
            str2 = "培训车型";
        } else {
            str2 = i2 == PersonMode.STUDENT.ordinal() ? "培训科目" : null;
        }
        typeTip.setText(str2);
        TextView tvCarType = binding.tvCarType;
        r.d(tvCarType, "tvCarType");
        int i3 = this.personMode;
        if (i3 != personMode.ordinal()) {
            driveType = i3 == PersonMode.STUDENT.ordinal() ? SubjectUtil.INSTANCE.subject2name(SundialManager.getInstance().getCourseTypeByCourseCode(driveType)) : null;
        }
        tvCarType.setText(driveType);
        TextView tvNo = binding.tvNo;
        r.d(tvNo, "tvNo");
        tvNo.setText(filingNo);
        Glide.with((d) this).load(avatarStr).into(binding.avatar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadImage(final File file) {
        SundialLog.normal("上传图片：" + file.getAbsoluteFile());
        showLoadingDialog("", false);
        MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.uploadImage.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                    String absolutePath = file.getAbsolutePath();
                    r.d(absolutePath, "file.absolutePath");
                    PhotoRecord photoRecordCreatePhotoRecord = coachFaceCheckActivity.createPhotoRecord(absolutePath);
                    if (!CoachFaceCheckActivity.this.isLogin() && !CoachFaceCheckActivity.this.isLogout()) {
                        UploadImageManager.getInstance().savePhotoRecord(photoRecordCreatePhotoRecord);
                    }
                    if (CoachFaceCheckActivity.this.uploadMode != UploadMode.TMP_SAVE_LOCAL.valueOf()) {
                        SundialLog.normal("主动触发上传");
                        CoachFaceCheckActivity.this.uploadImage(photoRecordCreatePhotoRecord);
                    } else {
                        CoachFaceCheckActivity.this.hideLoadingDialog();
                        CoachFaceCheckActivity.handleUploadImageResult$default(CoachFaceCheckActivity.this, UploadImageResult.SUCCESS, null, 2, null);
                    }
                } catch (Exception unused) {
                    CoachFaceCheckActivity.this.hideLoadingDialog();
                    if (CoachFaceCheckActivity.this.checkMode == CheckMode.SIGN_OUT.ordinal()) {
                        GlobalData.INSTANCE.incrementSignOutErrorCount(CoachFaceCheckActivity.this.personMode);
                    }
                    u.h("上传图片错误");
                    SundialLog.normal("上传图片错误");
                    CoachFaceCheckActivity.this.showErrorLayout();
                }
            }
        });
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public void initData() {
        View decorView;
        View decorView2;
        Window window = getWindow();
        final int i = 2822;
        if (window != null && (decorView2 = window.getDecorView()) != null) {
            decorView2.setSystemUiVisibility(2822);
        }
        Window window2 = getWindow();
        if (window2 != null && (decorView = window2.getDecorView()) != null) {
            decorView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.initData.1

                /* JADX INFO: renamed from: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$initData$1$1, reason: invalid class name and collision with other inner class name */
                @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
                @DebugMetadata(c = "cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity$initData$1$1", f = "CoachFaceCheckActivity.kt", l = {113}, m = "invokeSuspend")
                static final class C01771 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
                    int label;

                    C01771(Continuation continuation) {
                        super(2, continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
                        r.e(completion, "completion");
                        return ViewOnSystemUiVisibilityChangeListenerC04231.this.new C01771(completion);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
                        return ((C01771) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        View decorView;
                        Object objD = b.d();
                        int i = this.label;
                        if (i == 0) {
                            k.b(obj);
                            this.label = 1;
                            if (s0.a(300L, this) == objD) {
                                return objD;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            k.b(obj);
                        }
                        Window window = CoachFaceCheckActivity.this.getWindow();
                        if (window != null && (decorView = window.getDecorView()) != null) {
                            decorView.setSystemUiVisibility(i);
                        }
                        return kotlin.v.f15822a;
                    }
                }

                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i2) {
                    if (i2 == 0) {
                        g.b(s.a(CoachFaceCheckActivity.this), null, null, new C01771(null), 3, null);
                    }
                }
            });
        }
        TakePhotoManager.setTakingPhoto(true);
        Intent intent = getIntent();
        if (intent != null) {
            this.personMode = intent.getIntExtra(ExtraKey.personMode, this.personMode);
            this.checkMode = intent.getIntExtra(ExtraKey.checkMode, this.checkMode);
            this.uploadMode = intent.getIntExtra(ExtraKey.uploadMode, this.uploadMode);
            this.eventType = intent.getIntExtra(ExtraKey.uploadEventType, this.eventType);
            String stringExtra = intent.getStringExtra(ExtraKey.idNum);
            if (stringExtra == null) {
                stringExtra = this.idNum;
            }
            this.idNum = stringExtra;
            String stringExtra2 = intent.getStringExtra(ExtraKey.authToken);
            if (stringExtra2 == null) {
                stringExtra2 = this.authToken;
            }
            this.authToken = stringExtra2;
            String stringExtra3 = intent.getStringExtra(ExtraKey.xyToken);
            if (stringExtra3 == null) {
                stringExtra3 = this.xyToken;
            }
            this.xyToken = stringExtra3;
            this.courseSubject = intent.getIntExtra(ExtraKey.courseSubject, this.courseSubject);
        }
        LiveBus.INSTANCE.with(UploadImageEvent.class).q(this, new a0<UploadImageEvent>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.initData.3
            @Override // androidx.lifecycle.a0
            public final void onChanged(UploadImageEvent uploadImageEvent) {
                if (uploadImageEvent != null) {
                    SundialLog.normal("照片上传结果：" + JSON.toJSONString(uploadImageEvent) + "  \nuploadPhotoId：" + CoachFaceCheckActivity.this.uploadPhotoId);
                    if (r.a(CoachFaceCheckActivity.this.uploadPhotoId, uploadImageEvent.photoId)) {
                        CoachFaceCheckActivity.this.hideLoadingDialog();
                        CoachFaceCheckActivity.this.handleUploadImageResult(uploadImageEvent.code, uploadImageEvent.message);
                    }
                }
            }
        });
        observeForLoginLogoutIfNeed();
        SoundPool soundPoolBuild = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).build()).build();
        this.soundPool = soundPoolBuild;
        this.wavCamera = soundPoolBuild != null ? soundPoolBuild.load(this, R.raw.wav_camera, 1) : 0;
        SoundPool soundPool = this.soundPool;
        this.wavTimer = soundPool != null ? soundPool.load(this, R.raw.raw_hint, 1) : 0;
        Integer[] numArr = this.fiveDownTimer;
        SoundPool soundPool2 = this.soundPool;
        numArr[0] = Integer.valueOf(soundPool2 != null ? soundPool2.load(this, R.raw.tt__5, 1) : 0);
        Integer[] numArr2 = this.fiveDownTimer;
        SoundPool soundPool3 = this.soundPool;
        numArr2[1] = Integer.valueOf(soundPool3 != null ? soundPool3.load(this, R.raw.tt__4, 1) : 0);
        Integer[] numArr3 = this.fiveDownTimer;
        SoundPool soundPool4 = this.soundPool;
        numArr3[2] = Integer.valueOf(soundPool4 != null ? soundPool4.load(this, R.raw.tt__3, 1) : 0);
        Integer[] numArr4 = this.fiveDownTimer;
        SoundPool soundPool5 = this.soundPool;
        numArr4[3] = Integer.valueOf(soundPool5 != null ? soundPool5.load(this, R.raw.tt__2, 1) : 0);
        Integer[] numArr5 = this.fiveDownTimer;
        SoundPool soundPool6 = this.soundPool;
        numArr5[4] = Integer.valueOf(soundPool6 != null ? soundPool6.load(this, R.raw.tt__1, 1) : 0);
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public void initViewModel() {
        super.initViewModel();
        updateTitle();
        getViewModel().getUserCoachData().h(this, new a0<FaceCheckActivityViewModel.UserCoachData>() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.initViewModel.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(FaceCheckActivityViewModel.UserCoachData userCoachData) {
                if (CoachFaceCheckActivity.this.isFinishing()) {
                    return;
                }
                if (userCoachData.getError()) {
                    String errorMessage = userCoachData.getErrorMessage();
                    if (!(errorMessage == null || errorMessage.length() == 0)) {
                        if (userCoachData.getErrorMessage().length() > 15) {
                            u.j(userCoachData.getErrorMessage());
                        } else {
                            u.h(userCoachData.getErrorMessage());
                        }
                        Tts.speak$default(userCoachData.getErrorMessage(), null, 2, null);
                        SundialLog.normal(userCoachData.getErrorMessage());
                        CoachFaceCheckActivity.this.setResult(-88, new Intent().putExtra(SocialConstants.PARAM_SEND_MSG, userCoachData.getErrorMessage()));
                    }
                    CoachFaceCheckActivity.this.finish();
                    return;
                }
                BaseCamera baseCamera = CoachFaceCheckActivity.this.cameraUtil;
                DebugCameraUtil debugCameraUtil = (DebugCameraUtil) (baseCamera instanceof DebugCameraUtil ? baseCamera : null);
                if (debugCameraUtil != null) {
                    String avatar = userCoachData.getAvatar();
                    if (avatar == null) {
                        avatar = "";
                    }
                    debugCameraUtil.setTestFaceUrl(avatar);
                }
                CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                String name = userCoachData.getName();
                String str = name != null ? name : "";
                String avatar2 = userCoachData.getAvatar();
                String str2 = avatar2 != null ? avatar2 : "";
                String idCard = userCoachData.getIdCard();
                String str3 = idCard != null ? idCard : "";
                String courseCode = userCoachData.getCourseCode();
                String str4 = courseCode != null ? courseCode : "";
                String filingNo = userCoachData.getFilingNo();
                coachFaceCheckActivity.updateView(str, str2, str3, str4, filingNo != null ? filingNo : "");
                String confirmMessage = userCoachData.getConfirmMessage();
                if (confirmMessage == null || confirmMessage.length() == 0) {
                    CoachFaceCheckActivity.this.takePhoto();
                } else {
                    CoachFaceCheckActivity coachFaceCheckActivity2 = CoachFaceCheckActivity.this;
                    coachFaceCheckActivity2.blankDialog = new ReLoginConfirmDialog.Builder(coachFaceCheckActivity2, true).setContent(userCoachData.getConfirmMessage(), new DialogCallBack() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.initViewModel.1.1
                        @Override // cn.mucang.sundial.library.widget.DialogCallBack
                        public void onSelect(int index) {
                            if (index == 1) {
                                CoachFaceCheckActivity.this.takePhoto();
                            } else {
                                CoachFaceCheckActivity.this.finish();
                            }
                        }
                    }).show();
                }
            }
        });
        getViewModel().getInfo(this.personMode, this.checkMode, this.idNum, this.authToken, this.courseSubject, this.xyToken);
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        initUVCCamera();
        getBinding().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.onCreateView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击退出拍照按钮");
                CoachFaceCheckActivity.this.finish();
            }
        });
        TextView textView = getBinding().closeIv;
        r.d(textView, "binding.closeIv");
        KtxsKt.setDrawableLeft(textView, R.drawable.tt__guide_ic_back, (int) getResources().getDimension(R.dimen.rpx_38));
        final ClickController clickController = new ClickController(5);
        getBinding().titleIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.onCreateView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                clickController.click(new ClickController.ClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.onCreateView.2.1
                    @Override // cn.mucang.sundial.library.util.ClickController.ClickListener
                    public void onClickCountFull() {
                        KtxsKt.safeStartActivity$default(CoachFaceCheckActivity.this, DebugActivity.class, null, 2, null);
                    }
                });
            }
        });
        getBinding().retry.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.onCreateView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击重新拍照按钮");
                ImageView imageView = CoachFaceCheckActivity.this.getBinding().previewImg;
                r.d(imageView, "binding.previewImg");
                imageView.setVisibility(8);
                LinearLayout linearLayout = CoachFaceCheckActivity.this.getBinding().imageErrorLayout;
                r.d(linearLayout, "binding.imageErrorLayout");
                linearLayout.setVisibility(8);
                CoachFaceCheckActivity.this.cancelCountDown();
                CoachFaceCheckActivity.this.startCountDown(3);
                u.d(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.onCreateView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseCamera baseCamera = CoachFaceCheckActivity.this.cameraUtil;
                        if (baseCamera != null) {
                            baseCamera.takePhoto();
                        }
                    }
                }, 3000L);
            }
        });
        getBinding().ok.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity.onCreateView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击确定上传按钮");
                LinearLayout linearLayout = CoachFaceCheckActivity.this.getBinding().imageErrorLayout;
                r.d(linearLayout, "binding.imageErrorLayout");
                linearLayout.setVisibility(8);
                CoachFaceCheckActivity.this.cancelCountDown();
                if (CoachFaceCheckActivity.this.imageFile != null) {
                    File file = CoachFaceCheckActivity.this.imageFile;
                    r.c(file);
                    if (file.exists()) {
                        CoachFaceCheckActivity coachFaceCheckActivity = CoachFaceCheckActivity.this;
                        File file2 = coachFaceCheckActivity.imageFile;
                        r.c(file2);
                        coachFaceCheckActivity.uploadImage(file2);
                    }
                }
            }
        });
        TextView textView2 = getBinding().tvDelayNum;
        r.d(textView2, "binding.tvDelayNum");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        textView2.setText(String.valueOf(sundialManager.getLogInOutSecond()));
        LinearLayout linearLayout = getBinding().rlLayout;
        r.d(linearLayout, "binding.rlLayout");
        linearLayout.setVisibility(4);
        LinearLayout linearLayout2 = getBinding().imageErrorLayout;
        r.d(linearLayout2, "binding.imageErrorLayout");
        linearLayout2.setVisibility(8);
        ConstraintLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.release();
        }
        u.e(this.autoFinishTask);
        TakePhotoManager.setTakingPhoto(false);
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        cancelCountDown();
        u.e(this.checkCameraTask);
        Tts.speakStop();
        StringBuilder sb = new StringBuilder();
        sb.append("离开");
        sb.append(isLogin() ? "签到" : "签退");
        sb.append("拍照页面");
        SundialLog.normal(sb.toString());
        if (!this.hasPermission) {
            SundialLog.normal("关闭摄像头无权限");
            return;
        }
        SundialLog.normal("关闭摄像头");
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.pause();
        }
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.startTime = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("打开");
        sb.append(isLogin() ? "签到" : "签退");
        sb.append("拍照页面");
        SundialLog.normal(sb.toString());
        if (!this.hasPermission) {
            SundialLog.normal("打开摄像头无权限");
            return;
        }
        SundialLog.normal("打开摄像头");
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.open();
        }
        u.d(this.checkCameraTask, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadImage(PhotoRecord photoRecord) throws ExecutionException, InterruptedException {
        String photoId = photoRecord.getPhotoId();
        r.d(photoId, "photoRecord.photoId");
        this.uploadPhotoId = photoId;
        if (this.personMode == PersonMode.STUDENT.ordinal()) {
            UploadImageManager.getInstance().uploadPhotoByClassroom(photoRecord);
        } else {
            UploadImageManager.getInstance().uploadPhoto(photoRecord);
        }
    }
}
