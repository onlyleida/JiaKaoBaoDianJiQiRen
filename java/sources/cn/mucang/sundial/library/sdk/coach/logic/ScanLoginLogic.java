package cn.mucang.sundial.library.sdk.coach.logic;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.android.account.p001qrcode.model.QrCodeModel;
import cn.mucang.android.account.qrcode.QrCodeHelper;
import cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtLayoutLoginScanBinding;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.QRCodeUtil;
import cn.mucang.sundial.library.util.ToastUtil;
import com.blankj.utilcode.util.Utils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000bJ!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0017¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;", "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;", "Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;", "Lcn/mucang/android/account/m/d/a;", "Lkotlin/v;", "loadQrCode", "()V", "init", "", "fromUser", TtmlNode.START, "(Z)V", "switch", "stop", "", "scanLoginStatus", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "qrAuthUser", "onCallback", "(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V", "binding", "<init>", "(Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ScanLoginLogic extends BaseLogic<TtLayoutLoginScanBinding> implements ScanLoginStatusListener {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScanLoginLogic(TtLayoutLoginScanBinding binding) {
        super(binding);
        r.e(binding, "binding");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadQrCode() {
        QrCodeHelper.f2245f.a().i();
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.logic.ScanLoginLogic.loadQrCode.1
            @Override // java.lang.Runnable
            public final void run() {
                QrCodeModel qrCodeModelB = QrCodeHelper.f2245f.a().b();
                final Bitmap bitmapCreateQRCodeBitmap = QRCodeUtil.createQRCodeBitmap(qrCodeModelB != null ? qrCodeModelB.getProtocolUrl() : null, (int) ScanLoginLogic.this.getActivity().getResources().getDimension(R.dimen.rpx_380));
                if (bitmapCreateQRCodeBitmap != null) {
                    r.d(bitmapCreateQRCodeBitmap, "QRCodeUtil.createQRCodeB…      ) ?: return@execute");
                    u.c(new SafeRunnable(ScanLoginLogic.this.getActivity(), new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.logic.ScanLoginLogic.loadQrCode.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            FrameLayout frameLayout = ScanLoginLogic.this.getBinding().qrCodeErrorFl;
                            r.d(frameLayout, "binding.qrCodeErrorFl");
                            frameLayout.setVisibility(8);
                            ScanLoginLogic.this.getBinding().qrCodeIv.setImageBitmap(bitmapCreateQRCodeBitmap);
                            QrCodeHelper.f2245f.a().h(ScanLoginLogic.this);
                        }
                    }));
                }
            }
        });
    }

    @Override // cn.mucang.sundial.library.sdk.coach.logic.BaseLogic
    public void init() {
        getBinding().qrCodeErrorFl.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.logic.ScanLoginLogic.init.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ScanLoginLogic.this.loadQrCode();
            }
        });
    }

    @Override // cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener
    @SuppressLint({"SetTextI18n"})
    public void onCallback(final int scanLoginStatus, final QrAuthUser qrAuthUser) {
        u.c(new SafeRunnable(getActivity(), new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.logic.ScanLoginLogic.onCallback.1
            @Override // java.lang.Runnable
            public final void run() {
                String authToken;
                int i = scanLoginStatus;
                if (i == 20040 || i == 3) {
                    FrameLayout frameLayout = ScanLoginLogic.this.getBinding().qrCodeErrorFl;
                    r.d(frameLayout, "binding.qrCodeErrorFl");
                    frameLayout.setVisibility(0);
                    return;
                }
                if (i == 1) {
                    FrameLayout frameLayout2 = ScanLoginLogic.this.getBinding().qrCodeErrorFl;
                    r.d(frameLayout2, "binding.qrCodeErrorFl");
                    frameLayout2.setVisibility(8);
                    return;
                }
                if (i == 0) {
                    FrameLayout frameLayout3 = ScanLoginLogic.this.getBinding().qrCodeErrorFl;
                    r.d(frameLayout3, "binding.qrCodeErrorFl");
                    frameLayout3.setVisibility(8);
                    return;
                }
                if (i == 2) {
                    FrameLayout frameLayout4 = ScanLoginLogic.this.getBinding().qrCodeErrorFl;
                    r.d(frameLayout4, "binding.qrCodeErrorFl");
                    frameLayout4.setVisibility(0);
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
                    if (!DeviceUtils.hasNetWork()) {
                        Application applicationD2 = Utils.d();
                        r.d(applicationD2, "Utils.getApp()");
                        Resources resources2 = applicationD2.getResources();
                        int i3 = R.string.tt_net_error;
                        SundialLog.normal(resources2.getText(i3));
                        String string = Utils.d().getString(i3);
                        r.d(string, "Utils.getApp().getString(R.string.tt_net_error)");
                        Tts.speak$default(string, null, 2, null);
                        return;
                    }
                    Activity activityI = MucangConfig.i();
                    Intent intent = new Intent(activityI, (Class<?>) CoachFaceCheckActivity.class);
                    intent.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
                    intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
                    intent.putExtra(ExtraKey.uploadEventType, EventType.COACH_SIGN_IN.valueOf());
                    String str = "";
                    intent.putExtra(ExtraKey.idNum, "");
                    QrAuthUser qrAuthUser2 = qrAuthUser;
                    if (qrAuthUser2 != null && (authToken = qrAuthUser2.getAuthToken()) != null) {
                        str = authToken;
                    }
                    intent.putExtra(ExtraKey.authToken, str);
                    v vVar = v.f15822a;
                    activityI.startActivityForResult(intent, 1);
                }
            }
        }));
    }

    @Override // cn.mucang.sundial.library.sdk.coach.logic.BaseLogic
    public void start(boolean fromUser) {
        super.start(fromUser);
        loadQrCode();
    }

    @Override // cn.mucang.sundial.library.sdk.coach.logic.BaseLogic
    public void stop(boolean z) {
        super.stop(z);
        QrCodeHelper.f2245f.a().i();
    }
}
