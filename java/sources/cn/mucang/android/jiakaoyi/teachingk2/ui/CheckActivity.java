package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCheckBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.CheckResultItemBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.CheckResultTitleBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutExitAppBinding;
import cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt;
import cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.AutoAssistParamsSender;
import cn.mucang.android.jiakaoyi.teachingk2.config.JxConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.FaceLoginVideoFactory;
import cn.mucang.android.jiakaoyi.teachingk2.login.SundialVideoFactory;
import cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.OtherCarIntrudeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.FloatWindowManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.LockCarManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleManager;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.sundial.client.SundialListener;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.deduct.DeductSyncManager;
import cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.rule.RuleSyncManager;
import cn.mucang.jiakaoyi.uilib.sso.SsoLoginActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0005$%&'(B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0011H\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0011H\u0002J\b\u0010\u001b\u001a\u00020\u0011H\u0014J\b\u0010\u001c\u001a\u00020\u0011H\u0002J\b\u0010\u001d\u001a\u00020\u0011H\u0016J\b\u0010\u001e\u001a\u00020\u0011H\u0014J\b\u0010\u001f\u001a\u00020\u0011H\u0014J\b\u0010 \u001a\u00020\u0011H\u0014J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\"\u001a\u00020\u0011H\u0003J\b\u0010#\u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "checking", "", "job", "Lkotlinx/coroutines/Job;", "list", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "presenter", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/check/CheckSignalPresenter;", "resultAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "attachBaseContext", "", "newBase", "Landroid/content/Context;", "checkModule", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "ensureRealCar", "getStatName", "", "goingToLogin", "init", "initBusiness", "onBackPressed", "onDestroy", "onPause", "onResume", "onSignalChanged", "showResult", "startCheck", "Companion", "ResultItem", "ResultItemBinder", "ResultTitle", "ResultTitleBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckActivity extends BaseViewBindingActivity<ActivityCheckBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8125g = new a(null);
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final List<CheckModuleStatus> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.teachingk2.ui.f1.b f8127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t1 f8128f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CheckActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ResultItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ResultItem;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/CheckResultItemBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class c extends ViewBindingBinder<b, CheckResultItemBinding> {
        public c(CheckActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<CheckResultItemBinding> holder, b item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            if (item.getC() == 0) {
                ((CheckResultItemBinding) holder.getViewBinding()).indicator.setBackgroundResource(R.drawable.shape_ff4d4d_dot);
            } else {
                ((CheckResultItemBinding) holder.getViewBinding()).indicator.setBackgroundResource(R.drawable.shape_fa9200_dot);
            }
            ((CheckResultItemBinding) holder.getViewBinding()).titleTv.setText(item.getF8129a());
            ((CheckResultItemBinding) holder.getViewBinding()).descTv.setText(item.getB());
            if (item.getF8130d()) {
                ((CheckResultItemBinding) holder.getViewBinding()).bottom.setVisibility(0);
            } else {
                ((CheckResultItemBinding) holder.getViewBinding()).bottom.setVisibility(8);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ResultTitle;", "", "important", "", "(Z)V", "getImportant", "()Z", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f8131a;

        public d(boolean z) {
            this.f8131a = z;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getF8131a() {
            return this.f8131a;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ResultTitleBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ResultTitle;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/CheckResultTitleBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class e extends ViewBindingBinder<d, CheckResultTitleBinding> {
        public e(CheckActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<CheckResultTitleBinding> holder, d item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            if (item.getF8131a()) {
                ((CheckResultTitleBinding) holder.getViewBinding()).titleTv.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_critical_fault));
                ((CheckResultTitleBinding) holder.getViewBinding()).titleTv.setBackgroundResource(R.drawable.shape_ff4d4d_r45);
            } else {
                ((CheckResultTitleBinding) holder.getViewBinding()).titleTv.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_general_failure));
                ((CheckResultTitleBinding) holder.getViewBinding()).titleTv.setBackgroundResource(R.drawable.shape_fa9200_r45);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$initBusiness$3$1", "Lcn/mucang/jiakaoyi/sundial/client/SundialListener;", "enableSundial", "", "getImei", "", "getTenantId", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class f implements SundialListener {
        f() {
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.SundialListener
        public boolean a() {
            return LocalConfigManager.f(LocalConfig.EnableSundial);
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.SundialListener
        public String b() {
            return DeviceUtils.c();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class g<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((CheckModuleStatus) t).getLevel()), Integer.valueOf(((CheckModuleStatus) t2).getLevel()));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$init$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    static final class AnonymousClass5 extends Lambda implements Function1<View, kotlin.v> {
        AnonymousClass5() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m80invoke$lambda0(CheckActivity this$0, String str) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            LoginManager.F(this$0, str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
            invoke2(view);
            return kotlin.v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(View it) {
            kotlin.jvm.internal.r.e(it, "it");
            SsoLoginActivity.a aVar = SsoLoginActivity.c;
            final CheckActivity checkActivity = CheckActivity.this;
            aVar.d(checkActivity, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.g
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    CheckActivity.AnonymousClass5.m80invoke$lambda0(checkActivity, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$init$7, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$init$7", f = "CheckActivity.kt", l = {141}, m = "invokeSuspend")
    static final class AnonymousClass7 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        AnonymousClass7(Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return CheckActivity.this.new AnonymousClass7(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass7) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.s0.a(100L, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            CheckActivity.this.g().startTv.performClick();
            return kotlin.v.f15822a;
        }
    }

    @SuppressLint({"NotifyDataSetChanged", "SetTextI18n"})
    private final void A() {
        boolean z;
        boolean zIsEmpty = this.c.isEmpty();
        if (zIsEmpty) {
            z = false;
        } else {
            ArrayList arrayList = new ArrayList();
            List<CheckModuleStatus> list = this.c;
            if (list.size() > 1) {
                kotlin.collections.y.A(list, new g());
            }
            z = false;
            int i = 0;
            for (CheckModuleStatus checkModuleStatus : this.c) {
                if (checkModuleStatus.getLevel() == 2) {
                    i++;
                }
                if (checkModuleStatus.getLevel() == 0) {
                    z = true;
                }
                arrayList.add(new b(checkModuleStatus.getCode() + ' ' + checkModuleStatus.getTitle(), checkModuleStatus.getDesc(), checkModuleStatus.getLevel(), false, 8, null));
            }
            if (z) {
                arrayList.add(0, new d(true));
            }
            if (i <= 3) {
                Iterator it = arrayList.iterator();
                kotlin.jvm.internal.r.d(it, "result.iterator()");
                while (it.hasNext()) {
                    Object next = it.next();
                    kotlin.jvm.internal.r.d(next, "iterator.next()");
                    if ((next instanceof b) && ((b) next).getC() == 2) {
                        it.remove();
                    }
                }
            }
            if (arrayList.isEmpty()) {
                zIsEmpty = true;
            }
            Iterator it2 = arrayList.iterator();
            int i2 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i2 = -1;
                    break;
                }
                Object next2 = it2.next();
                if ((next2 instanceof b) && ((b) next2).getC() != 0) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 > -1) {
                Object objF0 = kotlin.collections.s.f0(arrayList, i2 - 1);
                b bVar = objF0 instanceof b ? (b) objF0 : null;
                if (bVar != null) {
                    bVar.e(false);
                }
                arrayList.add(i2, new d(false));
            }
            Object objQ0 = kotlin.collections.s.q0(arrayList);
            b bVar2 = objQ0 instanceof b ? (b) objQ0 : null;
            if (bVar2 != null) {
                bVar2.e(false);
            }
            this.b.i(arrayList);
            this.b.notifyDataSetChanged();
        }
        if (zIsEmpty) {
            cn.mucang.android.core.utils.u.h(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_detected_pass));
            l();
            return;
        }
        g().progressGroup.setVisibility(8);
        g().mapView.setVisibility(8);
        g().tipTv.setVisibility(8);
        if (z) {
            g().jumpTv.setVisibility(8);
        } else {
            g().jumpTv.setVisibility(0);
            this.f8128f = kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this), null, null, new CheckActivity$showResult$3(this, null), 3, null);
        }
        g().errorGroup.setVisibility(0);
    }

    private final void B() {
        List<CheckModuleStatus> checkList;
        g().startTv.setVisibility(8);
        g().jumpTv.setVisibility(8);
        g().errorGroup.setVisibility(8);
        g().successGroup.setVisibility(8);
        g().mapView.setVisibility(0);
        g().tipTv.setVisibility(0);
        g().progressGroup.setVisibility(0);
        g().progressBar.setProgress(0);
        this.f8126d = true;
        this.c.clear();
        TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.b(DataProviderRegister.f3433a, TeachSafeProvider.class, null, 2, null);
        if (teachSafeProvider == null || (checkList = teachSafeProvider.getCheckList()) == null) {
            return;
        }
        this.c.addAll(checkList);
    }

    private final void j(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Iterator<CheckModuleStatus> it = this.c.iterator();
        while (it.hasNext()) {
            CheckModuleStatus next = it.next();
            if (next.checkPass(next.getCheckInt(eVar))) {
                it.remove();
            }
        }
    }

    private final void k() {
        int iA = RealCarSelectManager.a();
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("车辆类型:", Integer.valueOf(iA)));
        if (iA > 0) {
            return;
        }
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), kotlinx.coroutines.w0.b(), null, new CheckActivity$ensureRealCar$1(null), 2, null);
    }

    private final void l() {
        SundialClient.f9111a.x(this, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$goingToLogin$1
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
                LoginActivity.a.b(LoginActivity.f7362g, this.this$0, 0, 2, null);
                this.this$0.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        t1 t1Var = this$0.f8128f;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this$0.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(CheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        t1 t1Var = this$0.f8128f;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this$0.l();
    }

    private final void q() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.c
            @Override // java.lang.Runnable
            public final void run() {
                CheckActivity.r();
            }
        });
        JLocationManager.f5733a.l(this);
        cn.mucang.jiakaoyi.uilib.socket.t.a().Q();
        HPGpsManager.f();
        LockCarManager.d();
        DataProviderRegister dataProviderRegister = DataProviderRegister.f3433a;
        TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.b(dataProviderRegister, TeachSafeProvider.class, null, 2, null);
        if (teachSafeProvider != null) {
            teachSafeProvider.initRemoteSocket();
        }
        new Thread(new cn.mucang.android.jiakaoyi.engine.trace.upload.f(new File(cn.mucang.android.jiakaoyi.engine.trace.storage.a.c()))).start();
        CheckModuleManager.c();
        GlobalChecker.f();
        cn.mucang.android.jiakaoyi.teachingk2.z0.f.h(LocalConfigManager.f(LocalConfig.CalibrateWheel));
        PusherManager.f7472a.G();
        AnalysisManager.a();
        TeachSafeProvider teachSafeProvider2 = (TeachSafeProvider) DataProviderRegister.b(dataProviderRegister, TeachSafeProvider.class, null, 2, null);
        if (teachSafeProvider2 != null) {
            teachSafeProvider2.initBrakeGlobalMonitor();
        }
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(dataProviderRegister, AbsTeachBaseProvider.class, null, 2, null);
        if (absTeachBaseProvider != null) {
            absTeachBaseProvider.initUsbManager();
        }
        AbsTeachBaseProvider absTeachBaseProvider2 = (AbsTeachBaseProvider) DataProviderRegister.b(dataProviderRegister, AbsTeachBaseProvider.class, null, 2, null);
        if (absTeachBaseProvider2 != null) {
            absTeachBaseProvider2.initAiCameraManager();
        }
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(false, null);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.b
            @Override // java.lang.Runnable
            public final void run() {
                CheckActivity.s();
            }
        });
        SundialClient sundialClient = SundialClient.f9111a;
        SundialClient.a aVar = new SundialClient.a();
        aVar.d(new SundialVideoFactory());
        aVar.e(new f());
        kotlin.v vVar = kotlin.v.f15822a;
        sundialClient.u(aVar);
        UserSwitcher.m();
        FaceLoginManager.f3000a.y(new FaceLoginVideoFactory(), LocalConfigManager.f(LocalConfig.FaceLoginFromAi) ? AiFaceCoverManager.f7292a.g() : null);
        RemoteGearSetter.f9324a.j();
        OtherCarIntrudeMgr.f8473a.h();
        HighlightVideoManager.f7136a.g();
        k();
        AutoAssistParamsSender.Companion.c(AutoAssistParamsSender.f6144a, false, null, 2, null);
        RainModeMgr.g(Integer.valueOf(LocalConfigManager.j(LocalConfig.RainMode, 100)));
        JxConfigManager.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r() {
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            cn.mucang.jiakaoyi.uilib.m.a.q();
            SystemClock.sleep(10L);
            cn.mucang.jiakaoyi.uilib.m.b.s();
            SystemClock.sleep(10L);
            DeductSyncManager deductSyncManager = DeductSyncManager.f9236a;
            KeMu keMu = KeMu.K2;
            DeductSyncManager.f(deductSyncManager, ExamSiteUtil.n(keMu, 0L), keMu, false, 4, null);
            SystemClock.sleep(10L);
            RuleSyncManager ruleSyncManager = RuleSyncManager.f9550a;
            RuleSyncManager.f(ruleSyncManager, ExamSiteUtil.n(keMu, 0L), keMu, false, 4, null);
            if (LocalConfigManager.f(LocalConfig.OpenK3)) {
                SystemClock.sleep(10L);
                KeMu keMu2 = KeMu.K3;
                DeductSyncManager.f(deductSyncManager, ExamSiteUtil.n(keMu2, 0L), keMu2, false, 4, null);
                SystemClock.sleep(10L);
                RuleSyncManager.f(ruleSyncManager, ExamSiteUtil.n(keMu2, 0L), keMu2, false, 4, null);
            }
            kotlin.v vVar = kotlin.v.f15822a;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(Boolean.valueOf(new DeviceApi().r(3)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s() {
        ResourceManager.p(null, kotlin.collections.u.p(ResourceManager.Resource.MapData, ResourceManager.Resource.MapFence, ResourceManager.Resource.Special, ResourceManager.Resource.AutoShuttle));
    }

    public static final void z(Context context) {
        f8125g.a(context);
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        cn.mucang.android.jiakaoyi.framework.utils.f0.a(newBase);
        super.attachBaseContext(newBase);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_self_check_page);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_self_check_page)");
        return strA;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        q();
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AppTeachExtensionsKt.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), false);
        TextView textView = g().closeIv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.closeIv");
        AppTeachExtensionsKt.h(textView, R.drawable.check_ic_close, (int) getResources().getDimension(R.dimen.rpx_38));
        g().resultRv.setLayoutManager(new LinearLayoutManager(this));
        this.b.g(d.class, new e(this));
        this.b.g(b.class, new c(this));
        g().resultRv.setAdapter(this.b);
        g().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckActivity.m(this.f8162a, view);
            }
        });
        g().startTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckActivity.n(this.f8202a, view);
            }
        });
        g().retryTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckActivity.o(this.f8208a, view);
            }
        });
        g().jumpTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckActivity.p(this.f8221a, view);
            }
        });
        g().errorRobotIv.setOnClickListener(new MultiClickListener(0, 0L, new AnonymousClass5(), 3, null));
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        SafeCommandManager.g(true, false, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity.init.6
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SafeLocalParamManager.b(true);
                FloatWindowManager.f();
            }
        }, 2, null);
        cn.mucang.android.jiakaoyi.teachingk2.ui.f1.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.ui.f1.b(g().mapView);
        this.f8127e = bVar;
        if (bVar != null) {
            bVar.c();
        }
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass7(null), 3, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (g().countDownCl.getRoot().getVisibility() == 0) {
            return;
        }
        LayoutExitAppBinding layoutExitAppBinding = g().countDownCl;
        kotlin.jvm.internal.r.d(layoutExitAppBinding, "viewBinding.countDownCl");
        AppTeachExtensionsKt.a(this, layoutExitAppBinding, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity.onBackPressed.1
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
                CheckActivity.this.finish();
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.teachingk2.ui.f1.b bVar = this.f8127e;
        if (bVar != null) {
            bVar.d();
        }
        g().mapView.c();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        g().mapView.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        g().mapView.n();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (this.f8126d) {
            if (signalGetter.d().k() || cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
                g().progressBar.setProgress(g().progressBar.getProgress() + 5);
            }
            if (g().progressBar.getProgress() == 100) {
                j(signalGetter);
                this.f8126d = false;
                A();
            }
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ResultItem;", "", "title", "", SocialConstants.PARAM_APP_DESC, DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "", "showBottom", "", "(Ljava/lang/String;Ljava/lang/String;IZ)V", "getDesc", "()Ljava/lang/String;", "getLevel", "()I", "getShowBottom", "()Z", "setShowBottom", "(Z)V", "getTitle", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8129a;
        private final String b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f8130d;

        public b(String title, String desc, int i, boolean z) {
            kotlin.jvm.internal.r.e(title, "title");
            kotlin.jvm.internal.r.e(desc, "desc");
            this.f8129a = title;
            this.b = desc;
            this.c = i;
            this.f8130d = z;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getF8130d() {
            return this.f8130d;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getF8129a() {
            return this.f8129a;
        }

        public final void e(boolean z) {
            this.f8130d = z;
        }

        public /* synthetic */ b(String str, String str2, int i, boolean z, int i2, kotlin.jvm.internal.o oVar) {
            this(str, str2, i, (i2 & 8) != 0 ? true : z);
        }
    }
}
