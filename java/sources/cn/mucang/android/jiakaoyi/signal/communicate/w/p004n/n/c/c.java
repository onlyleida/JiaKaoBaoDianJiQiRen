package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.n;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.McChannel;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.McChannelConfig;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.a;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.b;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c extends b {
    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b
    public int a() {
        return m.l() && AppUtils.n() ? 2 : 1;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c.b
    public List<McChannelConfig> c() throws ComException {
        McChannelConfig.a aVar = new McChannelConfig.a();
        aVar.b(new a(McChannel.BltServer, ComName.BloothSimulator));
        aVar.h(McChannelConfig.McProtocolVersion.V1);
        aVar.f(b.c);
        McChannelConfig mcChannelConfigA = aVar.a();
        if (!m.l() || !AppUtils.n()) {
            return Arrays.asList(mcChannelConfigA);
        }
        McChannelConfig.a aVar2 = new McChannelConfig.a();
        n nVar = n.f5315f;
        aVar2.b(new cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.b(nVar.f5316a, nVar.b, ComName.AiNet));
        aVar2.e(false);
        aVar2.h(McChannelConfig.McProtocolVersion.AI);
        aVar2.f(b.f5538f);
        return Arrays.asList(aVar2.a(), mcChannelConfigA);
    }
}
