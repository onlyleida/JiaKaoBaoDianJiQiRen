package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityRobotGuideBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemGuideImgBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemNavSignalCheckBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.UserCommonTitleBinding;
import cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity;
import cn.mucang.android.jiakaoyi.teachingk2.model.NavCheckModel;
import cn.mucang.android.jiakaoyi.teachingk2.model.NavImageTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.video.VideoGuideManager;
import cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayDialog;
import cn.mucang.jiakaoyi.uilib.api.PrivacyAgreementApi;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\f\b\u0007\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0004$%&'B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0012H\u0015J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\b\u0010\u001c\u001a\u00020\u0012H\u0014J\b\u0010\u001d\u001a\u00020\u0012H\u0014J\b\u0010\u001e\u001a\u00020\u0012H\u0014J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0012H\u0002J\b\u0010#\u001a\u00020\u0012H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "dialog", "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayDialog;", "imgTipAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "isSignalSuccess", "", "observer", "cn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$observer$1", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$observer$1;", "signalCheckAdapter", "speakTipTask", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$TtsRunnable;", "attachBaseContext", "", "newBase", "Landroid/content/Context;", "checkSignal", "car", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;", "getStatName", "", "init", "onBackPressed", "onDestroy", "onPause", "onResume", "onSignalChanged", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "startCheck", "stopCheck", "CheckSignalBinder", "Companion", "ImageTipBinder", "TtsRunnable", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class RobotGuideActivity extends BaseViewBindingActivity<ActivityRobotGuideBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f8138h = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VideoPlayDialog f8140e;
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f8141f = new d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f8142g = new e();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$CheckSignalBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavCheckModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNavSignalCheckBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<NavCheckModel, ItemNavSignalCheckBinding> {
        public a(RobotGuideActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemNavSignalCheckBinding> holder, NavCheckModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemNavSignalCheckBinding) holder.getViewBinding()).icon.setSelected(item.getB());
            ((ItemNavSignalCheckBinding) holder.getViewBinding()).text.setSelected(item.getB());
            ((ItemNavSignalCheckBinding) holder.getViewBinding()).text.setText(item.getF7411a());
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$Companion;", "", "()V", "launch", "", "activity", "Landroid/app/Activity;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) RobotGuideActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$ImageTipBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemGuideImgBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class c extends ViewBindingBinder<NavImageTipModel, ItemGuideImgBinding> {
        public c(RobotGuideActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemGuideImgBinding> holder, NavImageTipModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            if (cn.mucang.android.core.utils.n0.e(item.getPic())) {
                ((ItemGuideImgBinding) holder.getViewBinding()).img.setImageResource(item.getResId());
            } else {
                ((ItemGuideImgBinding) holder.getViewBinding()).img.d(item.getPic(), R.drawable.shape_gray_map_bg);
            }
            ((ItemGuideImgBinding) holder.getViewBinding()).text.setText(item.getTitle());
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$TtsRunnable;", "Ljava/lang/Runnable;", "()V", "failSignalTip", "", "getFailSignalTip", "()Ljava/lang/String;", "setFailSignalTip", "(Ljava/lang/String;)V", "isAcFinished", "", "()Z", "setAcFinished", "(Z)V", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8143a;
        private String b = "";

        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$TtsRunnable$run$1", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a implements TtsListener {
            a() {
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onIntercept() {
                if (d.this.getF8143a()) {
                    return;
                }
                cn.mucang.android.core.utils.u.e(d.this);
                cn.mucang.android.core.utils.u.d(d.this, 3000L);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakBegin() {
                TtsListener.a.c(this);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakEnd() {
                if (d.this.getF8143a()) {
                    return;
                }
                cn.mucang.android.core.utils.u.e(d.this);
                cn.mucang.android.core.utils.u.d(d.this, 3000L);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakPaused() {
                TtsListener.a.e(this);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakResumed() {
                TtsListener.a.g(this);
            }
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getF8143a() {
            return this.f8143a;
        }

        public final void b(boolean z) {
            this.f8143a = z;
        }

        public final void c(String str) {
            kotlin.jvm.internal.r.e(str, "<set-?>");
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8143a) {
                return;
            }
            TtsManager.u(this.b, TtsGrade.GlobalTip, new a());
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$observer$1", "Landroidx/lifecycle/Observer;", "", "onChanged", "", "url", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements androidx.lifecycle.a0<String> {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(RobotGuideActivity this$0, DialogInterface dialogInterface) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.s();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e() {
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m139constructorimpl(Boolean.valueOf(new PrivacyAgreementApi().m(DeviceType.ROBOT.getType(), "yinhe_privacy_teach_video")));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onChanged(String str) {
            VideoGuideManager videoGuideManager = VideoGuideManager.f8723a;
            androidx.lifecycle.z<String> zVarC = videoGuideManager.c();
            if (zVarC != null) {
                zVarC.m(this);
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("Video url 返回：", str));
            if (cn.mucang.android.core.utils.n0.g(str)) {
                RobotGuideActivity.this.t();
                RobotGuideActivity robotGuideActivity = RobotGuideActivity.this;
                kotlin.jvm.internal.r.c(str);
                robotGuideActivity.f8140e = new VideoPlayDialog(RobotGuideActivity.this, RobotGuideActivity.this.getResources().getString(R.string.teachbase_robot_use_video), RobotGuideActivity.this.getResources().getString(R.string.teachbase_warm_tip_use_robot_video), str, null, false, false, false, 240, null);
                VideoPlayDialog videoPlayDialog = RobotGuideActivity.this.f8140e;
                if (videoPlayDialog != null) {
                    final RobotGuideActivity robotGuideActivity2 = RobotGuideActivity.this;
                    videoPlayDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.l
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            RobotGuideActivity.e.d(robotGuideActivity2, dialogInterface);
                        }
                    });
                }
                VideoPlayDialog videoPlayDialog2 = RobotGuideActivity.this.f8140e;
                if (videoPlayDialog2 != null) {
                    videoPlayDialog2.show();
                }
                videoGuideManager.e(null);
                cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        RobotGuideActivity.e.e();
                    }
                });
            }
        }
    }

    private final void n(CarModel carModel) {
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSignalProvider.class, null, 2, null);
        boolean z = carModel.i() || !(absSignalProvider != null && absSignalProvider.useNonOldProtocol());
        Gear gear = carModel.m;
        boolean z2 = gear == Gear.GearN || gear == Gear.GearP;
        boolean z3 = !carModel.f5268f;
        boolean z4 = carModel.f5266d;
        boolean z5 = z && z2 && z3 && z4;
        this.f8139d = z5;
        if (z5) {
            d dVar = this.f8141f;
            String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_adjust_please_pic);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_adjust_please_pic)");
            dVar.c(strA);
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (!z4) {
            sb.append(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_wear_belt));
        }
        if (!z2) {
            sb.append(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_put_neutral));
        }
        if (!z3) {
            sb.append(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_p500_pull_handbrake));
        }
        if (!z) {
            sb.append(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_straighten_wheel));
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "sb.toString()");
        String strSubstring = string.substring(6, string.length());
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        d dVar2 = this.f8141f;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_please);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_please)");
        String str = String.format(strA2, Arrays.copyOf(new Object[]{strSubstring}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        dVar2.c(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(RobotGuideActivity this$0, View view) {
        Intent launchPageIntent;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null);
        if (absTeachBaseProvider != null && (launchPageIntent = absTeachBaseProvider.getLaunchPageIntent(this$0)) != null) {
            this$0.startActivity(launchPageIntent);
        }
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(RobotGuideActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c.i(new ArrayList(list));
        this$0.c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        this.f8141f.b(false);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        cn.mucang.android.core.utils.u.d(this.f8141f, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        this.f8141f.b(true);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        cn.mucang.android.core.utils.u.e(this.f8141f);
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        cn.mucang.android.jiakaoyi.framework.utils.f0.a(newBase);
        super.attachBaseContext(newBase);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_robot_guide_page);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_robot_guide_page)");
        return strA;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AppTeachExtensionsKt.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), false);
        UserCommonTitleBinding userCommonTitleBinding = g().titleBar;
        kotlin.jvm.internal.r.d(userCommonTitleBinding, "viewBinding.titleBar");
        AppTeachExtensionsKt.b(userCommonTitleBinding, this, false, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_sahngche), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_back), R.drawable.guide_ic_back, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.RobotGuideActivity.init.1
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
                RobotGuideActivity.this.onBackPressed();
            }
        });
        if (MucangConfig.v()) {
            g().titleBar.titleTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.RobotGuideActivity.init.2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
                    invoke2(view);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    it.getContext().startActivity(new Intent(it.getContext(), (Class<?>) FaceRegisterActivity.class));
                }
            }, 3, null));
        }
        g().rcvSignals.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.b.g(NavCheckModel.class, new a(this));
        g().rcvSignals.setAdapter(this.b);
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSignalProvider.class, null, 2, null);
        boolean z = absSignalProvider != null && absSignalProvider.useNonOldProtocol();
        com.drakeet.multitype.f fVar = this.b;
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_wear_seat_belt);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_wear_seat_belt)");
        String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_put_into_n_gear);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_put_into_n_gear)");
        String strA3 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_pull_handbrake);
        kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_pull_handbrake)");
        List<? extends Object> listP = kotlin.collections.u.p(new NavCheckModel(strA, false, 2, null), new NavCheckModel(strA2, false, 2, null), new NavCheckModel(strA3, false, 2, null));
        if (z) {
            String strA4 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachingk2_back_steering_wheel);
            kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachingk2_back_steering_wheel)");
            listP.add(new NavCheckModel(strA4, false, 2, null));
        }
        kotlin.v vVar = kotlin.v.f15822a;
        fVar.i(listP);
        g().rcvImageTips.setLayoutManager(new GridLayoutManager(this, 3));
        this.c.g(NavImageTipModel.class, new c(this));
        g().rcvImageTips.setAdapter(this.c);
        this.c.i(kotlin.collections.u.p(new NavImageTipModel(R.drawable.check_ic_seat, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_adjust_pos)), new NavImageTipModel(R.drawable.check_ic_left_mirror, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_adjust_left_mirror)), new NavImageTipModel(R.drawable.check_ic_right_mirror, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_adjust_right_mirror))));
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RobotGuideActivity.o(this.f8227a, view);
            }
        });
        s();
        VideoGuideManager.f8723a.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RobotGuideActivity.p(this.f8225a, (List) obj);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        RobotAccount.p("GuideBack", null, 2, null);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        VideoPlayDialog videoPlayDialog = this.f8140e;
        if (videoPlayDialog != null) {
            DialogExtensionKt.b(videoPlayDialog);
        }
        t();
        TtsManager.H();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        t();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        VideoGuideManager videoGuideManager = VideoGuideManager.f8723a;
        androidx.lifecycle.z<String> zVarC = videoGuideManager.c();
        if (zVarC != null) {
            zVarC.m(this.f8142g);
        }
        androidx.lifecycle.z<String> zVarC2 = videoGuideManager.c();
        if (zVarC2 == null) {
            return;
        }
        zVarC2.h(this, this.f8142g);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signal) {
        kotlin.jvm.internal.r.e(signal, "signal");
        Object objF0 = kotlin.collections.s.f0(this.b.c(), 0);
        NavCheckModel navCheckModel = objF0 instanceof NavCheckModel ? (NavCheckModel) objF0 : null;
        if (navCheckModel != null) {
            navCheckModel.c(signal.d().f5266d);
        }
        Object objF1 = kotlin.collections.s.f0(this.b.c(), 1);
        NavCheckModel navCheckModel2 = objF1 instanceof NavCheckModel ? (NavCheckModel) objF1 : null;
        if (navCheckModel2 != null) {
            navCheckModel2.c(signal.d().m == Gear.GearN || signal.d().m == Gear.GearP);
        }
        Object objF2 = kotlin.collections.s.f0(this.b.c(), 2);
        NavCheckModel navCheckModel3 = objF2 instanceof NavCheckModel ? (NavCheckModel) objF2 : null;
        if (navCheckModel3 != null) {
            navCheckModel3.c(!signal.d().f5268f);
        }
        Object objF3 = kotlin.collections.s.f0(this.b.c(), 3);
        NavCheckModel navCheckModel4 = objF3 instanceof NavCheckModel ? (NavCheckModel) objF3 : null;
        if (navCheckModel4 != null) {
            navCheckModel4.c(signal.d().i());
        }
        this.b.notifyDataSetChanged();
        CarModel carModelD = signal.d();
        kotlin.jvm.internal.r.d(carModelD, "signal.car");
        n(carModelD);
    }
}
