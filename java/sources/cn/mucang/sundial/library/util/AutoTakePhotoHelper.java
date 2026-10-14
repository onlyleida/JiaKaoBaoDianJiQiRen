package cn.mucang.sundial.library.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.media.SoundPool;
import android.os.Bundle;
import android.view.TextureView;
import androidx.lifecycle.Lifecycle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.PhotoRecord;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadMode;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.activity.BaseActivity;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.tts.SpeakListener;
import cn.mucang.sundial.library.tts.Tts;
import com.amap.api.maps.model.MyLocationStyle;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\"\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010,\u001a\u00020\u001a\u0012\u0006\u0010(\u001a\u00020\u001a\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010*\u001a\u0004\u0018\u00010)¢\u0006\u0004\b-\u0010.J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\u0005\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u000fR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\u001cR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010,\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010\u001c¨\u0006/"}, d2 = {"Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;", "", "Ljava/io/File;", "file", "Lkotlin/v;", "uploadImage", "(Ljava/io/File;)V", "Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "photoRecord", "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V", "", "path", "createPhotoRecord", "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;", "releaseCamera", "()V", "checkCamera", "Ljava/lang/Runnable;", "onComplete", "playSound", "(Ljava/lang/Runnable;)V", "playTts", "takePicture", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coach", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "", "personMode", "I", "Lcn/mucang/sundial/library/device/BaseCamera;", "cameraUtil", "Lcn/mucang/sundial/library/device/BaseCamera;", "checkCameraTask", "Ljava/lang/Runnable;", "cn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1", "cameraResult", "Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;", "Landroid/content/Context;", "context", "Landroid/content/Context;", "eventType", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "student", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "uploadMode", "<init>", "(Landroid/content/Context;IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class AutoTakePhotoHelper {
    private final AutoTakePhotoHelper$cameraResult$1 cameraResult;
    private BaseCamera cameraUtil;
    private final Runnable checkCameraTask;
    private final CoachInfo coach;
    private final Context context;
    private final int eventType;
    private final int personMode;
    private final StudentInfo student;
    private final int uploadMode;

    /* JADX INFO: renamed from: cn.mucang.sundial.library.util.AutoTakePhotoHelper$playSound$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "invoke", "()V", "releaseSoundPool"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass1 extends Lambda implements Function0<v> {
        final /* synthetic */ Runnable $onComplete;
        final /* synthetic */ SoundPool $soundPool;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SoundPool soundPool, Runnable runnable) {
            super(0);
            this.$soundPool = soundPool;
            this.$onComplete = runnable;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            invoke2();
            return v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            try {
                Result.Companion companion = Result.INSTANCE;
                this.$soundPool.release();
                Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(k.a(th));
            }
            this.$onComplete.run();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.util.AutoTakePhotoHelper$playSound$2, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\t\u001a\u00020\u00062\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Landroid/media/SoundPool;", "kotlin.jvm.PlatformType", "<anonymous parameter 0>", "", TtmlNode.ATTR_ID, "status", "Lkotlin/v;", "onLoadComplete", "(Landroid/media/SoundPool;II)V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass2 implements SoundPool.OnLoadCompleteListener {
        final /* synthetic */ SoundPool $soundPool;

        AnonymousClass2(SoundPool soundPool) {
            this.$soundPool = soundPool;
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public final void onLoadComplete(SoundPool soundPool, int i, int i2) {
            if (i2 == 0) {
                this.$soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.util.AutoTakePhotoHelper$playSound$3, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass3 implements Runnable {
        final /* synthetic */ AnonymousClass1 $releaseSoundPool$1;

        AnonymousClass3(AnonymousClass1 anonymousClass1) {
            this.$releaseSoundPool$1 = anonymousClass1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.$releaseSoundPool$1.invoke2();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.util.AutoTakePhotoHelper$playTts$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"cn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1", "Lcn/mucang/sundial/library/tts/SpeakListener;", "", MyLocationStyle.ERROR_CODE, "", "errorMsg", "Lkotlin/v;", "onCompleted", "(ILjava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C04391 implements SpeakListener {
        final /* synthetic */ int $delay;
        final /* synthetic */ Runnable $onComplete;

        C04391(Runnable runnable, int i) {
            this.$onComplete = runnable;
            this.$delay = i;
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onBufferProgress(int i, int i2, int i3, String str) {
            SpeakListener.DefaultImpls.onBufferProgress(this, i, i2, i3, str);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onCompleted(int errorCode, String errorMsg) {
            u.d(new Runnable() { // from class: cn.mucang.sundial.library.util.AutoTakePhotoHelper$playTts$1$onCompleted$1
                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.$onComplete.run();
                }
            }, this.$delay * 1000);
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

    public AutoTakePhotoHelper(Context context, int i, int i2, int i3, CoachInfo coachInfo, StudentInfo studentInfo) {
        r.e(context, "context");
        this.context = context;
        this.personMode = i;
        this.uploadMode = i2;
        this.eventType = i3;
        this.coach = coachInfo;
        this.student = studentInfo;
        this.checkCameraTask = new Runnable() { // from class: cn.mucang.sundial.library.util.AutoTakePhotoHelper$checkCameraTask$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.checkCamera();
            }
        };
        this.cameraResult = new AutoTakePhotoHelper$cameraResult$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkCamera() {
        BaseCamera baseCamera = this.cameraUtil;
        if ((baseCamera != null ? baseCamera.cameraCount() : 0) > 0) {
            return;
        }
        releaseCamera();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PhotoRecord createPhotoRecord(String path) {
        long j;
        String str;
        String studentNo;
        String coachNo;
        String str2 = "";
        long jCurrentTimeMillis = 0;
        if (this.personMode != PersonMode.COACH.ordinal()) {
            StudentInfo studentInfo = this.student;
            if (studentInfo != null && (studentNo = studentInfo.getStudentNo()) != null) {
                str2 = studentNo;
            }
            if (this.eventType == EventType.STUDENT_TRAINING.valueOf()) {
                StudentInfo studentInfo2 = this.student;
                long classroomId = studentInfo2 != null ? studentInfo2.getClassroomId() : 0L;
                if (classroomId <= 0) {
                    jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
                    StudentInfo studentInfo3 = this.student;
                    if (studentInfo3 != null) {
                        studentInfo3.setClassroomId(jCurrentTimeMillis);
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
        CoachInfo coachInfo = this.coach;
        if (coachInfo != null && (coachNo = coachInfo.getCoachNo()) != null) {
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
    public final void playSound(Runnable onComplete) {
        if (SundialManager.getInstance().playTakePhotoVoice()) {
            playTts(onComplete);
        } else {
            onComplete.run();
        }
    }

    private final void playTts(Runnable onComplete) {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        int takePhotoDelay = sundialManager.getTakePhotoDelay();
        String string = this.context.getString(R.string.tt_voice_take_pic, new ConvertNum(takePhotoDelay).convert());
        r.d(string, "context.getString(R.stri…vertNum(delay).convert())");
        Tts.speak(string, new C04391(onComplete, takePhotoDelay));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void releaseCamera() {
        BaseCamera baseCamera = this.cameraUtil;
        if (baseCamera != null) {
            baseCamera.pause();
            baseCamera.release();
            this.cameraUtil = null;
        }
        TakePhotoManager.setTakingPhoto(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadImage(final File file) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.library.util.AutoTakePhotoHelper.uploadImage.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    AutoTakePhotoHelper autoTakePhotoHelper = AutoTakePhotoHelper.this;
                    String absolutePath = file.getAbsolutePath();
                    r.d(absolutePath, "file.absolutePath");
                    PhotoRecord photoRecordCreatePhotoRecord = autoTakePhotoHelper.createPhotoRecord(absolutePath);
                    UploadImageManager.getInstance().savePhotoRecord(photoRecordCreatePhotoRecord);
                    if (AutoTakePhotoHelper.this.uploadMode != UploadMode.TMP_SAVE_LOCAL.valueOf()) {
                        AutoTakePhotoHelper.this.uploadImage(photoRecordCreatePhotoRecord);
                    }
                    Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
            }
        });
    }

    public final void takePicture() {
        boolean zIsAtLeast;
        if (TakePhotoManager.isTakingPhoto()) {
            return;
        }
        Activity activity = ActivityUtil.INSTANCE.topActivity();
        TextureView dummyTexture = null;
        if (!(activity instanceof BaseActivity)) {
            activity = null;
        }
        BaseActivity baseActivity = (BaseActivity) activity;
        if (baseActivity != null) {
            Lifecycle lifecycle = baseActivity.getLifecycle();
            r.d(lifecycle, "it.lifecycle");
            zIsAtLeast = lifecycle.b().isAtLeast(Lifecycle.State.RESUMED);
        } else {
            zIsAtLeast = false;
        }
        if (zIsAtLeast || GlobalData.INSTANCE.getDevice().allowGotoBackground()) {
            u.d(this.checkCameraTask, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            releaseCamera();
            if (zIsAtLeast && baseActivity != null) {
                dummyTexture = baseActivity.getDummyTexture();
            }
            BaseCamera baseCameraCreateCameraUtil = SundialDevice.INSTANCE.createCameraUtil(this.context, this.cameraResult, dummyTexture, null, false);
            this.cameraUtil = baseCameraCreateCameraUtil;
            baseCameraCreateCameraUtil.init();
            baseCameraCreateCameraUtil.open();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadImage(PhotoRecord photoRecord) throws ExecutionException, InterruptedException {
        if (this.personMode != PersonMode.STUDENT.ordinal() || photoRecord.getClassroomId() <= 0) {
            UploadImageManager.getInstance().uploadPhoto(photoRecord);
        } else {
            UploadImageManager.getInstance().uploadPhotoByClassroom(photoRecord);
        }
    }
}
