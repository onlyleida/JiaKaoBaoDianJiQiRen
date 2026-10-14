package cn.mucang.sundial.library.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.AutoTakePhotoWithActivityEvent;
import cn.mucang.sundial.android.eventbus.event.CourseTimeChangeEvent;
import cn.mucang.sundial.android.eventbus.event.DialogEvent;
import cn.mucang.sundial.android.eventbus.event.StudentLogoutResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.upload.UploadMode;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.timer.train.TrainManager;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.adapter.TabPagerAdapter;
import cn.mucang.sundial.library.adapter.VoiceTabPagerAdapter;
import cn.mucang.sundial.library.databinding.TtActivityStudentInfoBinding;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.SpeakListener;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ActivityUtil;
import cn.mucang.sundial.library.util.ConvertNum;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.viewmodel.StudentInfoViewModel;
import cn.mucang.sundial.library.widget.BlankDialog;
import cn.mucang.sundial.library.widget.DialogCallBack;
import cn.mucang.sundial.library.widget.MessageConfirmDialog;
import cn.mucang.sundial.library.widget.TTNavigator;
import cn.mucang.sundial.library.widget.TakePhotoConfirmDialog;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.j.a;
import f.a.a.a.j.c;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001a\u0010\u0004J)\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0014¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%R\u0016\u0010'\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.R\u001c\u00101\u001a\b\u0012\u0004\u0012\u0002000/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00104\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R \u0010=\u001a\f0<R\b\u0012\u0004\u0012\u0002000/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcn/mucang/sundial/library/activity/StudentInfoActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "goToTrainingFaceCheckActivity", "startTrainingFaceCheck", "startCoachTrainingFaceCheck", "", "delay", "playSound", "(I)V", "startCountDown", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "info", "updateUI", "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "closeDialog", "initViewModel", "initData", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "onBackPressed", "onDestroy", "", "isHiddenSelfCheckBtn", "()Z", "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;", "binding", "Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;", "Lcn/mucang/sundial/library/adapter/TabPagerAdapter;", "adapter", "Lcn/mucang/sundial/library/adapter/TabPagerAdapter;", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;", "courseTimeLiveData", "Landroidx/lifecycle/i0;", "Landroid/os/CountDownTimer;", "countDownTimer", "Landroid/os/CountDownTimer;", "Lcn/mucang/sundial/library/adapter/VoiceTabPagerAdapter;", "voiceTabPagerAdapter", "Lcn/mucang/sundial/library/adapter/VoiceTabPagerAdapter;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "dialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "Landroidx/lifecycle/i0$b;", "courseTimeObserver", "Landroidx/lifecycle/i0$b;", "diffDelay", "I", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class StudentInfoActivity extends BaseActivity {
    private TabPagerAdapter adapter;
    private TtActivityStudentInfoBinding binding;
    private CountDownTimer countDownTimer;
    private final i0<CourseTimeChangeEvent> courseTimeLiveData;
    private final i0<CourseTimeChangeEvent>.b courseTimeObserver;
    private BlankDialog dialog;
    private int diffDelay;
    private StudentInfoViewModel viewModel;
    private VoiceTabPagerAdapter voiceTabPagerAdapter;

    public StudentInfoActivity() {
        i0<CourseTimeChangeEvent> i0VarWith = LiveBus.INSTANCE.with(CourseTimeChangeEvent.class);
        this.courseTimeLiveData = i0VarWith;
        this.courseTimeObserver = new i0.b(i0VarWith, new a0<CourseTimeChangeEvent>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$courseTimeObserver$1
            @Override // androidx.lifecycle.a0
            public final void onChanged(CourseTimeChangeEvent it) {
                if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                    long j = StudentInfoActivity.access$getViewModel$p(this.this$0).get_savedCourseTime();
                    r.d(it, "it");
                    StudentInfoActivity.access$getViewModel$p(this.this$0).saveCourseTimeAndDistance(j + it.getCourseTime(), it.getTotalDistance());
                }
            }
        });
        this.diffDelay = 5;
    }

    public static final /* synthetic */ TtActivityStudentInfoBinding access$getBinding$p(StudentInfoActivity studentInfoActivity) {
        TtActivityStudentInfoBinding ttActivityStudentInfoBinding = studentInfoActivity.binding;
        if (ttActivityStudentInfoBinding != null) {
            return ttActivityStudentInfoBinding;
        }
        r.u("binding");
        throw null;
    }

    public static final /* synthetic */ StudentInfoViewModel access$getViewModel$p(StudentInfoActivity studentInfoActivity) {
        StudentInfoViewModel studentInfoViewModel = studentInfoActivity.viewModel;
        if (studentInfoViewModel != null) {
            return studentInfoViewModel;
        }
        r.u("viewModel");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeDialog() {
        BlankDialog blankDialog = this.dialog;
        if (blankDialog != null) {
            r.c(blankDialog);
            if (blankDialog.isShowing()) {
                BlankDialog blankDialog2 = this.dialog;
                r.c(blankDialog2);
                blankDialog2.dismiss();
            }
        }
    }

    private final void goToTrainingFaceCheckActivity() {
        LiveBus.INSTANCE.with(AutoTakePhotoWithActivityEvent.class).q(this, new a0<AutoTakePhotoWithActivityEvent>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.goToTrainingFaceCheckActivity.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(AutoTakePhotoWithActivityEvent autoTakePhotoWithActivityEvent) {
                Lifecycle lifecycle = StudentInfoActivity.this.getLifecycle();
                r.d(lifecycle, "lifecycle");
                if (!lifecycle.b().isAtLeast(Lifecycle.State.RESUMED) || TakePhotoManager.isTakingPhoto()) {
                    return;
                }
                StudentInfoActivity.this.closeDialog();
                LinearLayout linearLayout = StudentInfoActivity.access$getBinding$p(StudentInfoActivity.this).takePhoto;
                r.d(linearLayout, "binding.takePhoto");
                linearLayout.setVisibility(8);
                LinearLayout linearLayout2 = StudentInfoActivity.access$getBinding$p(StudentInfoActivity.this).takeCoachPhoto;
                r.d(linearLayout2, "binding.takeCoachPhoto");
                linearLayout2.setVisibility(8);
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                int takePhotoDelay = sundialManager.getTakePhotoDelay();
                if (takePhotoDelay > StudentInfoActivity.this.diffDelay) {
                    StudentInfoActivity.this.playSound(takePhotoDelay);
                } else {
                    StudentInfoActivity.this.startTrainingFaceCheck();
                }
            }
        });
    }

    private final void initView() {
        final TtActivityStudentInfoBinding ttActivityStudentInfoBinding = this.binding;
        if (ttActivityStudentInfoBinding == null) {
            r.u("binding");
            throw null;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        r.d(supportFragmentManager, "supportFragmentManager");
        TabPagerAdapter tabPagerAdapter = new TabPagerAdapter(supportFragmentManager);
        CommonViewPager pager = ttActivityStudentInfoBinding.pager;
        r.d(pager, "pager");
        pager.setAdapter(tabPagerAdapter);
        CommonViewPager pager2 = ttActivityStudentInfoBinding.pager;
        r.d(pager2, "pager");
        pager2.setOffscreenPageLimit(3);
        TTNavigator tTNavigator = new TTNavigator(this);
        tTNavigator.setAdjustMode(false);
        MagicIndicator tab = ttActivityStudentInfoBinding.tab;
        r.d(tab, "tab");
        CommonViewPager pager3 = ttActivityStudentInfoBinding.pager;
        r.d(pager3, "pager");
        tTNavigator.bindTo(tab, pager3);
        v vVar = v.f15822a;
        this.adapter = tabPagerAdapter;
        ttActivityStudentInfoBinding.signOut.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击学员签退按钮");
                if (!DeviceUtils.hasNetWork()) {
                    StudentInfoActivity studentInfoActivity = this.this$0;
                    int i = R.string.tt_net_error;
                    String string = studentInfoActivity.getString(i);
                    r.d(string, "getString(R.string.tt_net_error)");
                    Tts.speak$default(string, null, 2, null);
                    SundialLog.normal(this.this$0.getResources().getText(i));
                    return;
                }
                if (TakePhotoManager.isTakingPhoto()) {
                    String string2 = this.this$0.getString(R.string.tt_voice_taking);
                    r.d(string2, "getString(R.string.tt_voice_taking)");
                    Tts.speak$default(string2, null, 2, null);
                    SundialLog.normal("正在拍照请稍候");
                    return;
                }
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                if (sundialManager.isOnlyGZMiniQRCode()) {
                    SundialLog.normal("广东学员，跳转学员扫码签退页面");
                    a aVarA = a.a(this.this$0);
                    Intent intent = new Intent(this.this$0, (Class<?>) LoginStudentActivity.class);
                    intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_OUT.ordinal());
                    v vVar2 = v.f15822a;
                    aVarA.c(intent, 1099, new c() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$$inlined$with$lambda$1.1
                        @Override // f.a.a.a.j.c
                        public final void onActivityResult(int i2, int i3, Intent intent2) {
                            if (i3 == -1) {
                                LoginUtil.INSTANCE.logoutWithFaceCheck(StudentInfoActivity$initView$$inlined$with$lambda$1.this.this$0, PersonMode.STUDENT.ordinal());
                            }
                        }
                    });
                } else {
                    LoginUtil.INSTANCE.logoutWithFaceCheck(this.this$0, PersonMode.STUDENT.ordinal());
                }
                if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                    return;
                }
                SundialLog.normal("学员未登录，跳转学员登录页面");
                KtxsKt.safeStartActivity(this.this$0, LoginStudentActivity.class, new Function1<Intent, v>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$1$2$3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(Intent intent2) {
                        invoke2(intent2);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Intent it) {
                        r.e(it, "it");
                        it.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
                        it.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
                    }
                });
                this.this$0.finish();
            }
        });
        LinearLayout playTts = ttActivityStudentInfoBinding.playTts;
        r.d(playTts, "playTts");
        playTts.setVisibility(DeviceUtils.isSingleApk(this) ? 0 : 8);
        ttActivityStudentInfoBinding.playTts.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$1$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击模拟语音播报");
                ConstraintLayout leftLayout = ttActivityStudentInfoBinding.leftLayout;
                r.d(leftLayout, "leftLayout");
                leftLayout.setVisibility(8);
                LinearLayout rightLayout = ttActivityStudentInfoBinding.rightLayout;
                r.d(rightLayout, "rightLayout");
                rightLayout.setVisibility(8);
                LinearLayout voiceLayout = ttActivityStudentInfoBinding.voiceLayout;
                r.d(voiceLayout, "voiceLayout");
                voiceLayout.setVisibility(0);
            }
        });
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        r.d(supportFragmentManager2, "supportFragmentManager");
        VoiceTabPagerAdapter voiceTabPagerAdapter = new VoiceTabPagerAdapter(supportFragmentManager2);
        CommonViewPager pagerVoice = ttActivityStudentInfoBinding.pagerVoice;
        r.d(pagerVoice, "pagerVoice");
        pagerVoice.setAdapter(voiceTabPagerAdapter);
        CommonViewPager pagerVoice2 = ttActivityStudentInfoBinding.pagerVoice;
        r.d(pagerVoice2, "pagerVoice");
        pagerVoice2.setOffscreenPageLimit(1);
        TTNavigator tTNavigator2 = new TTNavigator(this);
        tTNavigator2.setAdjustMode(false);
        MagicIndicator tabVoice = ttActivityStudentInfoBinding.tabVoice;
        r.d(tabVoice, "tabVoice");
        CommonViewPager pagerVoice3 = ttActivityStudentInfoBinding.pagerVoice;
        r.d(pagerVoice3, "pagerVoice");
        tTNavigator2.bindTo(tabVoice, pagerVoice3);
        this.voiceTabPagerAdapter = voiceTabPagerAdapter;
        ttActivityStudentInfoBinding.llBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$1$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击左上角返回");
                Tts.speakStop();
                ConstraintLayout leftLayout = ttActivityStudentInfoBinding.leftLayout;
                r.d(leftLayout, "leftLayout");
                leftLayout.setVisibility(0);
                LinearLayout rightLayout = ttActivityStudentInfoBinding.rightLayout;
                r.d(rightLayout, "rightLayout");
                rightLayout.setVisibility(0);
                LinearLayout voiceLayout = ttActivityStudentInfoBinding.voiceLayout;
                r.d(voiceLayout, "voiceLayout");
                voiceLayout.setVisibility(8);
            }
        });
        ttActivityStudentInfoBinding.takeCoachPhoto.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击教练拍照按钮");
                StudentInfoActivity studentInfoActivity = this.this$0;
                studentInfoActivity.dialog = new TakePhotoConfirmDialog.Builder(studentInfoActivity, true).setContent("确定要进行教练手动拍照吗？", new DialogCallBack() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$$inlined$with$lambda$2.1
                    @Override // cn.mucang.sundial.library.widget.DialogCallBack
                    public void onSelect(int index) {
                        if (index != 1) {
                            SundialLog.normal("取消拍照");
                        } else {
                            SundialLog.normal("确认拍照");
                            StudentInfoActivity$initView$$inlined$with$lambda$2.this.this$0.startCoachTrainingFaceCheck();
                        }
                    }
                }).show();
            }
        });
        ttActivityStudentInfoBinding.takePhoto.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$$inlined$with$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击拍照按钮");
                StudentInfoActivity studentInfoActivity = this.this$0;
                TakePhotoConfirmDialog.Builder builder = new TakePhotoConfirmDialog.Builder(studentInfoActivity, true);
                String string = this.this$0.getString(R.string.tt_take_photo);
                r.d(string, "getString(R.string.tt_take_photo)");
                studentInfoActivity.dialog = builder.setContent(string, new DialogCallBack() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity$initView$$inlined$with$lambda$3.1
                    @Override // cn.mucang.sundial.library.widget.DialogCallBack
                    public void onSelect(int index) {
                        if (index != 1) {
                            SundialLog.normal("取消拍照");
                            return;
                        }
                        SundialLog.normal("确认拍照");
                        TakePhotoManager.getInstance().start(true);
                        StudentInfoActivity$initView$$inlined$with$lambda$3.this.this$0.startTrainingFaceCheck();
                    }
                }).show();
            }
        });
        TrainManager trainManager = TrainManager.getInstance();
        StudentInfoViewModel studentInfoViewModel = this.viewModel;
        if (studentInfoViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        trainManager.start(studentInfoViewModel.get_savedCourseDistance());
        TakePhotoManager.getInstance().start(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void playSound(final int delay) {
        if (!SundialManager.getInstance().playTakePhotoVoice()) {
            startCountDown(delay);
            return;
        }
        String string = getString(R.string.tt_voice_take_pic, new Object[]{new ConvertNum(delay).convert()});
        r.d(string, "getString(R.string.tt_vo…vertNum(delay).convert())");
        SundialLog.normal(string);
        Tts.speakNow(string, new SpeakListener() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.playSound.1
            @Override // cn.mucang.sundial.library.tts.SpeakListener
            public void onBufferProgress(int i, int i2, int i3, String str) {
                SpeakListener.DefaultImpls.onBufferProgress(this, i, i2, i3, str);
            }

            @Override // cn.mucang.sundial.library.tts.SpeakListener
            public void onCompleted(int errorCode, String errorMsg) {
                StudentInfoActivity.this.startCountDown(delay);
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
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCoachTrainingFaceCheck() {
        Tts.speakStop();
        SundialLog.normal("跳转教练中途拍照页面");
        Intent intent = new Intent(this, (Class<?>) TrainingFaceCheckActivity.class);
        intent.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
        intent.putExtra(ExtraKey.uploadEventType, EventType.COACH_TRAINING.valueOf());
        intent.putExtra(ExtraKey.uploadMode, UploadMode.TERMINAL_TAKE.valueOf());
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        CoachInfo lastCoach = sundialManager.getLastCoach();
        intent.putExtra(ExtraKey.avatar, lastCoach != null ? lastCoach.getAvatar() : null);
        v vVar = v.f15822a;
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCountDown(final int delay) {
        TtActivityStudentInfoBinding ttActivityStudentInfoBinding = this.binding;
        if (ttActivityStudentInfoBinding == null) {
            r.u("binding");
            throw null;
        }
        TextView textView = ttActivityStudentInfoBinding.tvDelayNum;
        r.d(textView, "binding.tvDelayNum");
        textView.setText(String.valueOf(delay));
        TtActivityStudentInfoBinding ttActivityStudentInfoBinding2 = this.binding;
        if (ttActivityStudentInfoBinding2 == null) {
            r.u("binding");
            throw null;
        }
        LinearLayout linearLayout = ttActivityStudentInfoBinding2.rlLayout;
        r.d(linearLayout, "binding.rlLayout");
        linearLayout.setVisibility(0);
        this.countDownTimer = new CountDownTimer(((delay - this.diffDelay) * 1000) + 50, 1000L) { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.startCountDown.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                TextView textView2 = StudentInfoActivity.access$getBinding$p(StudentInfoActivity.this).tvDelayNum;
                r.d(textView2, "binding.tvDelayNum");
                textView2.setText(String.valueOf(StudentInfoActivity.this.diffDelay + 1));
                if (SundialManager.getInstance().studentLoginSuccess()) {
                    StudentInfoActivity.this.startTrainingFaceCheck();
                } else {
                    SundialLog.normal("学员已签退，中途拍照中止跳转");
                }
            }

            @Override // android.os.CountDownTimer
            @SuppressLint({"SetTextI18n"})
            public void onTick(long millisUntilFinished) {
                TextView textView2 = StudentInfoActivity.access$getBinding$p(StudentInfoActivity.this).tvDelayNum;
                r.d(textView2, "binding.tvDelayNum");
                textView2.setText("" + (((millisUntilFinished + ((long) 50)) / ((long) 1000)) + ((long) StudentInfoActivity.this.diffDelay)));
                if (SundialManager.getInstance().studentLoginSuccess()) {
                    return;
                }
                CountDownTimer countDownTimer = StudentInfoActivity.this.countDownTimer;
                r.c(countDownTimer);
                countDownTimer.cancel();
                StringBuilder sb = new StringBuilder();
                sb.append("学员已签退，取消倒计时拍照，剩余跳转时间");
                TextView textView3 = StudentInfoActivity.access$getBinding$p(StudentInfoActivity.this).tvDelayNum;
                r.d(textView3, "binding.tvDelayNum");
                sb.append(textView3.getText());
                sb.append((char) 31186);
                SundialLog.normal(sb.toString());
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startTrainingFaceCheck() {
        Tts.speakStop();
        SundialLog.normal("跳转中途拍照页面");
        Intent intent = new Intent(this, (Class<?>) TrainingFaceCheckActivity.class);
        intent.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
        intent.putExtra(ExtraKey.uploadEventType, EventType.STUDENT_TRAINING.valueOf());
        intent.putExtra(ExtraKey.uploadMode, UploadMode.TERMINAL_TAKE.valueOf());
        StudentInfoViewModel studentInfoViewModel = this.viewModel;
        if (studentInfoViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        StudentInfo studentInfoE = studentInfoViewModel.getStudentInfoData().e();
        intent.putExtra(ExtraKey.avatar, studentInfoE != null ? studentInfoE.getAvatar() : null);
        v vVar = v.f15822a;
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateUI(final StudentInfo info) {
        u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.updateUI.1
            @Override // java.lang.Runnable
            public final void run() {
                TtActivityStudentInfoBinding ttActivityStudentInfoBindingAccess$getBinding$p = StudentInfoActivity.access$getBinding$p(StudentInfoActivity.this);
                LinearLayout takeCoachPhoto = ttActivityStudentInfoBindingAccess$getBinding$p.takeCoachPhoto;
                r.d(takeCoachPhoto, "takeCoachPhoto");
                takeCoachPhoto.setVisibility(info.isCoachTakePhoto() ? 0 : 8);
                Glide.with((d) StudentInfoActivity.this).load(info.getAvatar()).transform(new RoundedCorners(s0.a(6.0f))).into(ttActivityStudentInfoBindingAccess$getBinding$p.avatar);
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        this.diffDelay = sundialManager.getLiveImageSecond();
        TakePhotoManager.setInStudentInfoActivity(true);
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initViewModel() {
        super.initViewModel();
        StudentInfoViewModel studentInfoModel = GlobalData.INSTANCE.getStudentInfoModel();
        if (studentInfoModel == null) {
            studentInfoModel = (StudentInfoViewModel) vm(this, StudentInfoViewModel.class);
        }
        this.viewModel = studentInfoModel;
        if (studentInfoModel == null) {
            r.u("viewModel");
            throw null;
        }
        studentInfoModel.restoreClassroomIfNeed();
        StudentInfoViewModel studentInfoViewModel = this.viewModel;
        if (studentInfoViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        studentInfoViewModel.getStudentInfoData().q(this, new a0<StudentInfo>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.initViewModel.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(StudentInfo studentInfo) {
                if (studentInfo != null) {
                    StudentInfoActivity.this.updateUI(studentInfo);
                }
            }
        });
        goToTrainingFaceCheckActivity();
        this.courseTimeLiveData.p(this.courseTimeObserver);
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public boolean isHiddenSelfCheckBtn() {
        return true;
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 4 && resultCode == -1) {
            if (LoginUtil.INSTANCE.coachLoginSuccess()) {
                SundialLog.normal("学生签出的时候跳学员登录页");
                startActivity(new Intent(this, (Class<?>) CoachInfoActivity.class));
                finish();
            } else {
                SundialLog.normal("教练没有登录成功直接跳教练登录页");
                Intent intent = new Intent(ActivityUtil.INSTANCE.topActivity(), (Class<?>) LoginActivity.class);
                intent.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
                v vVar = v.f15822a;
                startActivity(intent);
                finish();
            }
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (DeviceUtils.isSingleApk(this)) {
            return;
        }
        GlobalData globalData = GlobalData.INSTANCE;
        if (globalData.getDevice().allowGotoBackground()) {
            globalData.getDevice().gotoBackground(this);
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityStudentInfoBinding ttActivityStudentInfoBindingInflate = TtActivityStudentInfoBinding.inflate(LayoutInflater.from(this));
        r.d(ttActivityStudentInfoBindingInflate, "TtActivityStudentInfoBin…ayoutInflater.from(this))");
        this.binding = ttActivityStudentInfoBindingInflate;
        LiveBus.Companion companion = LiveBus.INSTANCE;
        companion.with(StudentLogoutResponseEvent.class).q(this, new a0<StudentLogoutResponseEvent>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.onCreateView.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(StudentLogoutResponseEvent studentLogoutResponseEvent) {
                if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                    SundialLog.normal("学员" + StudentInfoActivity.this.getString(R.string.tt_sign_out_fail));
                    return;
                }
                StudentInfoActivity studentInfoActivity = StudentInfoActivity.this;
                int i = R.string.tt_sign_out_success;
                String string = studentInfoActivity.getString(i);
                r.d(string, "getString(R.string.tt_sign_out_success)");
                Tts.speak$default(string, null, 2, null);
                SundialLog.normal("学员" + StudentInfoActivity.this.getString(i));
                GlobalData.INSTANCE.clearSignOutErrorCount(PersonMode.STUDENT.ordinal());
                StudentInfoActivity.this.onActivityResult(4, -1, new Intent());
            }
        });
        companion.with(DialogEvent.class).q(this, new a0<DialogEvent>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.onCreateView.2
            @Override // androidx.lifecycle.a0
            public final void onChanged(DialogEvent dialogEvent) {
                SundialLog.normal("温馨提示：" + dialogEvent.message);
                StudentInfoActivity studentInfoActivity = StudentInfoActivity.this;
                MessageConfirmDialog.Builder builder = new MessageConfirmDialog.Builder(studentInfoActivity, true);
                String str = dialogEvent.message;
                r.d(str, "it.message");
                studentInfoActivity.dialog = builder.setContent(str, new DialogCallBack() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.onCreateView.2.1
                    @Override // cn.mucang.sundial.library.widget.DialogCallBack
                    public void onSelect(int index) {
                        SundialLog.normal("用户点击：我知道了");
                    }
                }).show();
            }
        });
        initView();
        TtActivityStudentInfoBinding ttActivityStudentInfoBinding = this.binding;
        if (ttActivityStudentInfoBinding == null) {
            r.u("binding");
            throw null;
        }
        LinearLayout root = ttActivityStudentInfoBinding.getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (DeviceUtils.isSingleApk(this)) {
            TrainManager.getInstance().stop();
            TakePhotoManager.getInstance().stop();
        }
        TakePhotoManager.setInStudentInfoActivity(false);
        this.courseTimeLiveData.m(this.courseTimeObserver);
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        SundialLog.normal("退出学员学时页面");
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        TtActivityStudentInfoBinding ttActivityStudentInfoBinding = this.binding;
        if (ttActivityStudentInfoBinding == null) {
            r.u("binding");
            throw null;
        }
        LinearLayout linearLayout = ttActivityStudentInfoBinding.rlLayout;
        r.d(linearLayout, "binding.rlLayout");
        linearLayout.setVisibility(8);
        TtActivityStudentInfoBinding ttActivityStudentInfoBinding2 = this.binding;
        if (ttActivityStudentInfoBinding2 == null) {
            r.u("binding");
            throw null;
        }
        LinearLayout linearLayout2 = ttActivityStudentInfoBinding2.takePhoto;
        r.d(linearLayout2, "binding.takePhoto");
        linearLayout2.setVisibility(0);
        StudentInfoViewModel studentInfoViewModel = this.viewModel;
        if (studentInfoViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        studentInfoViewModel.getStudentInfo2Update();
        closeDialog();
        SundialLog.normal("打开学员学时页面");
        if (LoginUtil.INSTANCE.studentLoginSuccess()) {
            return;
        }
        SundialLog.normal("学员未登录，跳转学员登录页面");
        KtxsKt.safeStartActivity(this, LoginStudentActivity.class, new Function1<Intent, v>() { // from class: cn.mucang.sundial.library.activity.StudentInfoActivity.onResume.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Intent intent) {
                invoke2(intent);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Intent it) {
                r.e(it, "it");
                it.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
                it.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
            }
        });
        finish();
    }
}
