package cn.mucang.sundial.library.activity;

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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.d;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.PhotoRecord;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UploadImageEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageResult;
import cn.mucang.sundial.android.tcp.upload.UploadMode;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityTrainingFaceCheckBinding;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.SpeakListener;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ConvertNum;
import com.amap.api.maps.model.MyLocationStyle;
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
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 b2\u00020\u0001:\u0001bB\u0007¢\u0006\u0004\ba\u0010\bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\bJ\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\tH\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u001cH\u0003¢\u0006\u0004\b!\u0010$J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\rH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\rH\u0002¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\bJ\u0019\u0010-\u001a\u00020,2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0006H\u0014¢\u0006\u0004\b/\u0010\bJ\u000f\u00100\u001a\u00020\u0006H\u0014¢\u0006\u0004\b0\u0010\bJ\u000f\u00101\u001a\u00020\u0006H\u0014¢\u0006\u0004\b1\u0010\bJ\u000f\u00102\u001a\u00020\u0002H\u0016¢\u0006\u0004\b2\u0010\u0004J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\bR\u0016\u00104\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00106\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00105R\u0016\u00107\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u00109\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00105R\u0016\u0010:\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010<\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001c\u0010?\u001a\b\u0012\u0004\u0012\u00020\r0>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001d\u0010F\u001a\u00020A8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010J\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u00105R\u0016\u0010K\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010;R\u0018\u0010M\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010P\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010R\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u00105R\u0016\u0010S\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010U\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010TR\u0016\u0010V\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u00105R\u0016\u0010W\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u00105R\u0016\u0010X\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u00105R\u0016\u0010Y\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u00108R\u0018\u0010[\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010`\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u00105¨\u0006c"}, d2 = {"Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "", "checkCamera", "()Z", "checkCameraDoNothing", "Lkotlin/v;", "initUVCCamera", "()V", "", "avatarStr", "updateView", "(Ljava/lang/String;)V", "", "code", SocialConstants.PARAM_SEND_MSG, "handleUploadImageResult", "(ILjava/lang/String;)V", "takePhotoFail", "isAgain", "speakToTakePhoto", "(Z)V", "Ljava/lang/Runnable;", "onComplete", "playSound", "(ZLjava/lang/Runnable;)V", "playTts", "path", "Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "createPhotoRecord", "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "Ljava/io/File;", "file", "uploadImage", "(Ljava/io/File;)V", "photoRecord", "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V", "delay", "startCountDown", "(I)V", "startCountDownUpload", "initData", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "onDestroy", "isHiddenSelfCheckBtn", "onBackPressed", "personMode", "I", "takePhotoDelay", "uploadPhotoId", "Ljava/lang/String;", "diffDelay", "playTTs", "Z", "imageFile", "Ljava/io/File;", "", "fiveDownTimer", "[Ljava/lang/Integer;", "Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;", "binding", "", Constant.START_TIME, "J", "uploadMode", "hasPermission", "Landroid/media/SoundPool;", "soundPool", "Landroid/media/SoundPool;", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "streamId", "autoFinishTask", "Ljava/lang/Runnable;", "checkCameraTask", "wavTimer", "wavCamera", "takePhotoFailCount", ExtraKey.avatar, "Lcn/mucang/sundial/library/device/CameraResult;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "Landroid/os/CountDownTimer;", "uploadCountDownTimer", "Landroid/os/CountDownTimer;", "eventType", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingFaceCheckActivity extends BaseActivity {
    public static final String TAG = "TrainingFaceCheckActivity";
    private CameraResult cameraResult;
    private BaseCamera cameraUtil;
    private boolean hasPermission;
    private File imageFile;
    private SoundPool soundPool;
    private long startTime;
    private int streamId;
    private int takePhotoDelay;
    private int takePhotoFailCount;
    private CountDownTimer uploadCountDownTimer;
    private int wavCamera;
    private int wavTimer;

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityTrainingFaceCheckBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });
    private int personMode = PersonMode.NONE.ordinal();
    private int eventType = EventType.STUDENT_TRAINING.valueOf();
    private int uploadMode = UploadMode.TERMINAL_TAKE.valueOf();
    private String avatar = "";
    private String uploadPhotoId = "";
    private boolean playTTs = true;
    private Integer[] fiveDownTimer = {5, 4, 3, 2, 1};
    private int diffDelay = 5;
    private final Runnable checkCameraTask = new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$checkCameraTask$1
        @Override // java.lang.Runnable
        public final void run() {
            if (this.this$0.checkCamera()) {
                return;
            }
            this.this$0.finish();
        }
    };
    private final Runnable autoFinishTask = new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$autoFinishTask$1
        @Override // java.lang.Runnable
        public final void run() {
            this.this$0.finish();
        }
    };

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$initUVCCamera$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"cn/mucang/sundial/library/activity/TrainingFaceCheckActivity$initUVCCamera$1", "Lcn/mucang/sundial/library/device/CameraResult;", "Lkotlin/v;", "connectSuccess", "()V", "cameraRemoved", "Ljava/io/File;", "file", "takePhotoFinish", "(Ljava/io/File;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class AnonymousClass1 implements CameraResult {
        AnonymousClass1() {
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void cameraRemoved() {
            TrainingFaceCheckActivity.this.hasPermission = false;
            SundialLog.normal("摄像头已移除");
            if (TrainingFaceCheckActivity.this.checkCamera()) {
                return;
            }
            TrainingFaceCheckActivity.this.finish();
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void connectSuccess() {
            TrainingFaceCheckActivity.this.hasPermission = true;
            SundialLog.normal("摄像头连接成功");
            if (TrainingFaceCheckActivity.this.isFinishing()) {
                return;
            }
            u.e(TrainingFaceCheckActivity.this.checkCameraTask);
            u.h("摄像头连接成功");
            SundialLog.normal("摄像头连接成功，拍照");
            TrainingFaceCheckActivity.this.speakToTakePhoto(false);
        }

        @Override // cn.mucang.sundial.library.device.CameraResult
        public void takePhotoFinish(final File file) {
            u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (TrainingFaceCheckActivity.this.isFinishing()) {
                        return;
                    }
                    File file2 = file;
                    if (file2 == null || !file2.exists()) {
                        TrainingFaceCheckActivity.this.takePhotoFailCount++;
                        if (TrainingFaceCheckActivity.this.takePhotoFailCount == 1) {
                            SundialLog.normal("拍照失败, 重新拍照");
                            Tts.speak$default("拍照失败，重新拍照", null, 2, null);
                            u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    BaseCamera baseCamera = TrainingFaceCheckActivity.this.cameraUtil;
                                    if (baseCamera != null) {
                                        baseCamera.takePhoto();
                                    }
                                }
                            }, 3000L);
                            return;
                        } else {
                            SundialLog.normal("拍照失败");
                            Tts.speak$default("拍照失败", null, 2, null);
                            TrainingFaceCheckActivity.this.takePhotoFail();
                            return;
                        }
                    }
                    TrainingFaceCheckActivity.this.imageFile = file;
                    TrainingFaceCheckActivity.this.takePhotoFailCount = 0;
                    ImageView imageView = TrainingFaceCheckActivity.this.getBinding().previewImg;
                    r.d(imageView, "binding.previewImg");
                    imageView.setVisibility(0);
                    Glide.with((d) TrainingFaceCheckActivity.this).load(Uri.fromFile(file)).transform(new CenterInside()).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).into(TrainingFaceCheckActivity.this.getBinding().previewImg);
                    LinearLayout linearLayout = TrainingFaceCheckActivity.this.getBinding().imageCompleteLayout;
                    r.d(linearLayout, "binding.imageCompleteLayout");
                    linearLayout.setVisibility(0);
                    TrainingFaceCheckActivity.this.startCountDownUpload(10);
                    TrainingFaceCheckActivity.this.startTime = System.currentTimeMillis();
                }
            });
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$playTts$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"cn/mucang/sundial/library/activity/TrainingFaceCheckActivity$playTts$1", "Lcn/mucang/sundial/library/tts/SpeakListener;", "", MyLocationStyle.ERROR_CODE, "", "errorMsg", "Lkotlin/v;", "onCompleted", "(ILjava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C04171 implements SpeakListener {
        final /* synthetic */ boolean $isAgain;
        final /* synthetic */ Runnable $onComplete;

        C04171(boolean z, Runnable runnable) {
            this.$isAgain = z;
            this.$onComplete = runnable;
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onBufferProgress(int i, int i2, int i3, String str) {
            SpeakListener.DefaultImpls.onBufferProgress(this, i, i2, i3, str);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onCompleted(int errorCode, String errorMsg) {
            TrainingFaceCheckActivity trainingFaceCheckActivity = TrainingFaceCheckActivity.this;
            trainingFaceCheckActivity.startCountDown(this.$isAgain ? 3 : trainingFaceCheckActivity.takePhotoDelay);
            u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$playTts$1$onCompleted$1
                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.$onComplete.run();
                }
            }, this.$isAgain ? 3000L : TrainingFaceCheckActivity.this.takePhotoDelay * 1000);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            SpeakListener.DefaultImpls.onEvent(this, i, i2, i3, bundle);
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
        public void onSpeakProgress(int i, int i2, int i3) {
            SpeakListener.DefaultImpls.onSpeakProgress(this, i, i2, i3);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakResumed() {
            SpeakListener.DefaultImpls.onSpeakResumed(this);
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
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkCameraDoNothing() {
        BaseCamera baseCamera = this.cameraUtil;
        return (baseCamera != null ? baseCamera.cameraCount() : 0) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PhotoRecord createPhotoRecord(String path) {
        long j;
        String str;
        String studentNo;
        String coachNo;
        DataManager dataManager = DataManager.getInstance();
        r.d(dataManager, "DataManager.getInstance()");
        CoachInfo lastCoach = dataManager.getLastCoach();
        DataManager dataManager2 = DataManager.getInstance();
        r.d(dataManager2, "DataManager.getInstance()");
        StudentInfo lastStudent = dataManager2.getLastStudent();
        String str2 = "";
        long jCurrentTimeMillis = 0;
        if (this.personMode != PersonMode.COACH.ordinal()) {
            if (lastStudent != null && (studentNo = lastStudent.getStudentNo()) != null) {
                str2 = studentNo;
            }
            if (this.eventType == EventType.STUDENT_TRAINING.valueOf()) {
                long classroomId = lastStudent != null ? lastStudent.getClassroomId() : 0L;
                if (classroomId <= 0) {
                    jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
                    if (lastStudent != null) {
                        lastStudent.setClassroomId(jCurrentTimeMillis);
                    }
                } else {
                    j = classroomId;
                    str = str2;
                }
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
        if (lastCoach != null && (coachNo = lastCoach.getCoachNo()) != null) {
            str2 = coachNo;
        }
        if (this.eventType == EventType.COACH_TRAINING.valueOf() && lastStudent != null) {
            jCurrentTimeMillis = lastStudent.getClassroomId();
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
    public final TtActivityTrainingFaceCheckBinding getBinding() {
        return (TtActivityTrainingFaceCheckBinding) this.binding.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleUploadImageResult(int code, String msg) {
        if (isFinishing()) {
            return;
        }
        if (code == UploadImageResult.SUCCESS) {
            SundialLog.normal("成功直接跳回上个界面");
            finish();
        } else if (code != UploadImageResult.FACE_ERROR && code != UploadImageResult.LIVE_ERROR) {
            takePhotoFail();
        } else {
            SundialLog.normal("重新拍照");
            speakToTakePhoto(true);
        }
    }

    static /* synthetic */ void handleUploadImageResult$default(TrainingFaceCheckActivity trainingFaceCheckActivity, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        trainingFaceCheckActivity.handleUploadImageResult(i, str);
    }

    private final void initUVCCamera() {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.cameraResult = anonymousClass1;
        BaseCamera baseCameraCreateCameraUtil = SundialDevice.INSTANCE.createCameraUtil(this, anonymousClass1, getBinding().cameraView, getBinding().cameraLayout, true);
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

    private final void playSound(boolean isAgain, Runnable onComplete) {
        if (isAgain) {
            playTts(isAgain, onComplete);
        } else if (SundialManager.getInstance().playTakePhotoVoice()) {
            playTts(isAgain, onComplete);
        } else {
            onComplete.run();
        }
    }

    private final void playTts(final boolean isAgain, final Runnable onComplete) {
        if (!this.playTTs && !isAgain) {
            SundialLog.normal("无需播放语音拍照");
            u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.playTts.2
                @Override // java.lang.Runnable
                public final void run() {
                    TrainingFaceCheckActivity trainingFaceCheckActivity = TrainingFaceCheckActivity.this;
                    trainingFaceCheckActivity.startCountDown(isAgain ? 3 : trainingFaceCheckActivity.takePhotoDelay);
                }
            });
            u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.playTts.3
                @Override // java.lang.Runnable
                public final void run() {
                    onComplete.run();
                }
            }, isAgain ? 3000L : this.takePhotoDelay * 1000);
        } else {
            String string = isAgain ? getString(R.string.tt_voice_take_pic_again) : getString(R.string.tt_voice_take_pic, new Object[]{new ConvertNum(this.takePhotoDelay).convert()});
            r.d(string, "if(isAgain) getString(R.…akePhotoDelay).convert())");
            SundialLog.normal(string);
            Tts.speak(string, new C04171(isAgain, onComplete));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void speakToTakePhoto(final boolean isAgain) {
        BaseCamera baseCamera;
        try {
            Result.Companion companion = Result.INSTANCE;
            u.e(this.autoFinishTask);
            ImageView imageView = getBinding().previewImg;
            r.d(imageView, "binding.previewImg");
            imageView.setVisibility(8);
            BaseCamera baseCamera2 = this.cameraUtil;
            boolean z = true;
            if (baseCamera2 == null || !baseCamera2.isolatePreviewPage()) {
                z = false;
            }
            if (z) {
                SundialLog.normal("无语音检测摄像头数量");
                if (!isFinishing() && checkCamera() && (baseCamera = this.cameraUtil) != null) {
                    baseCamera.takePhoto();
                }
            } else {
                playSound(isAgain, new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (this.this$0.isFinishing()) {
                            return;
                        }
                        if (!this.this$0.checkCameraDoNothing()) {
                            u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SundialLog.normal("检测失败休眠1秒拍照");
                                    BaseCamera baseCamera3 = TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1.this.this$0.cameraUtil;
                                    if (baseCamera3 != null) {
                                        baseCamera3.takePhoto();
                                    }
                                }
                            }, 1000L);
                            return;
                        }
                        SundialLog.normal("拍照");
                        BaseCamera baseCamera3 = this.this$0.cameraUtil;
                        if (baseCamera3 != null) {
                            baseCamera3.takePhoto();
                        }
                    }
                });
            }
            Result.m139constructorimpl(v.f15822a);
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
        new CountDownTimer((delay * 1000) + 100, 1000L) { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.startCountDown.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                TextView textView2 = TrainingFaceCheckActivity.this.getBinding().tvDelayNum;
                r.d(textView2, "binding.tvDelayNum");
                textView2.setText("0");
                LinearLayout linearLayout2 = TrainingFaceCheckActivity.this.getBinding().rlLayout;
                r.d(linearLayout2, "binding.rlLayout");
                linearLayout2.setVisibility(8);
                SoundPool soundPool = TrainingFaceCheckActivity.this.soundPool;
                if (soundPool != null) {
                    soundPool.play(TrainingFaceCheckActivity.this.wavCamera, 1.0f, 1.0f, 1, 0, 1.0f);
                }
                SoundPool soundPool2 = TrainingFaceCheckActivity.this.soundPool;
                if (soundPool2 != null) {
                    soundPool2.stop(TrainingFaceCheckActivity.this.streamId);
                }
            }

            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onTick(long millisUntilFinished) {
                int i = (int) ((millisUntilFinished + ((long) 50)) / ((long) 1000));
                if (i <= 0) {
                    return;
                }
                TextView textView2 = TrainingFaceCheckActivity.this.getBinding().tvDelayNum;
                r.d(textView2, "binding.tvDelayNum");
                textView2.setText(String.valueOf(i));
                TrainingFaceCheckActivity trainingFaceCheckActivity = TrainingFaceCheckActivity.this;
                int iPlay = 0;
                if (i > 5) {
                    SoundPool soundPool = trainingFaceCheckActivity.soundPool;
                    if (soundPool != null) {
                        iPlay = soundPool.play(TrainingFaceCheckActivity.this.wavTimer, 1.0f, 1.0f, 1, 0, 1.0f);
                    }
                } else {
                    SoundPool soundPool2 = trainingFaceCheckActivity.soundPool;
                    if (soundPool2 != null) {
                        iPlay = soundPool2.play(TrainingFaceCheckActivity.this.fiveDownTimer[5 - i].intValue(), 1.0f, 1.0f, 1, 0, 1.0f);
                    }
                }
                trainingFaceCheckActivity.streamId = iPlay;
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCountDownUpload(final int delay) {
        this.uploadCountDownTimer = new CountDownTimer((delay * 1000) + 100, 1000L) { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.startCountDownUpload.1
            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onFinish() {
                TextView textView = TrainingFaceCheckActivity.this.getBinding().ok;
                r.d(textView, "binding.ok");
                textView.setText("确定 (0s)");
                if (TrainingFaceCheckActivity.this.imageFile != null) {
                    File file = TrainingFaceCheckActivity.this.imageFile;
                    r.c(file);
                    if (file.exists()) {
                        SundialLog.normal("10s倒计时完上传照片");
                        TrainingFaceCheckActivity trainingFaceCheckActivity = TrainingFaceCheckActivity.this;
                        File file2 = trainingFaceCheckActivity.imageFile;
                        r.c(file2);
                        trainingFaceCheckActivity.uploadImage(file2);
                    }
                }
            }

            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onTick(long millisUntilFinished) {
                TextView textView = TrainingFaceCheckActivity.this.getBinding().ok;
                r.d(textView, "binding.ok");
                textView.setText("确定 (" + ((millisUntilFinished + ((long) 50)) / ((long) 1000)) + "s)");
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void takePhotoFail() {
        finish();
    }

    private final void updateView(final String avatarStr) {
        final TtActivityTrainingFaceCheckBinding binding = getBinding();
        ImageView previewImg = binding.previewImg;
        r.d(previewImg, "previewImg");
        previewImg.setVisibility(8);
        LinearLayout imageCompleteLayout = binding.imageCompleteLayout;
        r.d(imageCompleteLayout, "imageCompleteLayout");
        imageCompleteLayout.setVisibility(8);
        Glide.with((d) this).load(avatarStr).into(binding.avatar);
        binding.retry.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$updateView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击重新拍照按钮");
                ImageView previewImg2 = binding.previewImg;
                r.d(previewImg2, "previewImg");
                previewImg2.setVisibility(8);
                LinearLayout imageCompleteLayout2 = binding.imageCompleteLayout;
                r.d(imageCompleteLayout2, "imageCompleteLayout");
                imageCompleteLayout2.setVisibility(8);
                CountDownTimer countDownTimer = this.uploadCountDownTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                this.startCountDown(3);
                u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$updateView$$inlined$with$lambda$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseCamera baseCamera = this.cameraUtil;
                        if (baseCamera != null) {
                            baseCamera.takePhoto();
                        }
                    }
                }, 3000L);
            }
        });
        binding.ok.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击确定上传按钮");
                LinearLayout imageCompleteLayout2 = binding.imageCompleteLayout;
                r.d(imageCompleteLayout2, "imageCompleteLayout");
                imageCompleteLayout2.setVisibility(8);
                CountDownTimer countDownTimer = this.uploadCountDownTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                if (this.imageFile != null) {
                    File file = this.imageFile;
                    r.c(file);
                    if (file.exists()) {
                        TrainingFaceCheckActivity trainingFaceCheckActivity = this;
                        File file2 = trainingFaceCheckActivity.imageFile;
                        r.c(file2);
                        trainingFaceCheckActivity.uploadImage(file2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadImage(final File file) {
        showLoadingDialog("", false);
        MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.uploadImage.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    SundialLog.normal("插入一个上传照片任务");
                    TrainingFaceCheckActivity trainingFaceCheckActivity = TrainingFaceCheckActivity.this;
                    String absolutePath = file.getAbsolutePath();
                    r.d(absolutePath, "file.absolutePath");
                    PhotoRecord photoRecordCreatePhotoRecord = trainingFaceCheckActivity.createPhotoRecord(absolutePath);
                    UploadImageManager.getInstance().savePhotoRecord(photoRecordCreatePhotoRecord);
                    if (TrainingFaceCheckActivity.this.uploadMode != UploadMode.TMP_SAVE_LOCAL.valueOf()) {
                        SundialLog.normal("主动触发上传");
                        TrainingFaceCheckActivity.this.uploadImage(photoRecordCreatePhotoRecord);
                    } else {
                        TrainingFaceCheckActivity.this.hideLoadingDialog();
                        TrainingFaceCheckActivity.handleUploadImageResult$default(TrainingFaceCheckActivity.this, UploadImageResult.SUCCESS, null, 2, null);
                    }
                } catch (Exception e2) {
                    SundialLog.normal("上传图片错误：" + e2.getLocalizedMessage());
                    TrainingFaceCheckActivity.this.hideLoadingDialog();
                    u.h("上传图片错误");
                    TrainingFaceCheckActivity.this.takePhotoFail();
                }
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        this.diffDelay = sundialManager.getLiveImageSecond();
        TakePhotoManager.setTakingPhoto(true);
        Intent intent = getIntent();
        if (intent != null) {
            this.personMode = intent.getIntExtra(ExtraKey.personMode, this.personMode);
            this.uploadMode = intent.getIntExtra(ExtraKey.uploadMode, this.uploadMode);
            this.eventType = intent.getIntExtra(ExtraKey.uploadEventType, this.eventType);
            String stringExtra = intent.getStringExtra(ExtraKey.avatar);
            if (stringExtra == null) {
                stringExtra = this.avatar;
            }
            this.avatar = stringExtra;
        }
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
        LiveBus.INSTANCE.with(UploadImageEvent.class).q(this, new a0<UploadImageEvent>() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.initData.2
            @Override // androidx.lifecycle.a0
            public final void onChanged(UploadImageEvent uploadImageEvent) {
                if (uploadImageEvent == null || !r.a(TrainingFaceCheckActivity.this.uploadPhotoId, uploadImageEvent.photoId)) {
                    return;
                }
                TrainingFaceCheckActivity.this.hideLoadingDialog();
                TrainingFaceCheckActivity.this.handleUploadImageResult(uploadImageEvent.code, uploadImageEvent.message);
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public boolean isHiddenSelfCheckBtn() {
        return true;
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (System.currentTimeMillis() - this.startTime >= 10000) {
            super.onBackPressed();
            return;
        }
        SundialLog.normal("点击返回键，剩余时间：" + ((System.currentTimeMillis() - this.startTime) / ((long) 1000)) + 's');
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        int takePhotoDelay = sundialManager.getTakePhotoDelay();
        this.takePhotoDelay = takePhotoDelay;
        int i = this.diffDelay;
        if (takePhotoDelay > i) {
            this.playTTs = false;
        }
        if (takePhotoDelay > i) {
            takePhotoDelay = i;
        }
        this.takePhotoDelay = takePhotoDelay;
        initUVCCamera();
        TextView textView = getBinding().tvDelayNum;
        r.d(textView, "binding.tvDelayNum");
        textView.setText(String.valueOf(this.takePhotoDelay));
        LinearLayout linearLayout = getBinding().rlLayout;
        r.d(linearLayout, "binding.rlLayout");
        linearLayout.setVisibility(8);
        getBaseBinding().version.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.TrainingFaceCheckActivity.onCreateView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        updateView(this.avatar);
        RelativeLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SundialLog.normal("销毁音频资源");
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
        if (this.hasPermission) {
            BaseCamera baseCamera = this.cameraUtil;
            if (baseCamera != null) {
                baseCamera.pause();
            }
            u.e(this.checkCameraTask);
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.startTime = System.currentTimeMillis();
        if (this.hasPermission) {
            this.takePhotoFailCount = 0;
            BaseCamera baseCamera = this.cameraUtil;
            if (baseCamera != null) {
                baseCamera.open();
            }
            u.d(this.checkCameraTask, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadImage(PhotoRecord photoRecord) throws ExecutionException, InterruptedException {
        String photoId = photoRecord.getPhotoId();
        r.d(photoId, "photoRecord.photoId");
        this.uploadPhotoId = photoId;
        SundialLog.normal("学员拍照，上传前看同一堂课之前的照片有没有没上传成功的，一起上传了");
        if (this.personMode == PersonMode.STUDENT.ordinal() && photoRecord.getClassroomId() > 0) {
            UploadImageManager.getInstance().uploadPhotoByClassroom(photoRecord);
        } else {
            UploadImageManager.getInstance().uploadPhoto(photoRecord);
        }
    }
}
