package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c;

import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.n;
import cn.mucang.android.jiakaoyi.signal.com.u.b.c;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.McChannelConfig;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.b;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d extends b {
    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b
    public int a() {
        return m.l() ? 3 : 2;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c.b
    public List<McChannelConfig> c() throws ComException {
        n nVar = n.f5313d;
        String strTrim = nVar.f5316a;
        int i = nVar.b;
        n nVar2 = n.f5314e;
        String strTrim2 = nVar2.f5316a;
        int i2 = nVar2.b;
        if (MucangConfig.v()) {
            BufferedReader bufferedReader = null;
            try {
                File file = new File(Environment.getExternalStorageDirectory(), "jky_config.txt");
                if (file.exists()) {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            if (!n0.e(line) && line.contains("=")) {
                                String[] strArrSplit = line.split("=");
                                if (strArrSplit.length == 2) {
                                    if ("mip".equalsIgnoreCase(strArrSplit[0].trim())) {
                                        strTrim = strArrSplit[1].trim();
                                    } else if ("mport".equalsIgnoreCase(strArrSplit[0])) {
                                        i = Integer.parseInt(strArrSplit[1].trim());
                                    } else if ("gip".equalsIgnoreCase(strArrSplit[0].trim())) {
                                        strTrim2 = strArrSplit[1].trim();
                                    } else if ("gport".equalsIgnoreCase(strArrSplit[0])) {
                                        i2 = Integer.parseInt(strArrSplit[1].trim());
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                            bufferedReader = bufferedReader2;
                            o.a(bufferedReader);
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
        }
        McChannelConfig.a aVar = new McChannelConfig.a();
        aVar.b(new b(strTrim, i, ComName.MasterNet));
        aVar.h(McChannelConfig.McProtocolVersion.V2);
        aVar.i(true);
        aVar.f(cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.b.f5536d);
        McChannelConfig mcChannelConfigA = aVar.a();
        McChannelConfig.a aVar2 = new McChannelConfig.a();
        aVar2.b(new b(strTrim2, i2, ComName.GpsNet));
        aVar2.h(McChannelConfig.McProtocolVersion.Transparent);
        aVar2.c(new c());
        aVar2.g(new cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.b());
        aVar2.f(cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.b.f5537e);
        McChannelConfig mcChannelConfigA2 = aVar2.a();
        McChannelConfig.a aVar3 = new McChannelConfig.a();
        n nVar3 = n.f5315f;
        aVar3.b(new b(nVar3.f5316a, nVar3.b, ComName.AiNet));
        aVar3.e(false);
        aVar3.h(McChannelConfig.McProtocolVersion.AI);
        aVar3.f(cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.b.f5538f);
        return m.l() ? Arrays.asList(mcChannelConfigA2, mcChannelConfigA, aVar3.a()) : Arrays.asList(mcChannelConfigA2, mcChannelConfigA);
    }
}
