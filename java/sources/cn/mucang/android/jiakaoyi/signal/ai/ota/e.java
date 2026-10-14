package cn.mucang.android.jiakaoyi.signal.ai.ota;

import android.text.TextUtils;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import cn.mucang.android.jiakaoyi.signal.ai.g;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.AiCommandAdapter;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5217a = new Object();
    private cn.mucang.android.jiakaoyi.signal.ai.c b = null;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f5219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0<cn.mucang.android.jiakaoyi.signal.ai.c> f5220f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a0<g> f5221g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<AIOtaMsgResult> f5222h;
    private final a0<cn.mucang.android.jiakaoyi.signal.ai.ota.d> i;
    private final d j;

    class a implements a0<g> {
        a() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(g gVar) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai下发升级响应:" + gVar.f5428a);
            e eVar = e.this;
            eVar.o(0, false, eVar.f5218d, "AI开始升级");
            e.this.c = true;
        }
    }

    class b implements a0<AIOtaMsgResult> {
        b() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(AIOtaMsgResult aIOtaMsgResult) {
            e eVar = e.this;
            int i = aIOtaMsgResult.msg;
            boolean z = true;
            eVar.o(i, (i == 0 || i == 4) ? false : true, eVar.f5218d, e.this.g(aIOtaMsgResult.msg));
            cn.mucang.android.jiakaoyi.framework.log.f.f("收到ai升级状态响应:" + aIOtaMsgResult.msg + "," + aIOtaMsgResult.desc);
            e eVar2 = e.this;
            if (!eVar2.c && aIOtaMsgResult.msg != 4) {
                z = false;
            }
            eVar2.c = z;
        }
    }

    class c implements a0<cn.mucang.android.jiakaoyi.signal.ai.ota.d> {
        c() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(cn.mucang.android.jiakaoyi.signal.ai.ota.d dVar) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai连接上了:" + e.this.c);
            if (e.this.c) {
                e.this.o(AIOtaMsgResult.Success, true, true, "AI更新成功");
            }
        }
    }

    public interface d {
        void a(int i, boolean z, boolean z2, String str);
    }

    public e(d dVar) {
        a0<cn.mucang.android.jiakaoyi.signal.ai.c> a0Var = new a0() { // from class: cn.mucang.android.jiakaoyi.signal.ai.ota.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f5215a.l((cn.mucang.android.jiakaoyi.signal.ai.c) obj);
            }
        };
        this.f5220f = a0Var;
        a aVar = new a();
        this.f5221g = aVar;
        b bVar = new b();
        this.f5222h = bVar;
        c cVar = new c();
        this.i = cVar;
        this.j = dVar;
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.c.class).i(a0Var);
        LiveBus.d(g.class).i(aVar);
        LiveBus.d(AIOtaMsgResult.class).i(bVar);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.ota.d.class).i(cVar);
        this.c = false;
        this.f5218d = true;
        this.f5219e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g(int i) {
        if (i == 0) {
            return "正在下载";
        }
        if (i == 1) {
            return "版本相同，不需要升级";
        }
        if (i == 2) {
            return "AI文件下载失败";
        }
        if (i == 3) {
            return "AI文件下载成功，但校验失败";
        }
        if (i != 4) {
            return i != 170 ? "其他错误" : "升级成功";
        }
        return "开始升级";
    }

    private void h() {
        String str;
        if (cn.mucang.android.jiakaoyi.signal.ai.h.a.a()) {
            o(AIOtaMsgResult.Success, true, true, "V1版本不需要更新");
            cn.mucang.android.jiakaoyi.framework.log.f.f("V1版本不需要更新");
            return;
        }
        this.c = false;
        this.f5218d = true;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i > 4) {
                break;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.f("查询ai信息");
            m.h().Q(Cmd.AiQueryInfo, new byte[]{0, 0});
            try {
                cn.mucang.android.jiakaoyi.framework.log.f.f("等待ai查询结果");
                if (this.b == null) {
                    synchronized (this.f5217a) {
                        this.f5217a.wait(500L);
                    }
                }
                if (this.b != null) {
                    break;
                } else {
                    i = i2;
                }
            } catch (InterruptedException unused) {
                o(5, true, this.f5218d, "AI版本信息本地查询失败");
                cn.mucang.android.jiakaoyi.framework.log.f.f("ai版本信息查询失败");
                return;
            }
        }
        try {
            cn.mucang.android.jiakaoyi.framework.log.f.f("等待ai升级信息:" + this.b);
            AiUpdateModel aiUpdateModelM = new f().m(this.b.b);
            if (aiUpdateModelM == null || aiUpdateModelM.version <= this.b.b) {
                o(1, true, true, "版本相同，不需要升级");
                StringBuilder sb = new StringBuilder();
                sb.append("ai不需要升级，当前版本:");
                sb.append(this.b.b);
                if (aiUpdateModelM == null) {
                    str = "";
                } else {
                    str = "，服务器最新版本:" + aiUpdateModelM.version;
                }
                sb.append(str);
                cn.mucang.android.jiakaoyi.framework.log.f.f(sb.toString());
                return;
            }
            this.f5218d = !aiUpdateModelM.force;
            if (n0.e(aiUpdateModelM.md5) || n0.e(aiUpdateModelM.filePath)) {
                o(5, true, this.f5218d, "服务器返回数据错误");
                cn.mucang.android.jiakaoyi.framework.log.f.f("ai服务器返回数据出错，md5或者url为空。当前版本:" + this.b.b + "，服务器最新版本:" + aiUpdateModelM.version);
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai升级信息:当前版本:" + this.b.b + "，服务器最新版本:" + aiUpdateModelM.version + ",size:" + aiUpdateModelM.size + ",filePath:" + aiUpdateModelM.filePath + ",rsa:" + aiUpdateModelM.md5 + ",force" + aiUpdateModelM.force);
            v vVar = new v(true);
            vVar.d(p(aiUpdateModelM.md5));
            vVar.f(aiUpdateModelM.size);
            vVar.h((short) aiUpdateModelM.filePath.length());
            vVar.d(aiUpdateModelM.filePath.getBytes());
            cn.mucang.android.jiakaoyi.framework.log.f.f("下发ai升级指令");
            m.h().Q(Cmd.AiOtaStartUpdate, vVar.b());
            this.c = false;
        } catch (Throwable th) {
            o(5, true, this.f5218d, "AI升级信息查询失败");
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai升级信息查询失败:" + q0.d(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j() {
        h();
        this.f5219e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(cn.mucang.android.jiakaoyi.signal.ai.c cVar) {
        this.b = cVar;
        cn.mucang.android.jiakaoyi.framework.log.f.f("ai查询结果, version:" + this.b.b + ",mode:" + this.b.c);
        try {
            synchronized (this.f5217a) {
                try {
                    this.f5217a.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai notify异常：" + q0.d(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(boolean z) {
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.c.class).m(this.f5220f);
        LiveBus.d(g.class).m(this.f5221g);
        LiveBus.d(AIOtaMsgResult.class).m(this.f5222h);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.ota.d.class).m(this.i);
        if (z) {
            AiCommandAdapter.i(null);
            String strE = DeviceUtils.e();
            String strC = DeviceUtils.c();
            if (strE == null || TextUtils.isEmpty(strE)) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("发送AI 0xB7消息 硬件ID为空");
            } else if (TextUtils.isEmpty(strC)) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("发送AI 0xB7消息 设备号为空");
            } else {
                AiCommandAdapter.n(strE, strC);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(int i, boolean z, final boolean z2, String str) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.a(i, z, z2, str);
        }
        if (z) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.ai.ota.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5216a.n(z2);
                }
            });
        }
    }

    private static byte[] p(String str) {
        if (str == null || str.length() != 32) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai文件的md5值为空");
            return new byte[16];
        }
        byte[] bArr = new byte[16];
        for (int i = 0; i < 16; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public boolean f() {
        if (this.f5219e) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("当前已经在进行ai更新检查了");
            return false;
        }
        this.f5219e = true;
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.ai.ota.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5214a.j();
            }
        }).start();
        return true;
    }
}
