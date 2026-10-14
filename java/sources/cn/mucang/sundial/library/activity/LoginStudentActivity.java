package cn.mucang.sundial.library.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.android.account.qrcode.QrCodeHelper;
import cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.ClearIdEvent;
import cn.mucang.sundial.android.eventbus.event.IdCardEvent;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.binder.StudentRecordBinder;
import cn.mucang.sundial.library.databinding.TtActivityStudentLoginBinding;
import cn.mucang.sundial.library.device.IcReader;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.IcInfo;
import cn.mucang.sundial.library.entity.ServerCardInfo;
import cn.mucang.sundial.library.http.CardApi;
import cn.mucang.sundial.library.qrcode.GZQrCodeHelper;
import cn.mucang.sundial.library.qrcode.listener.GZScanLoginStatusListener;
import cn.mucang.sundial.library.qrcode.model.GZQrAuthUser;
import cn.mucang.sundial.library.qrcode.model.GZQrCodeModel;
import cn.mucang.sundial.library.sdk.coach.logic.SafeRunnable;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.QRCodeGenerator;
import cn.mucang.sundial.library.util.QRCodeUtil;
import cn.mucang.sundial.library.util.ToastUtil;
import cn.mucang.sundial.library.viewmodel.LoginViewModel;
import cn.mucang.sundial.library.widget.ClearRecordConfirmDialog;
import cn.mucang.sundial.library.widget.DialogCallBack;
import com.alibaba.fastjson.JSON;
import com.blankj.utilcode.util.Utils;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.p.a;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.k;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 V2\u00020\u0001:\u0001VB\u0007¢\u0006\u0004\bU\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0002H\u0014¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0002H\u0014¢\u0006\u0004\b!\u0010\u0004J)\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010+\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00106\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010)R \u0010:\u001a\f07R\b\u0012\u0004\u0012\u000209088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010?\u001a\u00020>8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u001d\u0010F\u001a\u00020A8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0018\u0010G\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001c\u0010I\u001a\b\u0012\u0004\u0012\u000209088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u001d\u0010O\u001a\u00020K8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010C\u001a\u0004\bM\u0010NR \u0010Q\u001a\f07R\b\u0012\u0004\u0012\u00020P088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010;R\u001c\u0010R\u001a\b\u0012\u0004\u0012\u00020P088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010JR\u0016\u0010S\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010)R\u0016\u0010T\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010=¨\u0006W"}, d2 = {"Lcn/mucang/sundial/library/activity/LoginStudentActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "startReadIcTask", "rescheduleReadIcCardTask", "", "idCard", "onGetIdCard", "(Ljava/lang/String;)V", "initQrCode", "loadGZQrCode", "", "interruptToRegister", "()Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initData", "initViewModel", "Landroidx/lifecycle/m0$b;", "vmFactory", "()Landroidx/lifecycle/m0$b;", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "speakIcNotMatch", "Z", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "Landroid/os/Handler;", "readIcCardHandler", "Landroid/os/Handler;", "Lcn/mucang/sundial/library/device/IcReader;", "icReader", "Lcn/mucang/sundial/library/device/IcReader;", "Landroid/os/HandlerThread;", "readIcCardThread", "Landroid/os/HandlerThread;", "onlyIcMode", "Landroidx/lifecycle/i0$b;", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/eventbus/event/IdCardEvent;", "observer", "Landroidx/lifecycle/i0$b;", "personMode", "I", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "Lcn/mucang/sundial/library/viewmodel/LoginViewModel;", "viewModel$delegate", "Lkotlin/f;", "getViewModel", "()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;", "viewModel", "lastIcData", "Ljava/lang/String;", "liveData", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;", "binding$delegate", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;", "binding", "Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;", "clearObserver", "clearLiveData", "onlyGZMode", "checkMode", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LoginStudentActivity extends BaseActivity {
    private static final long INTERVAL_READ_IC_CARD = 1000;
    private static final int MSG_READ_IC_CARD = 34;
    private final d adapter;
    private final i0<ClearIdEvent> clearLiveData;
    private final i0<ClearIdEvent>.b clearObserver;
    private IcReader icReader;
    private final Items items;
    private String lastIcData;
    private final i0<IdCardEvent> liveData;
    private final i0<IdCardEvent>.b observer;
    private boolean onlyGZMode;
    private boolean onlyIcMode;
    private Handler readIcCardHandler;
    private final HandlerThread readIcCardThread;
    private boolean speakIcNotMatch;
    private int personMode = PersonMode.STUDENT.ordinal();
    private int checkMode = CheckMode.SIGN_IN.ordinal();

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityStudentLoginBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel = new l0(v.b(LoginViewModel.class), new Function0<n0>() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$vm$$inlined$viewModels$2
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
    }, new BaseActivity.C03851());

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$initQrCode$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$initQrCode$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
        static final class RunnableC01691 implements Runnable {
            final /* synthetic */ Bitmap $bitmap;

            /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$initQrCode$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"cn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1", "Lcn/mucang/android/account/m/d/a;", "", "scanLoginStatus", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "qrAuthUser", "Lkotlin/v;", "onCallback", "(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V", "library_release"}, k = 1, mv = {1, 1, 15})
            public static final class C01701 implements ScanLoginStatusListener {
                C01701() {
                }

                @Override // cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener
                public void onCallback(final int scanLoginStatus, final QrAuthUser qrAuthUser) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("scanLoginStatus=");
                    sb.append(scanLoginStatus);
                    sb.append(",authToken=");
                    sb.append(qrAuthUser != null ? qrAuthUser.getAuthToken() : null);
                    SundialLog.normal(sb.toString());
                    u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initQrCode$1$1$1$onCallback$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String authToken;
                            int i = scanLoginStatus;
                            if (i == 0) {
                                TextView textView = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                                r.d(textView, "binding.invalidAppQrCode");
                                textView.setVisibility(8);
                                return;
                            }
                            if (i == 1) {
                                TextView textView2 = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                                r.d(textView2, "binding.invalidAppQrCode");
                                textView2.setVisibility(0);
                                return;
                            }
                            if (i != 2) {
                                if (i == 3) {
                                    TextView textView3 = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                                    r.d(textView3, "binding.invalidAppQrCode");
                                    textView3.setVisibility(0);
                                    QrCodeHelper.f2245f.a().i();
                                    return;
                                }
                                if (i != 20040) {
                                    return;
                                }
                                TextView textView4 = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                                r.d(textView4, "binding.invalidAppQrCode");
                                textView4.setVisibility(0);
                                QrCodeHelper.f2245f.a().i();
                                return;
                            }
                            TextView textView5 = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                            r.d(textView5, "binding.invalidAppQrCode");
                            textView5.setVisibility(0);
                            QrCodeHelper.f2245f.a().i();
                            SundialManager sundialManager = SundialManager.getInstance();
                            r.d(sundialManager, "SundialManager.getInstance()");
                            if (!sundialManager.isRegister()) {
                                ToastUtil.INSTANCE.showToastOnce(R.string.tt_please_register_device);
                                return;
                            }
                            if (!DeviceUtils.hasNetWork()) {
                                String string = LoginStudentActivity.this.getString(R.string.tt_net_error);
                                r.d(string, "getString(R.string.tt_net_error)");
                                Tts.speak$default(string, null, 2, null);
                            } else {
                                if (!AppLocation.isLocationValid()) {
                                    Tts.speak$default("获取定位信息失败", null, 2, null);
                                    return;
                                }
                                LoginUtil loginUtil = LoginUtil.INSTANCE;
                                LoginStudentActivity loginStudentActivity = LoginStudentActivity.this;
                                int i2 = loginStudentActivity.personMode;
                                QrAuthUser qrAuthUser2 = qrAuthUser;
                                if (qrAuthUser2 == null || (authToken = qrAuthUser2.getAuthToken()) == null) {
                                    authToken = "";
                                }
                                loginUtil.loginWithFaceCheck(loginStudentActivity, i2, (24 & 4) != 0 ? "" : null, (24 & 8) != 0 ? "" : authToken, (24 & 16) != 0 ? "" : null);
                            }
                        }
                    });
                }
            }

            RunnableC01691(Bitmap bitmap) {
                this.$bitmap = bitmap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                TextView textView = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                r.d(textView, "binding.invalidAppQrCode");
                textView.setVisibility(8);
                TextView textView2 = LoginStudentActivity.this.getBinding().invalidAppQrCode;
                r.d(textView2, "binding.invalidAppQrCode");
                textView2.setEnabled(true);
                Bitmap bitmap = this.$bitmap;
                if (bitmap == null || bitmap.isRecycled()) {
                    LinearLayout linearLayout = LoginStudentActivity.this.getBinding().qrCodeLayout;
                    r.d(linearLayout, "binding.qrCodeLayout");
                    linearLayout.setVisibility(4);
                } else {
                    LinearLayout linearLayout2 = LoginStudentActivity.this.getBinding().qrCodeLayout;
                    r.d(linearLayout2, "binding.qrCodeLayout");
                    linearLayout2.setVisibility(0);
                    LoginStudentActivity.this.getBinding().appQrCode.setImageBitmap(this.$bitmap);
                    QrCodeHelper.f2245f.a().h(new C01701());
                }
            }
        }

        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a.b(new QRCodeGenerator());
            u.f(new RunnableC01691(QrCodeHelper.f2245f.a().c(233.0f, 233.0f)));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$loadGZQrCode$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class RunnableC04021 implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$loadGZQrCode$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
        static final class RunnableC01711 implements Runnable {
            final /* synthetic */ Bitmap $bitmap;

            /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$loadGZQrCode$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"cn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1", "Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;", "", "scanLoginStatus", "Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;", "qrAuthUser", "Lkotlin/v;", "onCallback", "(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V", "library_release"}, k = 1, mv = {1, 1, 15})
            public static final class C01721 implements GZScanLoginStatusListener {
                C01721() {
                }

                @Override // cn.mucang.sundial.library.qrcode.listener.GZScanLoginStatusListener
                @SuppressLint({"SetTextI18n"})
                public void onCallback(final int scanLoginStatus, final GZQrAuthUser qrAuthUser) {
                    u.c(new SafeRunnable(LoginStudentActivity.this, new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String idCard;
                            String idCard2;
                            int i = scanLoginStatus;
                            if (i == 20040 || i == 3) {
                                GZQrCodeHelper.INSTANCE.getInstance().stopListenLoginStatus();
                                TextView textView = LoginStudentActivity.this.getBinding().gzStudent.gzInvalidAppQrCode;
                                r.d(textView, "binding.gzStudent.gzInvalidAppQrCode");
                                textView.setVisibility(0);
                                return;
                            }
                            if (i == 0) {
                                TextView textView2 = LoginStudentActivity.this.getBinding().gzStudent.gzInvalidAppQrCode;
                                r.d(textView2, "binding.gzStudent.gzInvalidAppQrCode");
                                textView2.setVisibility(8);
                                return;
                            }
                            if (i == 1 || i == 2) {
                                GZQrCodeHelper.INSTANCE.getInstance().stopListenLoginStatus();
                                TextView textView3 = LoginStudentActivity.this.getBinding().gzStudent.gzInvalidAppQrCode;
                                r.d(textView3, "binding.gzStudent.gzInvalidAppQrCode");
                                textView3.setVisibility(0);
                                StringBuilder sb = new StringBuilder();
                                sb.append("粤学车学员扫码成功: ");
                                GZQrAuthUser gZQrAuthUser = qrAuthUser;
                                if (gZQrAuthUser == null || (idCard = gZQrAuthUser.getIdCard()) == null) {
                                    idCard = "";
                                }
                                sb.append(idCard);
                                SundialLog.normal(sb.toString());
                                if (LoginStudentActivity.this.checkMode != CheckMode.SIGN_IN.ordinal()) {
                                    LoginStudentActivity.this.setResult(-1);
                                    LoginStudentActivity.this.finish();
                                    return;
                                }
                                SundialManager sundialManager = SundialManager.getInstance();
                                r.d(sundialManager, "SundialManager.getInstance()");
                                if (!sundialManager.isRegister()) {
                                    Application applicationD = Utils.d();
                                    r.d(applicationD, "Utils.getApp()");
                                    Resources resources = applicationD.getResources();
                                    int i2 = R.string.tt_please_register_device;
                                    SundialLog.normal(resources.getText(i2));
                                    ToastUtil.INSTANCE.showToastOnce(i2);
                                    return;
                                }
                                if (DeviceUtils.hasNetWork()) {
                                    if (!AppLocation.isLocationValid()) {
                                        Tts.speak$default("获取定位信息失败", null, 2, null);
                                        return;
                                    }
                                    LoginUtil loginUtil = LoginUtil.INSTANCE;
                                    LoginStudentActivity loginStudentActivity = LoginStudentActivity.this;
                                    int i3 = loginStudentActivity.personMode;
                                    GZQrAuthUser gZQrAuthUser2 = qrAuthUser;
                                    loginUtil.loginWithFaceCheck(loginStudentActivity, i3, (24 & 4) != 0 ? "" : (gZQrAuthUser2 == null || (idCard2 = gZQrAuthUser2.getIdCard()) == null) ? "" : idCard2, (24 & 8) != 0 ? "" : null, (24 & 16) != 0 ? "" : null);
                                    return;
                                }
                                Application applicationD2 = Utils.d();
                                r.d(applicationD2, "Utils.getApp()");
                                Resources resources2 = applicationD2.getResources();
                                int i4 = R.string.tt_net_error;
                                SundialLog.normal(resources2.getText(i4));
                                String string = Utils.d().getString(i4);
                                r.d(string, "Utils.getApp().getString(R.string.tt_net_error)");
                                Tts.speak$default(string, null, 2, null);
                            }
                        }
                    }));
                }
            }

            RunnableC01711(Bitmap bitmap) {
                this.$bitmap = bitmap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                TextView textView = LoginStudentActivity.this.getBinding().gzStudent.gzInvalidAppQrCode;
                r.d(textView, "binding.gzStudent.gzInvalidAppQrCode");
                textView.setVisibility(8);
                LoginStudentActivity.this.getBinding().gzStudent.gzAppQrCode.setImageBitmap(this.$bitmap);
                GZQrCodeHelper.INSTANCE.getInstance().startListenLoginStatus(new C01721());
            }
        }

        RunnableC04021() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            GZQrCodeModel qrCode = GZQrCodeHelper.INSTANCE.getInstance().getQrCode(LoginStudentActivity.this.checkMode == CheckMode.SIGN_IN.ordinal());
            Bitmap bitmapCreateQRCodeBitmap = QRCodeUtil.createQRCodeBitmap(qrCode != null ? qrCode.getUrl() : null, (int) LoginStudentActivity.this.getResources().getDimension(R.dimen.rpx_480));
            if (bitmapCreateQRCodeBitmap != null) {
                r.d(bitmapCreateQRCodeBitmap, "QRCodeUtil.createQRCodeB…      ) ?: return@execute");
                u.c(new SafeRunnable(LoginStudentActivity.this, new RunnableC01711(bitmapCreateQRCodeBitmap)));
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginStudentActivity$startReadIcTask$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1", "Landroid/os/Handler$Callback;", "Landroid/os/Message;", SocialConstants.PARAM_SEND_MSG, "", "handleMessage", "(Landroid/os/Message;)Z", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C04031 implements Handler.Callback {
        C04031() {
        }

        /* JADX WARN: Code duplicated, block: B:49:0x00e4 A[Catch: all -> 0x0114, TryCatch #1 {all -> 0x0114, blocks: (B:24:0x0072, B:30:0x009b, B:33:0x00a2, B:35:0x00a6, B:36:0x00ac, B:41:0x00bf, B:43:0x00c7, B:47:0x00dc, B:49:0x00e4, B:51:0x00ec, B:52:0x00f8, B:57:0x0106, B:44:0x00ce, B:46:0x00d6, B:58:0x010e, B:29:0x0091, B:26:0x007e), top: B:66:0x0072, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:51:0x00ec A[Catch: all -> 0x0114, TryCatch #1 {all -> 0x0114, blocks: (B:24:0x0072, B:30:0x009b, B:33:0x00a2, B:35:0x00a6, B:36:0x00ac, B:41:0x00bf, B:43:0x00c7, B:47:0x00dc, B:49:0x00e4, B:51:0x00ec, B:52:0x00f8, B:57:0x0106, B:44:0x00ce, B:46:0x00d6, B:58:0x010e, B:29:0x0091, B:26:0x007e), top: B:66:0x0072, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:52:0x00f8 A[Catch: all -> 0x0114, TryCatch #1 {all -> 0x0114, blocks: (B:24:0x0072, B:30:0x009b, B:33:0x00a2, B:35:0x00a6, B:36:0x00ac, B:41:0x00bf, B:43:0x00c7, B:47:0x00dc, B:49:0x00e4, B:51:0x00ec, B:52:0x00f8, B:57:0x0106, B:44:0x00ce, B:46:0x00d6, B:58:0x010e, B:29:0x0091, B:26:0x007e), top: B:66:0x0072, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:54:0x0102  */
        /* JADX WARN: Code duplicated, block: B:56:0x0105  */
        /* JADX WARN: Code duplicated, block: B:57:0x0106 A[Catch: all -> 0x0114, TryCatch #1 {all -> 0x0114, blocks: (B:24:0x0072, B:30:0x009b, B:33:0x00a2, B:35:0x00a6, B:36:0x00ac, B:41:0x00bf, B:43:0x00c7, B:47:0x00dc, B:49:0x00e4, B:51:0x00ec, B:52:0x00f8, B:57:0x0106, B:44:0x00ce, B:46:0x00d6, B:58:0x010e, B:29:0x0091, B:26:0x007e), top: B:66:0x0072, inners: #0 }] */
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            Object objM139constructorimpl;
            int iOrdinal;
            final String certificateCode;
            r.e(msg, "msg");
            if (msg.what != 34) {
                return false;
            }
            IcReader icReader = LoginStudentActivity.this.icReader;
            final String data = icReader != null ? icReader.getData() : null;
            if (data == null || t.r(data)) {
                LoginStudentActivity.this.speakIcNotMatch = false;
                LoginStudentActivity.this.lastIcData = null;
                LoginStudentActivity.this.rescheduleReadIcCardTask();
                return true;
            }
            if (r.a(data, LoginStudentActivity.this.lastIcData)) {
                LoginStudentActivity.this.rescheduleReadIcCardTask();
                return true;
            }
            LoginStudentActivity.this.lastIcData = data;
            SundialLog.normal("raw length=" + data.length() + ",result=" + data);
            try {
                Result.Companion companion = Result.INSTANCE;
                IcInfo icInfo = (IcInfo) JSON.parseObject(data, IcInfo.class);
                if (icInfo != null) {
                    try {
                        objM139constructorimpl = Result.m139constructorimpl(new CardApi().realityCard(icInfo.getId()));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(k.a(th));
                    }
                    if (Result.m145isFailureimpl(objM139constructorimpl)) {
                        objM139constructorimpl = null;
                    }
                    ServerCardInfo serverCardInfo = (ServerCardInfo) objM139constructorimpl;
                    if (serverCardInfo == null) {
                        LoginStudentActivity.this.lastIcData = null;
                    } else {
                        String type = serverCardInfo.getType();
                        int iHashCode = type.hashCode();
                        if (iHashCode != -214492645) {
                            if (iHashCode == 65279098 && type.equals(ServerCardInfo.TYPE_COACH)) {
                                iOrdinal = PersonMode.COACH.ordinal();
                                if (iOrdinal != LoginStudentActivity.this.personMode) {
                                    certificateCode = serverCardInfo.getCertificateCode();
                                    if (certificateCode.length() == 0) {
                                        u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                LoginStudentActivity.this.onGetIdCard(certificateCode);
                                            }
                                        });
                                    }
                                } else if (!LoginStudentActivity.this.speakIcNotMatch) {
                                    Tts.speak$default("请插入学员卡", null, 2, null);
                                    LoginStudentActivity.this.speakIcNotMatch = true;
                                }
                            }
                        } else if (type.equals(ServerCardInfo.TYPE_STUDENT)) {
                            iOrdinal = PersonMode.STUDENT.ordinal();
                            if (iOrdinal != LoginStudentActivity.this.personMode) {
                                certificateCode = serverCardInfo.getCertificateCode();
                                if (certificateCode.length() == 0) {
                                    u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            LoginStudentActivity.this.onGetIdCard(certificateCode);
                                        }
                                    });
                                }
                            } else if (!LoginStudentActivity.this.speakIcNotMatch) {
                                Tts.speak$default("请插入学员卡", null, 2, null);
                                LoginStudentActivity.this.speakIcNotMatch = true;
                            }
                        }
                    }
                }
                Result.m139constructorimpl(kotlin.v.f15822a);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m139constructorimpl(k.a(th2));
            }
            LoginStudentActivity.this.rescheduleReadIcCardTask();
            return true;
        }
    }

    public LoginStudentActivity() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
        LiveBus.Companion companion = LiveBus.INSTANCE;
        i0<IdCardEvent> i0VarWith = companion.with(IdCardEvent.class);
        this.liveData = i0VarWith;
        this.observer = new i0.b(i0VarWith, new a0<IdCardEvent>() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$observer$1
            @Override // androidx.lifecycle.a0
            public final void onChanged(IdCardEvent idCardEvent) {
                String str = idCardEvent.idCard;
                if (str == null || str.length() == 0) {
                    return;
                }
                LoginUtil loginUtil = LoginUtil.INSTANCE;
                LoginStudentActivity loginStudentActivity = this.this$0;
                int iOrdinal = PersonMode.STUDENT.ordinal();
                String str2 = idCardEvent.idCard;
                r.d(str2, "it.idCard");
                loginUtil.loginWithFaceCheck(loginStudentActivity, iOrdinal, (24 & 4) != 0 ? "" : str2, (24 & 8) != 0 ? "" : null, (24 & 16) != 0 ? "" : null);
            }
        });
        i0<ClearIdEvent> i0VarWith2 = companion.with(ClearIdEvent.class);
        this.clearLiveData = i0VarWith2;
        this.clearObserver = new i0.b(i0VarWith2, new a0<ClearIdEvent>() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$clearObserver$1
            @Override // androidx.lifecycle.a0
            public final void onChanged(final ClearIdEvent clearIdEvent) {
                if (clearIdEvent.id.longValue() > 0) {
                    ClearRecordConfirmDialog.Builder builder = new ClearRecordConfirmDialog.Builder(this.this$0, true);
                    String string = this.this$0.getString(R.string.tt_clear_student_login_recode);
                    r.d(string, "getString(R.string.tt_clear_student_login_recode)");
                    builder.setContent(string, new DialogCallBack() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$clearObserver$1.1
                        @Override // cn.mucang.sundial.library.widget.DialogCallBack
                        public void onSelect(int index) {
                            if (index == 1) {
                                DataManager.getInstance().deleteStudent(clearIdEvent.id);
                                d dVar = LoginStudentActivity$clearObserver$1.this.this$0.adapter;
                                SundialManager sundialManager = SundialManager.getInstance();
                                r.d(sundialManager, "SundialManager.getInstance()");
                                dVar.h(sundialManager.getLastStudents());
                                LoginStudentActivity$clearObserver$1.this.this$0.adapter.notifyDataSetChanged();
                            }
                        }
                    }).show();
                }
            }
        });
        this.readIcCardThread = new HandlerThread("READ_IC_CARD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TtActivityStudentLoginBinding getBinding() {
        return (TtActivityStudentLoginBinding) this.binding.getValue();
    }

    private final LoginViewModel getViewModel() {
        return (LoginViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initQrCode() {
        ThreadPool.a(new AnonymousClass1());
    }

    private final void initView() {
        getBaseBinding().leftTransBtn.setOnClickListener(null);
        final TtActivityStudentLoginBinding binding = getBinding();
        binding.back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                KtxsKt.safeStartActivity$default(this.this$0, CoachInfoActivity.class, null, 2, null);
            }
        });
        TextView title = binding.title;
        r.d(title, "title");
        title.setText("学员登录");
        LinearLayout back = binding.back;
        r.d(back, "back");
        back.setVisibility(0);
        binding.idCardNumber.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$2
            /* JADX WARN: Code duplicated, block: B:12:0x0045  */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String string;
                String string2;
                if (this.interruptToRegister()) {
                    return;
                }
                LoginStudentActivity loginStudentActivity = this;
                Intent intent = new Intent(this, (Class<?>) InputIdCardActivity.class);
                intent.putExtra(ExtraKey.personMode, this.personMode);
                EditText idCardNumber = binding.idCardNumber;
                r.d(idCardNumber, "idCardNumber");
                Editable text = idCardNumber.getText();
                if (text == null || (string2 = text.toString()) == null) {
                    string = "";
                } else {
                    Objects.requireNonNull(string2, "null cannot be cast to non-null type kotlin.CharSequence");
                    string = StringsKt__StringsKt.J0(string2).toString();
                    if (string == null) {
                        string = "";
                    }
                }
                intent.putExtra(ExtraKey.idNum, string);
                kotlin.v vVar = kotlin.v.f15822a;
                loginStudentActivity.startActivityForResult(intent, 3);
            }
        });
        binding.login.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String string;
                String string2;
                if (this.interruptToRegister()) {
                    return;
                }
                EditText idCardNumber = binding.idCardNumber;
                r.d(idCardNumber, "idCardNumber");
                Editable text = idCardNumber.getText();
                if (text == null || (string2 = text.toString()) == null) {
                    string = null;
                } else {
                    Objects.requireNonNull(string2, "null cannot be cast to non-null type kotlin.CharSequence");
                    string = StringsKt__StringsKt.J0(string2).toString();
                }
                if (string == null || string.length() == 0) {
                    ToastUtil.INSTANCE.showToastOnce(R.string.tt_please_input_id);
                    return;
                }
                if (!DeviceUtils.hasNetWork()) {
                    String string3 = this.getString(R.string.tt_net_error);
                    r.d(string3, "getString(R.string.tt_net_error)");
                    Tts.speak$default(string3, null, 2, null);
                } else {
                    if (!AppLocation.isLocationValid()) {
                        Tts.speak$default("获取定位信息失败", null, 2, null);
                        return;
                    }
                    LoginUtil loginUtil = LoginUtil.INSTANCE;
                    LoginStudentActivity loginStudentActivity = this;
                    loginUtil.loginWithFaceCheck(loginStudentActivity, loginStudentActivity.personMode, (24 & 4) != 0 ? "" : string, (24 & 8) != 0 ? "" : null, (24 & 16) != 0 ? "" : null);
                }
            }
        });
        binding.invalidAppQrCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextView invalidAppQrCode = binding.invalidAppQrCode;
                r.d(invalidAppQrCode, "invalidAppQrCode");
                invalidAppQrCode.setEnabled(false);
                this.initQrCode();
            }
        });
        this.adapter.f(StudentInfo.class, new StudentRecordBinder());
        RecyclerView recyclerView = binding.recyclerView;
        r.d(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        d dVar = this.adapter;
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        dVar.h(sundialManager.getLastStudents());
        this.adapter.notifyDataSetChanged();
        binding.clearRecord.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClearRecordConfirmDialog.Builder builder = new ClearRecordConfirmDialog.Builder(this.this$0, true);
                String string = this.this$0.getString(R.string.tt_clean_student_login_recode);
                r.d(string, "getString(R.string.tt_clean_student_login_recode)");
                builder.setContent(string, new DialogCallBack() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$5.1
                    @Override // cn.mucang.sundial.library.widget.DialogCallBack
                    public void onSelect(int index) {
                        if (index == 1) {
                            SundialManager sundialManager2 = SundialManager.getInstance();
                            r.d(sundialManager2, "SundialManager.getInstance()");
                            sundialManager2.setClearRecordTime(System.currentTimeMillis());
                            d dVar2 = LoginStudentActivity$initView$$inlined$with$lambda$5.this.this$0.adapter;
                            SundialManager sundialManager3 = SundialManager.getInstance();
                            r.d(sundialManager3, "SundialManager.getInstance()");
                            dVar2.h(sundialManager3.getLastStudents());
                            LoginStudentActivity$initView$$inlined$with$lambda$5.this.this$0.adapter.notifyDataSetChanged();
                        }
                    }
                }).show();
            }
        });
        if (this.onlyGZMode) {
            if (this.checkMode == CheckMode.SIGN_IN.ordinal()) {
                TextView textView = binding.gzStudent.gzTitle;
                r.d(textView, "gzStudent.gzTitle");
                textView.setText("学员登录");
                binding.gzStudent.gzBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$2$6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        binding.back.callOnClick();
                    }
                });
            } else {
                TextView textView2 = binding.gzStudent.gzTitle;
                r.d(textView2, "gzStudent.gzTitle");
                textView2.setText("学员签退");
                binding.gzStudent.gzBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.this$0.finish();
                    }
                });
            }
            binding.gzStudent.btnQrRefresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.loadGZQrCode();
                }
            });
            binding.gzStudent.gzRefreshQrcode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity$initView$$inlined$with$lambda$8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.loadGZQrCode();
                }
            });
        }
        if (MucangConfig.v()) {
            getViewModel().getLastInfo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean interruptToRegister() {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        boolean zIsRegister = sundialManager.isRegister();
        if (!zIsRegister) {
            ToastUtil toastUtil = ToastUtil.INSTANCE;
            int i = R.string.tt_please_register_device;
            toastUtil.showToastOnce(i);
            String string = getString(i);
            r.d(string, "getString(R.string.tt_please_register_device)");
            Tts.speak$default(string, null, 2, null);
        }
        return !zIsRegister;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadGZQrCode() {
        GZQrCodeHelper.INSTANCE.getInstance().stopListenLoginStatus();
        ThreadPool.a(new RunnableC04021());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onGetIdCard(String idCard) {
        getBinding().idCardNumber.setText(idCard);
        if (this.onlyIcMode) {
            getBinding().login.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void rescheduleReadIcCardTask() {
        Handler handler = this.readIcCardHandler;
        if (handler != null) {
            handler.removeMessages(34);
        }
        Handler handler2 = this.readIcCardHandler;
        if (handler2 != null) {
            handler2.sendEmptyMessageDelayed(34, 1000L);
        }
    }

    private final void startReadIcTask() {
        if (this.readIcCardThread.isAlive()) {
            if (this.readIcCardHandler == null) {
                this.readIcCardHandler = new Handler(this.readIcCardThread.getLooper(), new C04031());
            }
            IcReader icReader = this.icReader;
            if (icReader != null) {
                icReader.init();
            }
            rescheduleReadIcCardTask();
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        this.onlyIcMode = sundialManager.isOnlyIcCarMode();
        SundialManager sundialManager2 = SundialManager.getInstance();
        r.d(sundialManager2, "SundialManager.getInstance()");
        this.onlyGZMode = sundialManager2.isOnlyGZMiniQRCode();
        Intent intent = getIntent();
        if (intent != null) {
            this.checkMode = intent.getIntExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initViewModel() {
        super.initViewModel();
        getViewModel().getStudentLiveData().q(this, new a0<StudentInfo>() { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity.initViewModel.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(StudentInfo studentInfo) {
                if (studentInfo != null) {
                    LoginStudentActivity.this.getBinding().idCardNumber.setText(studentInfo.getIdCard());
                }
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        String stringExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (data != null && (stringExtra = data.getStringExtra(ExtraKey.idNum)) != null && stringExtra.length() == 18) {
            getBinding().idCardNumber.setText(stringExtra);
        }
        if (requestCode == 1) {
            if (resultCode == -1) {
                startActivity(new Intent(this, (Class<?>) CoachInfoActivity.class));
                finish();
                return;
            }
            return;
        }
        if (requestCode == 3) {
            setResult(resultCode);
            if (resultCode == -1) {
                SundialLog.normal("学员登录完成");
                startActivity(new Intent(this, (Class<?>) StudentInfoActivity.class));
                finish();
            }
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initData();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        initView();
        SundialDevice device = GlobalData.INSTANCE.getDevice();
        Context applicationContext = getApplicationContext();
        r.d(applicationContext, "this.applicationContext");
        this.icReader = device.icReader(applicationContext);
        if (!this.readIcCardThread.isAlive()) {
            this.readIcCardThread.start();
        }
        TextView textView = getBinding().inertIcCardTip;
        r.d(textView, "binding.inertIcCardTip");
        textView.setVisibility(this.onlyIcMode ? 0 : 8);
        EditText editText = getBinding().idCardNumber;
        r.d(editText, "binding.idCardNumber");
        editText.setVisibility(this.onlyIcMode ^ true ? 0 : 8);
        TextView textView2 = getBinding().login;
        r.d(textView2, "binding.login");
        textView2.setVisibility(this.onlyIcMode ^ true ? 0 : 8);
        LinearLayout linearLayout = getBinding().qrCodeLayout;
        r.d(linearLayout, "binding.qrCodeLayout");
        linearLayout.setVisibility(this.onlyIcMode ^ true ? 0 : 8);
        if (this.onlyIcMode) {
            Tts.speak$default("请插卡", null, 2, null);
        }
        if (this.onlyGZMode) {
            SundialLog.normal("广东学员扫码页面");
            RelativeLayout relativeLayout = getBinding().rlLayout;
            r.d(relativeLayout, "binding.rlLayout");
            relativeLayout.setVisibility(8);
        }
        FrameLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            initView();
        }
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        QrCodeHelper.f2245f.a().i();
        GZQrCodeHelper.INSTANCE.getInstance().stopListenLoginStatus();
        Handler handler = this.readIcCardHandler;
        if (handler != null) {
            handler.removeMessages(34);
        }
        this.readIcCardHandler = null;
        if (isFinishing()) {
            this.readIcCardThread.quit();
        }
        IcReader icReader = this.icReader;
        if (icReader != null) {
            icReader.destroy();
        }
        this.liveData.m(this.observer);
        this.clearLiveData.m(this.clearObserver);
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.onlyIcMode) {
            initQrCode();
        }
        if (this.onlyGZMode) {
            loadGZQrCode();
        }
        startReadIcTask();
        this.liveData.p(this.observer);
        this.clearLiveData.p(this.clearObserver);
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    protected m0.b vmFactory() {
        return new m0.a(getApplication()) { // from class: cn.mucang.sundial.library.activity.LoginStudentActivity.vmFactory.1
            @Override // androidx.lifecycle.m0.a, androidx.lifecycle.m0.d, androidx.lifecycle.m0.b
            public <T extends j0> T create(Class<T> modelClass) {
                r.e(modelClass, "modelClass");
                if (r.a(modelClass, LoginViewModel.class)) {
                    Application application = LoginStudentActivity.this.getApplication();
                    r.d(application, "application");
                    return new LoginViewModel(application, LoginStudentActivity.this.personMode);
                }
                T t = (T) super.create(modelClass);
                r.d(t, "super.create(modelClass)");
                return t;
            }
        };
    }
}
