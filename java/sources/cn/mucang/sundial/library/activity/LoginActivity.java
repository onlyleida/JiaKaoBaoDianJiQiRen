package cn.mucang.sundial.library.activity;

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
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.android.account.qrcode.QrCodeHelper;
import cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityBaseBinding;
import cn.mucang.sundial.library.databinding.TtActivityLoginBinding;
import cn.mucang.sundial.library.databinding.TtIncludeBottomMountainBinding;
import cn.mucang.sundial.library.device.IcReader;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.IcInfo;
import cn.mucang.sundial.library.entity.ServerCardInfo;
import cn.mucang.sundial.library.http.CardApi;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ClickController;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.QRCodeGenerator;
import cn.mucang.sundial.library.util.ToastUtil;
import cn.mucang.sundial.library.viewmodel.LoginViewModel;
import com.alibaba.fastjson.JSON;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 G2\u00020\u0001:\u0001GB\u0007¢\u0006\u0004\bF\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00182\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0002H\u0014¢\u0006\u0004\b \u0010\u0004J)\u0010%\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010\u001bH\u0014¢\u0006\u0004\b%\u0010&R\u001d\u0010,\u001a\u00020'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u001d\u00104\u001a\u0002008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010)\u001a\u0004\b2\u00103R\u0016\u00105\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00108\u001a\u0002078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006H"}, d2 = {"Lcn/mucang/sundial/library/activity/LoginActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "startReadIcTask", "rescheduleReadIcCardTask", "", "idCard", "onGetIdCard", "(Ljava/lang/String;)V", "initQrCode", "", "interruptToRegister", "()Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initData", "initViewModel", "Landroidx/lifecycle/m0$b;", "vmFactory", "()Landroidx/lifecycle/m0$b;", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Lcn/mucang/sundial/library/viewmodel/LoginViewModel;", "viewModel$delegate", "Lkotlin/f;", "getViewModel", "()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;", "viewModel", "Landroid/os/Handler;", "readIcCardHandler", "Landroid/os/Handler;", "Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;", "binding$delegate", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;", "binding", "personMode", "I", "Landroid/os/HandlerThread;", "readIcCardThread", "Landroid/os/HandlerThread;", "speakIcNotMatch", "Z", "Lcn/mucang/sundial/library/util/ClickController;", "mountainClickController", "Lcn/mucang/sundial/library/util/ClickController;", "onlyIcMode", "clickController", "lastIcData", "Ljava/lang/String;", "Lcn/mucang/sundial/library/device/IcReader;", "icReader", "Lcn/mucang/sundial/library/device/IcReader;", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LoginActivity extends BaseActivity {
    private static final long INTERVAL_READ_IC_CARD = 1000;
    private static final int MSG_READ_IC_CARD = 34;
    private static final String TAG = "LoginActivity";
    private ClickController clickController;
    private IcReader icReader;
    private String lastIcData;
    private boolean onlyIcMode;
    private Handler readIcCardHandler;
    private boolean speakIcNotMatch;
    private int personMode = PersonMode.COACH.ordinal();

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityLoginBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.LoginActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });
    private ClickController mountainClickController = new ClickController(3);

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel = new l0(v.b(LoginViewModel.class), new Function0<n0>() { // from class: cn.mucang.sundial.library.activity.LoginActivity$vm$$inlined$viewModels$2
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
    private final HandlerThread readIcCardThread = new HandlerThread("READ_IC_CARD");

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginActivity$initQrCode$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginActivity$initQrCode$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/v;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
        static final class RunnableC01671 implements Runnable {
            final /* synthetic */ Bitmap $bitmap;

            /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginActivity$initQrCode$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"cn/mucang/sundial/library/activity/LoginActivity$initQrCode$1$1$1", "Lcn/mucang/android/account/m/d/a;", "", "scanLoginStatus", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "qrAuthUser", "Lkotlin/v;", "onCallback", "(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V", "library_release"}, k = 1, mv = {1, 1, 15})
            public static final class C01681 implements ScanLoginStatusListener {
                C01681() {
                }

                @Override // cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener
                public void onCallback(final int scanLoginStatus, final QrAuthUser qrAuthUser) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("scanLoginStatus=");
                    sb.append(scanLoginStatus);
                    sb.append(",authToken=");
                    sb.append(qrAuthUser != null ? qrAuthUser.getAuthToken() : null);
                    t.h(LoginActivity.TAG, sb.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("scanLoginStatus=");
                    sb2.append(scanLoginStatus);
                    sb2.append(",authToken=");
                    sb2.append(qrAuthUser != null ? qrAuthUser.getAuthToken() : null);
                    SundialLog.normal(sb2.toString());
                    u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initQrCode$1$1$1$onCallback$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String authToken;
                            int i = scanLoginStatus;
                            if (i == 0) {
                                SundialLog.normal("扫码等待");
                                TextView textView = LoginActivity.this.getBinding().invalidAppQrCode;
                                r.d(textView, "binding.invalidAppQrCode");
                                textView.setVisibility(8);
                                return;
                            }
                            if (i == 1) {
                                SundialLog.normal("扫码成功");
                                TextView textView2 = LoginActivity.this.getBinding().invalidAppQrCode;
                                r.d(textView2, "binding.invalidAppQrCode");
                                textView2.setVisibility(0);
                                return;
                            }
                            if (i != 2) {
                                if (i == 3) {
                                    SundialLog.normal("扫码取消");
                                    TextView textView3 = LoginActivity.this.getBinding().invalidAppQrCode;
                                    r.d(textView3, "binding.invalidAppQrCode");
                                    textView3.setVisibility(0);
                                    QrCodeHelper.f2245f.a().i();
                                    return;
                                }
                                if (i != 20040) {
                                    return;
                                }
                                SundialLog.normal("扫码超时");
                                TextView textView4 = LoginActivity.this.getBinding().invalidAppQrCode;
                                r.d(textView4, "binding.invalidAppQrCode");
                                textView4.setVisibility(0);
                                QrCodeHelper.f2245f.a().i();
                                return;
                            }
                            SundialLog.normal("登录成功");
                            TextView textView5 = LoginActivity.this.getBinding().invalidAppQrCode;
                            r.d(textView5, "binding.invalidAppQrCode");
                            textView5.setVisibility(0);
                            QrCodeHelper.f2245f.a().i();
                            SundialManager sundialManager = SundialManager.getInstance();
                            r.d(sundialManager, "SundialManager.getInstance()");
                            if (!sundialManager.isRegister()) {
                                Resources resources = LoginActivity.this.getResources();
                                int i2 = R.string.tt_please_register_device;
                                SundialLog.normal(resources.getText(i2));
                                ToastUtil.INSTANCE.showToastOnce(i2);
                                return;
                            }
                            if (!DeviceUtils.hasNetWork()) {
                                Resources resources2 = LoginActivity.this.getResources();
                                int i3 = R.string.tt_net_error;
                                SundialLog.normal(resources2.getText(i3));
                                String string = LoginActivity.this.getString(i3);
                                r.d(string, "getString(R.string.tt_net_error)");
                                Tts.speak$default(string, null, 2, null);
                                return;
                            }
                            if (LoginActivity.this.personMode == PersonMode.STUDENT.ordinal() && !AppLocation.isLocationValid()) {
                                SundialLog.normal("获取定位信息失败");
                                Tts.speak$default("获取定位信息失败", null, 2, null);
                                return;
                            }
                            LoginUtil loginUtil = LoginUtil.INSTANCE;
                            LoginActivity loginActivity = LoginActivity.this;
                            int i4 = loginActivity.personMode;
                            QrAuthUser qrAuthUser2 = qrAuthUser;
                            if (qrAuthUser2 == null || (authToken = qrAuthUser2.getAuthToken()) == null) {
                                authToken = "";
                            }
                            loginUtil.loginWithFaceCheck(loginActivity, i4, (24 & 4) != 0 ? "" : null, (24 & 8) != 0 ? "" : authToken, (24 & 16) != 0 ? "" : null);
                        }
                    });
                }
            }

            RunnableC01671(Bitmap bitmap) {
                this.$bitmap = bitmap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                TextView textView = LoginActivity.this.getBinding().invalidAppQrCode;
                r.d(textView, "binding.invalidAppQrCode");
                textView.setVisibility(8);
                TextView textView2 = LoginActivity.this.getBinding().invalidAppQrCode;
                r.d(textView2, "binding.invalidAppQrCode");
                textView2.setEnabled(true);
                Bitmap bitmap = this.$bitmap;
                if (bitmap == null || bitmap.isRecycled()) {
                    SundialLog.normal("二维码不显示");
                    LinearLayout linearLayout = LoginActivity.this.getBinding().qrCodeLayout;
                    r.d(linearLayout, "binding.qrCodeLayout");
                    linearLayout.setVisibility(4);
                    return;
                }
                LinearLayout linearLayout2 = LoginActivity.this.getBinding().qrCodeLayout;
                r.d(linearLayout2, "binding.qrCodeLayout");
                linearLayout2.setVisibility(0);
                LoginActivity.this.getBinding().appQrCode.setImageBitmap(this.$bitmap);
                QrCodeHelper.f2245f.a().h(new C01681());
            }
        }

        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a.b(new QRCodeGenerator());
            u.f(new RunnableC01671(QrCodeHelper.f2245f.a().c(233.0f, 233.0f)));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.LoginActivity$startReadIcTask$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/mucang/sundial/library/activity/LoginActivity$startReadIcTask$1", "Landroid/os/Handler$Callback;", "Landroid/os/Message;", SocialConstants.PARAM_SEND_MSG, "", "handleMessage", "(Landroid/os/Message;)Z", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C03991 implements Handler.Callback {
        C03991() {
        }

        /* JADX WARN: Code duplicated, block: B:49:0x0103 A[Catch: all -> 0x0144, TryCatch #0 {all -> 0x0144, blocks: (B:24:0x0090, B:30:0x00b9, B:33:0x00c0, B:35:0x00c4, B:36:0x00cb, B:41:0x00de, B:43:0x00e6, B:47:0x00fb, B:49:0x0103, B:51:0x010b, B:55:0x011e, B:56:0x0128, B:61:0x0136, B:44:0x00ed, B:46:0x00f5, B:62:0x013e, B:29:0x00af, B:26:0x009c), top: B:68:0x0090, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:51:0x010b A[Catch: all -> 0x0144, TryCatch #0 {all -> 0x0144, blocks: (B:24:0x0090, B:30:0x00b9, B:33:0x00c0, B:35:0x00c4, B:36:0x00cb, B:41:0x00de, B:43:0x00e6, B:47:0x00fb, B:49:0x0103, B:51:0x010b, B:55:0x011e, B:56:0x0128, B:61:0x0136, B:44:0x00ed, B:46:0x00f5, B:62:0x013e, B:29:0x00af, B:26:0x009c), top: B:68:0x0090, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:53:0x0119  */
        /* JADX WARN: Code duplicated, block: B:54:0x011c  */
        /* JADX WARN: Code duplicated, block: B:56:0x0128 A[Catch: all -> 0x0144, TryCatch #0 {all -> 0x0144, blocks: (B:24:0x0090, B:30:0x00b9, B:33:0x00c0, B:35:0x00c4, B:36:0x00cb, B:41:0x00de, B:43:0x00e6, B:47:0x00fb, B:49:0x0103, B:51:0x010b, B:55:0x011e, B:56:0x0128, B:61:0x0136, B:44:0x00ed, B:46:0x00f5, B:62:0x013e, B:29:0x00af, B:26:0x009c), top: B:68:0x0090, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:58:0x0132  */
        /* JADX WARN: Code duplicated, block: B:60:0x0135  */
        /* JADX WARN: Code duplicated, block: B:61:0x0136 A[Catch: all -> 0x0144, TryCatch #0 {all -> 0x0144, blocks: (B:24:0x0090, B:30:0x00b9, B:33:0x00c0, B:35:0x00c4, B:36:0x00cb, B:41:0x00de, B:43:0x00e6, B:47:0x00fb, B:49:0x0103, B:51:0x010b, B:55:0x011e, B:56:0x0128, B:61:0x0136, B:44:0x00ed, B:46:0x00f5, B:62:0x013e, B:29:0x00af, B:26:0x009c), top: B:68:0x0090, inners: #1 }] */
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            Object objM139constructorimpl;
            int iOrdinal;
            final String certificateCode;
            String str;
            r.e(msg, "msg");
            if (msg.what != 34) {
                return false;
            }
            IcReader icReader = LoginActivity.this.icReader;
            final String data = icReader != null ? icReader.getData() : null;
            if (data == null || kotlin.text.t.r(data)) {
                LoginActivity.this.speakIcNotMatch = false;
                LoginActivity.this.lastIcData = null;
                LoginActivity.this.rescheduleReadIcCardTask();
                return true;
            }
            if (r.a(data, LoginActivity.this.lastIcData)) {
                LoginActivity.this.rescheduleReadIcCardTask();
                return true;
            }
            LoginActivity.this.lastIcData = data;
            t.h(LoginActivity.TAG, "raw length=" + data.length() + ",result=" + data);
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
                        LoginActivity.this.lastIcData = null;
                    } else {
                        String type = serverCardInfo.getType();
                        int iHashCode = type.hashCode();
                        if (iHashCode != -214492645) {
                            if (iHashCode == 65279098 && type.equals(ServerCardInfo.TYPE_COACH)) {
                                iOrdinal = PersonMode.COACH.ordinal();
                                if (iOrdinal != LoginActivity.this.personMode) {
                                    certificateCode = serverCardInfo.getCertificateCode();
                                    if (certificateCode.length() == 0) {
                                        u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                LoginActivity.this.onGetIdCard(certificateCode);
                                            }
                                        });
                                    }
                                } else if (!LoginActivity.this.speakIcNotMatch) {
                                    if (LoginActivity.this.personMode == PersonMode.COACH.ordinal()) {
                                        str = "请插入教练卡";
                                    } else {
                                        str = "请插入学员卡";
                                    }
                                    Tts.speak$default(str, null, 2, null);
                                    LoginActivity.this.speakIcNotMatch = true;
                                }
                            }
                        } else if (type.equals(ServerCardInfo.TYPE_STUDENT)) {
                            iOrdinal = PersonMode.STUDENT.ordinal();
                            if (iOrdinal != LoginActivity.this.personMode) {
                                certificateCode = serverCardInfo.getCertificateCode();
                                if (certificateCode.length() == 0) {
                                    u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.LoginActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            LoginActivity.this.onGetIdCard(certificateCode);
                                        }
                                    });
                                }
                            } else if (!LoginActivity.this.speakIcNotMatch) {
                                if (LoginActivity.this.personMode == PersonMode.COACH.ordinal()) {
                                    str = "请插入教练卡";
                                } else {
                                    str = "请插入学员卡";
                                }
                                Tts.speak$default(str, null, 2, null);
                                LoginActivity.this.speakIcNotMatch = true;
                            }
                        }
                    }
                }
                Result.m139constructorimpl(kotlin.v.f15822a);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m139constructorimpl(k.a(th2));
            }
            LoginActivity.this.rescheduleReadIcCardTask();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TtActivityLoginBinding getBinding() {
        return (TtActivityLoginBinding) this.binding.getValue();
    }

    private final LoginViewModel getViewModel() {
        return (LoginViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initQrCode() {
        ThreadPool.a(new AnonymousClass1());
    }

    private final void initView() {
        TtActivityBaseBinding baseBinding = getBaseBinding();
        int i = this.personMode;
        PersonMode personMode = PersonMode.COACH;
        if (i == personMode.ordinal()) {
            baseBinding.leftTransBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ClickController clickController = this.this$0.clickController;
                    if (clickController != null) {
                        clickController.click(new ClickController.ClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$1.1
                            @Override // cn.mucang.sundial.library.util.ClickController.ClickListener
                            public void onClickCountFull() {
                                LoginActivity$initView$$inlined$with$lambda$1.this.this$0.startActivity(new Intent(LoginActivity$initView$$inlined$with$lambda$1.this.this$0, (Class<?>) AdminCheckActivity.class));
                            }
                        });
                    }
                }
            });
        } else {
            baseBinding.leftTransBtn.setOnClickListener(null);
        }
        final TtActivityLoginBinding binding = getBinding();
        TtIncludeBottomMountainBinding mountain = binding.mountain;
        r.d(mountain, "mountain");
        mountain.getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.mountainClickController.click(new ClickController.ClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$2.1
                    @Override // cn.mucang.sundial.library.util.ClickController.ClickListener
                    public void onClickCountFull() {
                        SundialLog.normal("跳摄像头测试页面");
                        KtxsKt.safeStartActivity$default(LoginActivity$initView$$inlined$with$lambda$2.this.this$0, CameTestActivity.class, null, 2, null);
                    }
                });
            }
        });
        binding.back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        if (this.personMode == personMode.ordinal()) {
            TextView title = binding.title;
            r.d(title, "title");
            title.setText("教练员登录");
            TextView back = binding.back;
            r.d(back, "back");
            back.setVisibility(8);
            SundialLog.normal("教练员登录");
        } else {
            TextView title2 = binding.title;
            r.d(title2, "title");
            title2.setText("学员登录");
            TextView back2 = binding.back;
            r.d(back2, "back");
            back2.setVisibility(0);
            SundialLog.normal("学员登录");
        }
        binding.idCardNumber.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$4
            /* JADX WARN: Code duplicated, block: B:16:0x0055  */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String string;
                String string2;
                if (this.interruptToRegister()) {
                    return;
                }
                int i2 = this.personMode == PersonMode.COACH.ordinal() ? 1 : 3;
                LoginActivity loginActivity = this;
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
                loginActivity.startActivityForResult(intent, i2);
            }
        });
        binding.login.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String string;
                String string2;
                SundialLog.normal("点击登录按钮");
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
                    Resources resources = this.getResources();
                    int i2 = R.string.tt_please_input_id;
                    SundialLog.normal(resources.getText(i2));
                    ToastUtil.INSTANCE.showToastOnce(i2);
                    return;
                }
                if (!DeviceUtils.hasNetWork()) {
                    Resources resources2 = this.getResources();
                    int i3 = R.string.tt_net_error;
                    SundialLog.normal(resources2.getText(i3));
                    String string3 = this.getString(i3);
                    r.d(string3, "getString(R.string.tt_net_error)");
                    Tts.speak$default(string3, null, 2, null);
                    return;
                }
                if (this.personMode == PersonMode.STUDENT.ordinal() && !AppLocation.isLocationValid()) {
                    SundialLog.normal("获取定位信息失败");
                    Tts.speak$default("获取定位信息失败", null, 2, null);
                } else {
                    LoginUtil loginUtil = LoginUtil.INSTANCE;
                    LoginActivity loginActivity = this;
                    loginUtil.loginWithFaceCheck(loginActivity, loginActivity.personMode, (24 & 4) != 0 ? "" : string, (24 & 8) != 0 ? "" : null, (24 & 16) != 0 ? "" : null);
                }
            }
        });
        binding.invalidAppQrCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.LoginActivity$initView$$inlined$with$lambda$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("刷新二维码");
                TextView invalidAppQrCode = binding.invalidAppQrCode;
                r.d(invalidAppQrCode, "invalidAppQrCode");
                invalidAppQrCode.setEnabled(false);
                this.initQrCode();
            }
        });
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
            Resources resources = getResources();
            int i = R.string.tt_please_register_device;
            SundialLog.normal(resources.getText(i));
            ToastUtil.INSTANCE.showToastOnce(i);
            String string = getString(i);
            r.d(string, "getString(R.string.tt_please_register_device)");
            Tts.speak$default(string, null, 2, null);
        }
        return !zIsRegister;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onGetIdCard(String idCard) {
        SundialLog.normal("获取ID卡号：" + idCard);
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
                this.readIcCardHandler = new Handler(this.readIcCardThread.getLooper(), new C03991());
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
        Intent intent = getIntent();
        if (intent != null) {
            this.personMode = intent.getIntExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
        }
        if (this.personMode == PersonMode.COACH.ordinal()) {
            this.clickController = new ClickController(3);
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initViewModel() {
        super.initViewModel();
        getViewModel().getCoachLiveData().q(this, new a0<CoachInfo>() { // from class: cn.mucang.sundial.library.activity.LoginActivity.initViewModel.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(CoachInfo coachInfo) {
                if (coachInfo != null) {
                    LoginActivity.this.getBinding().idCardNumber.setText(coachInfo.getIdCard());
                }
            }
        });
        getViewModel().getStudentLiveData().q(this, new a0<StudentInfo>() { // from class: cn.mucang.sundial.library.activity.LoginActivity.initViewModel.2
            @Override // androidx.lifecycle.a0
            public final void onChanged(StudentInfo studentInfo) {
                if (studentInfo != null) {
                    LoginActivity.this.getBinding().idCardNumber.setText(studentInfo.getIdCard());
                }
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        String stringExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (data != null && (stringExtra = data.getStringExtra(ExtraKey.idNum)) != null && stringExtra.length() == 18) {
            SundialLog.normal("新ID号：" + stringExtra);
            getBinding().idCardNumber.setText(stringExtra);
        }
        if (requestCode == 1) {
            if (resultCode == -1) {
                SundialLog.normal("跳转教练页面");
                startActivity(new Intent(this, (Class<?>) CoachInfoActivity.class));
                finish();
                return;
            }
            return;
        }
        if (requestCode == 3) {
            setResult(resultCode);
            if (resultCode == -1) {
                SundialLog.normal("关闭登录页面");
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
        FrameLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            this.personMode = intent.getIntExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
            initView();
        }
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        QrCodeHelper.f2245f.a().i();
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
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.onlyIcMode) {
            initQrCode();
        }
        startReadIcTask();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    protected m0.b vmFactory() {
        return new m0.a(getApplication()) { // from class: cn.mucang.sundial.library.activity.LoginActivity.vmFactory.1
            @Override // androidx.lifecycle.m0.a, androidx.lifecycle.m0.d, androidx.lifecycle.m0.b
            public <T extends j0> T create(Class<T> modelClass) {
                r.e(modelClass, "modelClass");
                if (r.a(modelClass, LoginViewModel.class)) {
                    Application application = LoginActivity.this.getApplication();
                    r.d(application, "application");
                    return new LoginViewModel(application, LoginActivity.this.personMode);
                }
                T t = (T) super.create(modelClass);
                r.d(t, "super.create(modelClass)");
                return t;
            }
        };
    }
}
