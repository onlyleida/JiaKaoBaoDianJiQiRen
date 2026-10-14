package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c;

import android.os.SystemClock;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.McChannelConfig;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b implements cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b {
    private boolean e(List<j> list, McChannelConfig mcChannelConfig, Object obj) {
        boolean z;
        j jVar;
        boolean z2;
        synchronized (obj) {
            Iterator<j> it = list.iterator();
            z = false;
            while (true) {
                jVar = null;
                if (it.hasNext()) {
                    j next = it.next();
                    boolean zEquals = next.f5511d.f5462f.equals(mcChannelConfig.f5462f);
                    if (zEquals && (next.f() == ComState.Valid || next.f() == ComState.UpdatingFirmware || next.f() == ComState.Initialing || next.f() == ComState.ReInitialing || next.f() == ComState.AiUpdatingFirmware || next.f() == ComState.Authorising)) {
                        z = zEquals;
                        z2 = true;
                    } else if (zEquals) {
                        jVar = next;
                        z = zEquals;
                    } else {
                        z = zEquals;
                    }
                }
                z2 = false;
            }
        }
        if (z2) {
            return true;
        }
        if (z) {
            try {
                jVar.C();
            } catch (Throwable th) {
                f.f(jVar.f5512e + " release communicator失败:" + th.getMessage());
            }
            synchronized (obj) {
                list.remove(jVar);
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b
    public List<j> b(List<j> list, List<IComConnectListener> list2, Object obj) throws Throwable {
        List<McChannelConfig> listC = c();
        if (g.b(listC)) {
            throw new NullPointerException("通信参数没有配置");
        }
        for (McChannelConfig mcChannelConfig : listC) {
            if (!e(list, mcChannelConfig, obj)) {
                j jVar = new j(mcChannelConfig);
                jVar.F(list2);
                boolean z = mcChannelConfig.f5463g;
                boolean z2 = true;
                int i = z ? 5 : 1;
                Throwable th = null;
                Throwable th2 = null;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        th = th2;
                        z2 = false;
                        break;
                    }
                    i2++;
                    try {
                        jVar.A();
                        break;
                    } catch (Throwable th3) {
                        th2 = th3;
                        jVar.a();
                        SystemClock.sleep(1000L);
                    }
                }
                if (z2) {
                    synchronized (obj) {
                        list.add(jVar);
                    }
                } else {
                    f.f(jVar.e() + "打开失败:" + th.getLocalizedMessage());
                    if (z) {
                        throw th;
                    }
                    f.f(mcChannelConfig.f5462f + "打开失败，不需要弹窗显示，app继续使用，并在1分钟后重试");
                    u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.n.c.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            m.h().R();
                        }
                    }, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                }
            }
        }
        return list;
    }

    public abstract List<McChannelConfig> c() throws ComException;
}
