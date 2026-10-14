package cn.mucang.jiakaoyi.uilib.model;

import android.view.View;
import androidx.lifecycle.j0;
import androidx.lifecycle.z;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.utils.DeviceSettingUtils;
import com.alibaba.fastjson.JSON;

/* JADX INFO: loaded from: classes5.dex */
public class e extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public z<DeviceSettingInfo> f9451a = new z<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(final boolean z, final JLoadingDialog jLoadingDialog) {
        DeviceSettingInfo deviceSettingInfoN;
        try {
            deviceSettingInfoN = new DeviceApi().n();
        } catch (Exception e2) {
            e2.printStackTrace();
            deviceSettingInfoN = null;
        }
        if (deviceSettingInfoN != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取到最新的设备信息数据：" + JSON.toJSONString(deviceSettingInfoN));
            DeviceSettingUtils.f9578a.d(deviceSettingInfoN);
            this.f9451a.l(deviceSettingInfoN);
        } else {
            DeviceSettingInfo deviceSettingInfoA = DeviceSettingUtils.f9578a.a();
            if (deviceSettingInfoA != null) {
                this.f9451a.l(deviceSettingInfoA);
            }
            if (deviceSettingInfoA == null || z) {
                u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.model.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f9447a.d(z);
                    }
                });
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("获取考场配置失败 使用缓存：" + JSON.toJSONString(deviceSettingInfoA));
                u.j("配置数据获取失败");
            }
        }
        u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.model.b
            @Override // java.lang.Runnable
            public final void run() {
                e.e(jLoadingDialog);
            }
        });
    }

    static /* synthetic */ void e(JLoadingDialog jLoadingDialog) {
        if (jLoadingDialog == null || !jLoadingDialog.isShowing()) {
            return;
        }
        jLoadingDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(boolean z, View view) {
        i(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void d(final boolean z) {
        new JCommonDialog(MucangConfig.i(), new JCommonDialog.DialogParams("提示", "获取配置信息失败，是否重新获取？", null, null, "重新获取", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.model.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9449a.g(z, view);
            }
        }, false)).show();
    }

    public void h() {
        i(false);
    }

    public void i(final boolean z) {
        final JLoadingDialog jLoadingDialog = DeviceSettingUtils.f9578a.a() != null ? null : new JLoadingDialog(MucangConfig.i());
        if (jLoadingDialog != null) {
            jLoadingDialog.b("获取设备配置信息");
        }
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.model.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f9450a.b(z, jLoadingDialog);
            }
        });
    }
}
