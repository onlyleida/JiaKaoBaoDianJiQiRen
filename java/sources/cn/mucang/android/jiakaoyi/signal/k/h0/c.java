package cn.mucang.android.jiakaoyi.signal.k.h0;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback;
import cn.mucang.android.jiakaoyi.signal.k.callback.e;
import cn.mucang.android.jiakaoyi.signal.k.f0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;

/* JADX INFO: loaded from: classes3.dex */
public class c extends f0 {
    public c(UpgradeInfoModel upgradeInfoModel, SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback, e eVar) {
        super(upgradeInfoModel, singleFirmwareUpgradeCallback, eVar);
    }

    private void P() {
        int i;
        byte[] bArr;
        int i2 = this.f5785h;
        if (i2 < 0 || i2 >= (i = this.i) || (bArr = this.f5783f) == null) {
            return;
        }
        int i3 = this.f5781d;
        final int i4 = i2 == i - 1 ? this.f5784g % i3 : i3;
        final byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i2 * i3, bArr2, 0, i4);
        try {
            b("开始发分包" + this.f5785h + ", 第几次:" + this.k);
            this.q = this.q + i4;
            t.h("DebugOta", "发送分包:序号" + this.f5785h + "当前分包大小:" + i4 + ",已发送大小:" + this.q + ",总数:" + this.f5783f.length);
            m.h().P(Cmd.PackageOrderV2, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.k.h0.b
                @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
                public final byte[] a() {
                    return this.f5797a.W(i4, bArr2);
                }
            });
            StringBuilder sb = new StringBuilder();
            sb.append("开始发送分包:");
            sb.append(this.f5785h);
            t.h("DebugOta", sb.toString());
        } catch (Exception e2) {
            t.h("DebugOta", "发送分包异常:" + e2.getLocalizedMessage());
            b("发送分包异常" + e2.getLocalizedMessage());
            this.m = true;
            SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
            if (singleFirmwareUpgradeCallback != null) {
                singleFirmwareUpgradeCallback.i(this.f5780a, "发送分包异常", this.k, true);
                String str = "${retryTip()}发送分包指令异常" + e2.getLocalizedMessage();
                UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
                upgradeUploadModel.setMsg(str);
                upgradeUploadModel.setType(5);
                this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
            }
            N();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void U() {
        if (this.b != null) {
            int i = this.f5785h + 1;
            if (!this.f5780a.isMainObd()) {
                i = (this.f5785h + 1) / 2;
            }
            this.b.h(this.f5780a, i, this.i, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ byte[] W(int i, byte[] bArr) {
        v vVar = new v(true);
        vVar.c((byte) this.j);
        vVar.f(this.f5785h);
        vVar.f(i);
        vVar.d(bArr);
        return vVar.b();
    }

    public void X(cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.b bVar) {
        t.h("DebugOta", "收到分包请求：包序号:" + bVar.b + ", 升级区域:" + bVar.f5431a);
        this.l = 0;
        StringBuilder sb = new StringBuilder();
        sb.append("收到分包:");
        sb.append(bVar.b);
        b(sb.toString());
        this.f5785h = bVar.b;
        P();
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.h0.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5796a.U();
            }
        });
    }
}
