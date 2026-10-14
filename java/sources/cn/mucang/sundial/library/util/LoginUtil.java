package cn.mucang.sundial.library.util;

import android.app.Application;
import android.content.Intent;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
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
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadMode;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.SundialCallBack;
import cn.mucang.sundial.library.activity.BaseActivity;
import cn.mucang.sundial.library.activity.FaceCheckActivity;
import cn.mucang.sundial.library.activity.TopActivity;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.widget.ChooseSubjectDialog;
import cn.mucang.sundial.library.widget.DialogCallBack;
import com.mobile.auth.gatewayauth.ResultCode;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b0\u0010*J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\nJ!\u0010\u000e\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J=\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u001f\u0010 J=\u0010%\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00172\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b'\u0010(J\r\u0010)\u001a\u00020\u0004¢\u0006\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\u00158\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010-\u001a\u00020\u00158\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010,R\u0016\u0010.\u001a\u00020\u00158\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u0010/\u001a\u00020\u00158\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b/\u0010,¨\u00061"}, d2 = {"Lcn/mucang/sundial/library/util/LoginUtil;", "", "Lcn/mucang/sundial/library/activity/TopActivity;", "activity", "Lkotlin/v;", "executeCoachSignOut", "(Lcn/mucang/sundial/library/activity/TopActivity;)V", "executeStudentSignOut", "", "coachLoginSuccess", "()Z", "studentLoginSuccess", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachInfo", "executeCoachLogin", "(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentInfo", "executeStudentLogin", "(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "Lcn/mucang/sundial/library/activity/BaseActivity;", "", "personMode", "", "idCardNo", "authToken", "xyToken", "loginWithFaceCheck", "(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "executeSignOut", "(Lcn/mucang/sundial/library/activity/TopActivity;I)V", "logoutWithFaceCheck", "(Lcn/mucang/sundial/library/activity/BaseActivity;I)V", "photoPath", "courseSubject", "Lcn/mucang/sundial/library/SundialCallBack;", "callBack", "studentSilenceLogin", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/mucang/sundial/library/SundialCallBack;)V", "studentSilenceLogout", "(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V", "registerLoginLogoutTimeoutCallback", "()V", "REQUEST_CODE_STUDENT_SIGN_OUT", "I", "REQUEST_CODE_COACH_SIGN_OUT", "REQUEST_CODE_COACH_SIGN_IN", "REQUEST_CODE_STUDENT_SIGN_IN", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LoginUtil {
    public static final LoginUtil INSTANCE = new LoginUtil();
    public static final int REQUEST_CODE_COACH_SIGN_IN = 1;
    public static final int REQUEST_CODE_COACH_SIGN_OUT = 2;
    public static final int REQUEST_CODE_STUDENT_SIGN_IN = 3;
    public static final int REQUEST_CODE_STUDENT_SIGN_OUT = 4;

    /* JADX INFO: renamed from: cn.mucang.sundial.library.util.LoginUtil$studentSilenceLogin$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "cn.mucang.sundial.library.util.LoginUtil$studentSilenceLogin$1", f = "LoginUtil.kt", l = {l.RECEIVE_FAULT_CODE_CLEAR_RET}, m = "invokeSuspend")
    static final class C04461 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ String $authToken;
        final /* synthetic */ SundialCallBack $callBack;
        final /* synthetic */ int $courseSubject;
        final /* synthetic */ String $idCardNo;
        final /* synthetic */ String $photoPath;
        final /* synthetic */ String $xyToken;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04461(String str, SundialCallBack sundialCallBack, String str2, String str3, String str4, int i, Continuation continuation) {
            super(2, continuation);
            this.$photoPath = str;
            this.$callBack = sundialCallBack;
            this.$idCardNo = str2;
            this.$authToken = str3;
            this.$xyToken = str4;
            this.$courseSubject = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> completion) {
            r.e(completion, "completion");
            return new C04461(this.$photoPath, this.$callBack, this.$idCardNo, this.$authToken, this.$xyToken, this.$courseSubject, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((C04461) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v4, types: [T, androidx.lifecycle.i0$b] */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, androidx.lifecycle.i0$b] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                if (!new File(this.$photoPath).exists()) {
                    Tts.speak$default("计时学员照片不存在", null, 2, null);
                    SundialLog.normal("-Sundial 计时学员照片不存在");
                    this.$callBack.onResult(false);
                    return v.f15822a;
                }
                CoroutineDispatcher coroutineDispatcherB = w0.b();
                LoginUtil$studentSilenceLogin$1$studentInfo$1 loginUtil$studentSilenceLogin$1$studentInfo$1 = new LoginUtil$studentSilenceLogin$1$studentInfo$1(this, null);
                this.label = 1;
                obj = f.c(coroutineDispatcherB, loginUtil$studentSilenceLogin$1$studentInfo$1, this);
                if (obj == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            final StudentInfo studentInfo = (StudentInfo) obj;
            if (studentInfo == null) {
                Tts.speak$default("获取计时学员信息失败", null, 2, null);
                SundialLog.normal("-Sundial 获取计时学员信息失败");
                this.$callBack.onResult(false);
                return v.f15822a;
            }
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = "";
            LiveBus.Companion companion = LiveBus.INSTANCE;
            final androidx.lifecycle.i0 i0VarWith = companion.with(StudentLoginResponseEvent.class);
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = null;
            ?? bVar = new androidx.lifecycle.i0.b(i0VarWith, new a0<StudentLoginResponseEvent>() { // from class: cn.mucang.sundial.library.util.LoginUtil.studentSilenceLogin.1.1
                @Override // androidx.lifecycle.a0
                public final void onChanged(StudentLoginResponseEvent it) {
                    String string;
                    androidx.lifecycle.i0.b bVar2 = (androidx.lifecycle.i0.b) ref$ObjectRef2.element;
                    if (bVar2 != null) {
                        i0VarWith.m(bVar2);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("-Sundial 静默学员签到");
                    LoginUtil loginUtil = LoginUtil.INSTANCE;
                    if (loginUtil.studentLoginSuccess()) {
                        string = ResultCode.MSG_SUCCESS;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("失败 ");
                        r.d(it, "it");
                        sb2.append(it.getExtraMessage());
                        string = sb2.toString();
                    }
                    sb.append(string);
                    SundialLog.normal(sb.toString());
                    C04461.this.$callBack.onResult(loginUtil.studentLoginSuccess());
                }
            });
            ref$ObjectRef2.element = bVar;
            i0VarWith.m((androidx.lifecycle.i0.b) bVar);
            i0VarWith.p((androidx.lifecycle.i0.b) ref$ObjectRef2.element);
            final androidx.lifecycle.i0 i0VarWith2 = companion.with(UploadImageEvent.class);
            final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            ref$ObjectRef3.element = null;
            ?? bVar2 = new androidx.lifecycle.i0.b(i0VarWith2, new a0<UploadImageEvent>() { // from class: cn.mucang.sundial.library.util.LoginUtil.studentSilenceLogin.1.2
                @Override // androidx.lifecycle.a0
                public final void onChanged(UploadImageEvent uploadImageEvent) {
                    androidx.lifecycle.i0.b bVar3 = (androidx.lifecycle.i0.b) ref$ObjectRef3.element;
                    if (bVar3 != null) {
                        i0VarWith2.m(bVar3);
                    }
                    if (uploadImageEvent != null && r.a((String) ref$ObjectRef.element, uploadImageEvent.photoId)) {
                        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.studentSilenceLogin.1.2.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    boolean zStudentLogin = SundialManager.getInstance().studentLogin(studentInfo, System.currentTimeMillis());
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("-Sundial 学员签到消息发送");
                                    sb.append(zStudentLogin ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                                    SundialLog.normal(sb.toString());
                                } catch (Exception e2) {
                                    SundialLog.normal("-Sundial 学员静默签到失败 " + e2.getLocalizedMessage());
                                }
                            }
                        });
                    } else {
                        SundialLog.normal("-Sundial 学员静默照片上传失败");
                        C04461.this.$callBack.onResult(false);
                    }
                }
            });
            ref$ObjectRef3.element = bVar2;
            i0VarWith2.m((androidx.lifecycle.i0.b) bVar2);
            i0VarWith2.p((androidx.lifecycle.i0.b) ref$ObjectRef3.element);
            ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.studentSilenceLogin.1.3
                /* JADX WARN: Type inference failed for: r2v3, types: [T, java.lang.Object, java.lang.String] */
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        String studentNo = studentInfo.getStudentNo();
                        if (studentNo == null) {
                            studentNo = "";
                        }
                        String str = studentNo;
                        long jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
                        UploadImageManager uploadImageManager = UploadImageManager.getInstance();
                        int iValueOf = UploadMode.TERMINAL_TAKE.valueOf();
                        int iValueOf2 = EventType.STUDENT_SIGN_IN.valueOf();
                        String str2 = C04461.this.$photoPath;
                        Application context = MucangConfig.getContext();
                        r.d(context, "MucangConfig.getContext()");
                        PhotoRecord photoTask = uploadImageManager.createPhotoRecord(str, jCurrentTimeMillis, iValueOf, iValueOf2, str2, context.getResources().getDimensionPixelSize(R.dimen.tt__text_size_water));
                        Ref$ObjectRef ref$ObjectRef4 = ref$ObjectRef;
                        r.d(photoTask, "photoTask");
                        ?? photoId = photoTask.getPhotoId();
                        r.d(photoId, "photoTask.photoId");
                        ref$ObjectRef4.element = photoId;
                        UploadImageManager.getInstance().savePhotoRecord(photoTask);
                        UploadImageManager.getInstance().uploadPhotoByClassroom(photoTask);
                        SundialLog.normal("-Sundial 上传照片");
                    } catch (Exception e2) {
                        SundialLog.normal("-Sundial 学员静默照片上传失败 " + e2.getLocalizedMessage());
                        C04461.this.$callBack.onResult(false);
                    }
                }
            });
            return v.f15822a;
        }
    }

    private LoginUtil() {
    }

    private final void executeCoachSignOut(final TopActivity activity) {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.executeCoachSignOut.1
            @Override // java.lang.Runnable
            public final void run() {
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                CoachInfo lastCoach = sundialManager.getLastCoach();
                if (lastCoach != null) {
                    String idCard = lastCoach.getIdCard();
                    if (!(idCard == null || idCard.length() == 0)) {
                        TopActivity topActivity = activity;
                        if (topActivity != null) {
                            topActivity.showLoadingDialog("");
                        }
                        if (SundialManager.getInstance().coachLogout(lastCoach.getCoachNo())) {
                            return;
                        }
                        LiveBus.INSTANCE.post(new CoachLogoutResponseEvent());
                        return;
                    }
                }
                ToastUtil.INSTANCE.showToastOnce(R.string.tt_id_empty);
            }
        });
    }

    private final void executeStudentSignOut(final TopActivity activity) {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.executeStudentSignOut.1
            @Override // java.lang.Runnable
            public final void run() {
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                StudentInfo lastStudent = sundialManager.getLastStudent();
                if (lastStudent != null) {
                    String idCard = lastStudent.getIdCard();
                    if (!(idCard == null || idCard.length() == 0)) {
                        TopActivity topActivity = activity;
                        if (topActivity != null) {
                            topActivity.showLoadingDialog("");
                        }
                        if (SundialManager.getInstance().studentLogout(lastStudent.getStudentNo(), ServerTimeHelper.INSTANCE.getCurrentTime())) {
                            return;
                        }
                        LiveBus.INSTANCE.post(new StudentLogoutResponseEvent());
                        return;
                    }
                }
                ToastUtil.INSTANCE.showToastOnce(R.string.tt_id_empty);
            }
        });
    }

    public final boolean coachLoginSuccess() {
        return SundialManager.getInstance().coachLoginSuccess();
    }

    public final void executeCoachLogin(final TopActivity activity, final CoachInfo coachInfo) {
        if (coachInfo == null) {
            SundialLog.normal(activity != null ? activity.getText(R.string.tt_get_server_coach_info_fail) : null);
            ToastUtil.INSTANCE.showToastOnce(R.string.tt_get_server_coach_info_fail);
            if (activity != null) {
                activity.hideLoadingDialog();
            }
        }
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.executeCoachLogin.1
            @Override // java.lang.Runnable
            public final void run() {
                TopActivity topActivity = activity;
                if (topActivity != null) {
                    topActivity.showLoadingDialog("");
                }
                if (SundialManager.getInstance().coachLogin(coachInfo)) {
                    return;
                }
                LiveBus.INSTANCE.post(new CoachLoginResponseEvent(null));
            }
        });
    }

    public final void executeSignOut(TopActivity activity, int personMode) {
        if (personMode == PersonMode.COACH.ordinal()) {
            executeCoachSignOut(activity);
        } else {
            executeStudentSignOut(activity);
        }
    }

    public final void executeStudentLogin(final TopActivity activity, final StudentInfo studentInfo) {
        if (studentInfo == null) {
            ToastUtil.INSTANCE.showToastOnce(R.string.tt_get_server_student_info_fail);
            if (activity != null) {
                activity.hideLoadingDialog();
            }
        }
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.executeStudentLogin.1
            @Override // java.lang.Runnable
            public final void run() {
                boolean zStudentLogin;
                TopActivity topActivity = activity;
                String str = "";
                if (topActivity != null) {
                    topActivity.showLoadingDialog("");
                }
                long serverTime = ServerTimeHelper.getServerTime();
                if (serverTime > 0) {
                    zStudentLogin = SundialManager.getInstance().studentLogin(studentInfo, serverTime);
                } else {
                    zStudentLogin = false;
                    str = "同步签到时间失败";
                }
                if (zStudentLogin) {
                    return;
                }
                LiveBus.INSTANCE.post(new StudentLoginResponseEvent(str));
            }
        });
    }

    public final void loginWithFaceCheck(final BaseActivity activity, final int personMode, final String idCardNo, final String authToken, final String xyToken) {
        r.e(activity, "activity");
        r.e(idCardNo, "idCardNo");
        r.e(authToken, "authToken");
        r.e(xyToken, "xyToken");
        if (personMode != PersonMode.COACH.ordinal()) {
            new ChooseSubjectDialog.Builder(activity, true).setContent(new DialogCallBack() { // from class: cn.mucang.sundial.library.util.LoginUtil.loginWithFaceCheck.2
                @Override // cn.mucang.sundial.library.widget.DialogCallBack
                public void onSelect(int index) {
                    BaseActivity baseActivity = activity;
                    Intent intent = new Intent(activity, (Class<?>) FaceCheckActivity.class);
                    intent.putExtra(ExtraKey.personMode, personMode);
                    intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
                    intent.putExtra(ExtraKey.uploadEventType, EventType.STUDENT_SIGN_IN.valueOf());
                    intent.putExtra(ExtraKey.idNum, idCardNo);
                    intent.putExtra(ExtraKey.authToken, authToken);
                    intent.putExtra(ExtraKey.courseSubject, index);
                    intent.putExtra(ExtraKey.xyToken, xyToken);
                    v vVar = v.f15822a;
                    baseActivity.startActivityForResult(intent, 3);
                }
            }).show();
            return;
        }
        Intent intent = new Intent(activity, (Class<?>) FaceCheckActivity.class);
        intent.putExtra(ExtraKey.personMode, personMode);
        intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
        intent.putExtra(ExtraKey.uploadEventType, EventType.COACH_SIGN_IN.valueOf());
        intent.putExtra(ExtraKey.idNum, idCardNo);
        intent.putExtra(ExtraKey.authToken, authToken);
        v vVar = v.f15822a;
        activity.startActivityForResult(intent, 1);
    }

    public final void logoutWithFaceCheck(BaseActivity activity, int personMode) {
        String idCard;
        String idCard2;
        r.e(activity, "activity");
        PersonMode personMode2 = PersonMode.COACH;
        String str = "";
        if (personMode == personMode2.ordinal()) {
            if (!coachLoginSuccess()) {
                ToastUtil.INSTANCE.showToastOnce(R.string.tt_sign_out_fail);
                return;
            }
            SundialManager sundialManager = SundialManager.getInstance();
            r.d(sundialManager, "SundialManager.getInstance()");
            CoachInfo lastCoach = sundialManager.getLastCoach();
            Intent intent = new Intent(activity, (Class<?>) FaceCheckActivity.class);
            intent.putExtra(ExtraKey.personMode, personMode2.ordinal());
            intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_OUT.ordinal());
            intent.putExtra(ExtraKey.uploadEventType, EventType.COACH_SIGN_OUT.valueOf());
            if (lastCoach != null && (idCard2 = lastCoach.getIdCard()) != null) {
                str = idCard2;
            }
            intent.putExtra(ExtraKey.idNum, str);
            v vVar = v.f15822a;
            activity.startActivityForResult(intent, 2);
            return;
        }
        if (!studentLoginSuccess()) {
            ToastUtil.INSTANCE.showToastOnce(R.string.tt_sign_out_fail);
            return;
        }
        SundialManager sundialManager2 = SundialManager.getInstance();
        r.d(sundialManager2, "SundialManager.getInstance()");
        StudentInfo lastStudent = sundialManager2.getLastStudent();
        Intent intent2 = new Intent(activity, (Class<?>) FaceCheckActivity.class);
        intent2.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
        intent2.putExtra(ExtraKey.checkMode, CheckMode.SIGN_OUT.ordinal());
        intent2.putExtra(ExtraKey.uploadEventType, EventType.STUDENT_SIGN_OUT.valueOf());
        if (lastStudent != null && (idCard = lastStudent.getIdCard()) != null) {
            str = idCard;
        }
        intent2.putExtra(ExtraKey.idNum, str);
        v vVar2 = v.f15822a;
        activity.startActivityForResult(intent2, 4);
    }

    public final void registerLoginLogoutTimeoutCallback() {
        TimeoutManager.getInstance().registerTimeoutCallback(257, true, new TimeoutManager.ITimeout() { // from class: cn.mucang.sundial.library.util.LoginUtil.registerLoginLogoutTimeoutCallback.1
            @Override // cn.mucang.sundial.android.tcp.TimeoutManager.ITimeout
            public final void onTimeout() {
                LiveBus.INSTANCE.post(new CoachLoginResponseEvent(null));
            }
        });
        TimeoutManager.getInstance().registerTimeoutCallback(513, true, new TimeoutManager.ITimeout() { // from class: cn.mucang.sundial.library.util.LoginUtil.registerLoginLogoutTimeoutCallback.2
            @Override // cn.mucang.sundial.android.tcp.TimeoutManager.ITimeout
            public final void onTimeout() {
                LiveBus.INSTANCE.post(new StudentLoginResponseEvent(null));
            }
        });
        TimeoutManager.getInstance().registerTimeoutCallback(258, true, new TimeoutManager.ITimeout() { // from class: cn.mucang.sundial.library.util.LoginUtil.registerLoginLogoutTimeoutCallback.3
            @Override // cn.mucang.sundial.android.tcp.TimeoutManager.ITimeout
            public final void onTimeout() {
                LiveBus.INSTANCE.post(new CoachLogoutResponseEvent());
            }
        });
        TimeoutManager.getInstance().registerTimeoutCallback(Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE, true, new TimeoutManager.ITimeout() { // from class: cn.mucang.sundial.library.util.LoginUtil.registerLoginLogoutTimeoutCallback.4
            @Override // cn.mucang.sundial.android.tcp.TimeoutManager.ITimeout
            public final void onTimeout() {
                LiveBus.INSTANCE.post(new StudentLogoutResponseEvent());
            }
        });
    }

    public final boolean studentLoginSuccess() {
        return SundialManager.getInstance().studentLoginSuccess();
    }

    public final void studentSilenceLogin(String idCardNo, String authToken, String xyToken, String photoPath, int courseSubject, SundialCallBack callBack) {
        r.e(idCardNo, "idCardNo");
        r.e(authToken, "authToken");
        r.e(xyToken, "xyToken");
        r.e(photoPath, "photoPath");
        r.e(callBack, "callBack");
        g.b(j0.b(), null, null, new C04461(photoPath, callBack, idCardNo, authToken, xyToken, courseSubject, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.lifecycle.i0$b] */
    public final void studentSilenceLogout(final String photoPath, final SundialCallBack callBack) {
        r.e(photoPath, "photoPath");
        r.e(callBack, "callBack");
        final androidx.lifecycle.i0 i0VarWith = LiveBus.INSTANCE.with(StudentLogoutResponseEvent.class);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = null;
        ?? bVar = new androidx.lifecycle.i0.b(i0VarWith, new a0<StudentLogoutResponseEvent>() { // from class: cn.mucang.sundial.library.util.LoginUtil.studentSilenceLogout.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(StudentLogoutResponseEvent studentLogoutResponseEvent) {
                StringBuilder sb = new StringBuilder();
                sb.append("-Sundial 静默学员签退");
                LoginUtil loginUtil = LoginUtil.INSTANCE;
                sb.append(!loginUtil.studentLoginSuccess() ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                SundialLog.normal(sb.toString());
                callBack.onResult(!loginUtil.studentLoginSuccess());
                androidx.lifecycle.i0.b bVar2 = (androidx.lifecycle.i0.b) ref$ObjectRef.element;
                if (bVar2 != null) {
                    i0VarWith.m(bVar2);
                }
            }
        });
        ref$ObjectRef.element = bVar;
        i0VarWith.m((androidx.lifecycle.i0.b) bVar);
        i0VarWith.i((androidx.lifecycle.i0.b) ref$ObjectRef.element);
        new Thread(new Runnable() { // from class: cn.mucang.sundial.library.util.LoginUtil.studentSilenceLogout.2
            @Override // java.lang.Runnable
            public final void run() {
                String studentNo;
                try {
                    if (!new File(photoPath).exists()) {
                        Tts.speak$default("计时学员照片不存在", null, 2, null);
                        SundialLog.normal("-Sundial 计时学员照片不存在");
                        callBack.onResult(false);
                        return;
                    }
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    StudentInfo lastStudentInfo = sundialManager.getLastStudent();
                    if (lastStudentInfo == null || (studentNo = lastStudentInfo.getStudentNo()) == null) {
                        studentNo = "";
                    }
                    String str = studentNo;
                    long classroomId = lastStudentInfo != null ? lastStudentInfo.getClassroomId() : 0L;
                    UploadImageManager uploadImageManager = UploadImageManager.getInstance();
                    int iValueOf = UploadMode.TERMINAL_TAKE.valueOf();
                    int iValueOf2 = EventType.STUDENT_SIGN_OUT.valueOf();
                    String str2 = photoPath;
                    Application context = MucangConfig.getContext();
                    r.d(context, "MucangConfig.getContext()");
                    PhotoRecord photoRecordCreatePhotoRecord = uploadImageManager.createPhotoRecord(str, classroomId, iValueOf, iValueOf2, str2, context.getResources().getDimensionPixelSize(R.dimen.tt__text_size_water));
                    UploadImageManager.getInstance().savePhotoRecord(photoRecordCreatePhotoRecord);
                    UploadImageManager.getInstance().uploadPhotoByClassroom(photoRecordCreatePhotoRecord);
                    SundialLog.normal("-Sundial 上传照片");
                    SundialManager sundialManager2 = SundialManager.getInstance();
                    r.d(lastStudentInfo, "lastStudentInfo");
                    boolean zStudentLogout = sundialManager2.studentLogout(lastStudentInfo.getStudentNo(), 0L);
                    StringBuilder sb = new StringBuilder();
                    sb.append("-Sundial 学员签退消息发送");
                    sb.append(zStudentLogout ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                    SundialLog.normal(sb.toString());
                } catch (Exception e2) {
                    SundialLog.normal("-Sundial 学员静默签退失败 " + e2.getLocalizedMessage());
                    callBack.onResult(false);
                }
            }
        }).start();
    }
}
