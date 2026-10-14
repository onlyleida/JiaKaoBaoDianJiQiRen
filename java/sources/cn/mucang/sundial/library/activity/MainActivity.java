package cn.mucang.sundial.library.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.lifecycle.s;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.databinding.TtActivityMainBinding;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.util.ActivityUtil;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.Utils;
import cn.mucang.sundial.library.widget.DialogCallBack;
import cn.mucang.sundial.library.widget.InitFailDialog;
import f.a.a.a.p009n.c.a;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\f\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcn/mucang/sundial/library/activity/MainActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "checkPermission", "()V", "stayThenJump", "", "initHost", "()Z", "initDefaultParams", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class MainActivity extends BaseActivity {

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.MainActivity$stayThenJump$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class RunnableC04051 implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.MainActivity$stayThenJump$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
        @DebugMetadata(c = "cn.mucang.sundial.library.activity.MainActivity$stayThenJump$1$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
        static final class C01731 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            int label;

            C01731(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> completion) {
                r.e(completion, "completion");
                return RunnableC04051.this.new C01731(completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((C01731) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                new InitFailDialog.Builder(MainActivity.this).setContent(new DialogCallBack() { // from class: cn.mucang.sundial.library.activity.MainActivity.stayThenJump.1.1.1
                    @Override // cn.mucang.sundial.library.widget.DialogCallBack
                    public void onSelect(int index) {
                        if (index != 0) {
                            MainActivity.this.checkPermission();
                        } else if (DeviceUtils.isSingleApk(MainActivity.this)) {
                            MainActivity.this.startActivity(new Intent("android.settings.SETTINGS"));
                        } else {
                            MainActivity.this.finish();
                        }
                    }
                }).show();
                return v.f15822a;
            }
        }

        RunnableC04051() {
        }

        @Override // java.lang.Runnable
        public final void run() throws InterruptedException {
            long jCurrentTimeMillis = System.currentTimeMillis();
            SundialLog.normal("检测时间是否同步，获取IMEI是否正常");
            while (true) {
                if (DeviceUtils.getImei().length() == 15) {
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    if (sundialManager.getLastTimeStamps() < System.currentTimeMillis()) {
                        break;
                    }
                }
                Thread.sleep(100L);
            }
            MainActivity.this.getBaseViewModel().m120getBaseInfo();
            SundialLog.normal("检测完毕");
            SundialLog.normal("初始化参数");
            if (!(MainActivity.this.initHost() && MainActivity.this.initDefaultParams())) {
                SundialLog.normal("网络连接失败弹窗");
                g.b(s.a(MainActivity.this), null, null, new C01731(null), 3, null);
                return;
            }
            SundialLog.normal("socket服务连接初始化");
            SundialManager.getInstance().init();
            long jCurrentTimeMillis2 = ((long) 2000) - (System.currentTimeMillis() - jCurrentTimeMillis);
            if (jCurrentTimeMillis2 > 0) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Thread.sleep(jCurrentTimeMillis2);
                    Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
            }
            u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.MainActivity.stayThenJump.1.3
                /* JADX WARN: Code duplicated, block: B:14:0x004b  */
                @Override // java.lang.Runnable
                public final void run() {
                    if (MainActivity.this.isFinishing()) {
                        return;
                    }
                    SundialManager sundialManager2 = SundialManager.getInstance();
                    r.d(sundialManager2, "SundialManager.getInstance()");
                    if (sundialManager2.isRegister()) {
                        LoginUtil loginUtil = LoginUtil.INSTANCE;
                        if (!loginUtil.coachLoginSuccess()) {
                            SundialLog.normal("未注册或教练未登录跳教练登录页面");
                            KtxsKt.safeStartActivity(MainActivity.this, LoginActivity.class, new Function1<Intent, v>() { // from class: cn.mucang.sundial.library.activity.MainActivity.stayThenJump.1.3.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ v invoke(Intent intent) {
                                    invoke2(intent);
                                    return v.f15822a;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Intent it) {
                                    r.e(it, "it");
                                    it.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
                                }
                            });
                        } else if (loginUtil.studentLoginSuccess()) {
                            SundialLog.normal("跳学员页面");
                            KtxsKt.safeStartActivity$default(MainActivity.this, StudentInfoActivity.class, null, 2, null);
                        } else {
                            SundialLog.normal("学员未登录跳教练页面");
                            KtxsKt.safeStartActivity(MainActivity.this, LoginStudentActivity.class, new Function1<Intent, v>() { // from class: cn.mucang.sundial.library.activity.MainActivity.stayThenJump.1.3.2
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
                        }
                    } else {
                        SundialLog.normal("未注册或教练未登录跳教练登录页面");
                        KtxsKt.safeStartActivity(MainActivity.this, LoginActivity.class, new Function1<Intent, v>() { // from class: cn.mucang.sundial.library.activity.MainActivity.stayThenJump.1.3.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ v invoke(Intent intent) {
                                invoke2(intent);
                                return v.f15822a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Intent it) {
                                r.e(it, "it");
                                it.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
                            }
                        });
                    }
                    MainActivity.this.finish();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkPermission() {
        z.d(this, new a() { // from class: cn.mucang.sundial.library.activity.MainActivity.checkPermission.1
            @Override // f.a.a.a.p009n.c.a
            public final void permissionsResult(PermissionsResult result) {
                r.d(result, "result");
                if (result.getGrantedAll()) {
                    MainActivity.this.stayThenJump();
                }
            }
        }, "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean initDefaultParams() {
        return Utils.INSTANCE.initDefaultParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean initHost() {
        return Utils.INSTANCE.initHost();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stayThenJump() {
        ThreadPool.a(new RunnableC04051());
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (ActivityUtil.INSTANCE.activityCount() > 1) {
            finish();
        }
        if (isFinishing()) {
            return;
        }
        checkPermission();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityMainBinding ttActivityMainBindingInflate = TtActivityMainBinding.inflate(LayoutInflater.from(this));
        r.d(ttActivityMainBindingInflate, "TtActivityMainBinding.in…ayoutInflater.from(this))");
        LinearLayout root = ttActivityMainBindingInflate.getRoot();
        r.d(root, "TtActivityMainBinding.in…Inflater.from(this)).root");
        return root;
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (ActivityUtil.INSTANCE.activityCount() > 1) {
            finish();
        }
    }
}
