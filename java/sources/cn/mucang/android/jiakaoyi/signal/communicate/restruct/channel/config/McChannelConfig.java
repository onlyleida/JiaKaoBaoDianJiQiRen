package cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config;

import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.f;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.g;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.h;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.i;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.l.c;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.l.d;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class McChannelConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.com.v.a f5459a;
    public e b;
    public b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f5460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ComName f5462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5463g;

    public enum McProtocolVersion {
        V1,
        V2,
        Both,
        Transparent,
        AI
    }

    public static class a {
        private static Map<McChannel, c<? extends cn.mucang.android.jiakaoyi.signal.com.v.a, ? extends cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.a>> i = new HashMap();
        private static Map<McProtocolVersion, e> j = new HashMap();
        public cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.a b;
        public boolean c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a<?> f5466e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public f f5468g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public McProtocolVersion f5464a = McProtocolVersion.V1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public b f5465d = b.c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public cn.mucang.android.jiakaoyi.signal.com.u.a f5467f = new cn.mucang.android.jiakaoyi.signal.com.u.b.b();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f5469h = true;

        static {
            i.put(McChannel.Serial, new d());
            i.put(McChannel.BltServer, new cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.l.b());
            i.put(McChannel.BltClient, new cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.l.a());
            i.put(McChannel.Net, new cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.l.e());
            i.put(McChannel.TypeC, new cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.l.f());
            j.put(McProtocolVersion.V1, new h());
            j.put(McProtocolVersion.V2, new i());
            j.put(McProtocolVersion.AI, new cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.c());
        }

        public McChannelConfig a() throws ComException {
            McChannelConfig mcChannelConfig = new McChannelConfig();
            cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.a aVar = this.b;
            if (aVar == null) {
                throw new ComException(ComName.None, ComState.ErrorInitial, new Throwable("参数非法:配置参数不能为空"));
            }
            ComName comName = aVar.b;
            if (comName == null) {
                throw new ComException(ComName.None, ComState.ErrorInitial, new Exception("信道没有初始化"));
            }
            mcChannelConfig.f5462f = comName;
            if (this.f5464a == null) {
                throw new ComException(this.b.b, ComState.ErrorInitial, new Throwable("参数非法:协议版本不能为空"));
            }
            try {
                cn.mucang.android.jiakaoyi.signal.com.v.a aVarA = i.get(aVar.f5470a).a(this.b);
                if (aVarA == null) {
                    throw new ComException(this.b.b, ComState.ErrorInitial, new Throwable(this.b.f5470a + "信道初始化参数不能为空"));
                }
                mcChannelConfig.f5459a = aVarA;
                e eVar = j.get(this.f5464a);
                if (eVar != null) {
                    mcChannelConfig.b = eVar;
                } else {
                    cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a<?> aVar2 = this.f5466e;
                    if (aVar2 == null) {
                        throw new ComException(this.b.b, ComState.ErrorInitial, new Throwable(this.b.f5470a + "信道不支持消息解析"));
                    }
                    cn.mucang.android.jiakaoyi.signal.com.u.a aVar3 = this.f5467f;
                    if (aVar3 == null) {
                        throw new ComException(this.b.b, ComState.ErrorInitial, new Throwable(this.b.f5470a + "信道不支持消息编码"));
                    }
                    if (this.f5464a == McProtocolVersion.Transparent) {
                        mcChannelConfig.b = new g(aVar2, aVar3);
                    }
                }
                if (this.f5465d == null) {
                    this.f5465d = b.c;
                }
                mcChannelConfig.c = this.f5465d;
                mcChannelConfig.f5461e = this.c;
                mcChannelConfig.f5460d = this.f5468g;
                mcChannelConfig.f5463g = this.f5469h;
                return mcChannelConfig;
            } catch (Exception unused) {
                throw new ComException(this.b.b, ComState.ErrorInitial, new Throwable(this.b.f5470a + "信道初始化参数非法"));
            }
        }

        public a b(cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.a aVar) {
            this.b = aVar;
            return this;
        }

        public a c(cn.mucang.android.jiakaoyi.signal.com.u.a aVar) {
            this.f5467f = aVar;
            return this;
        }

        public a d(f fVar) {
            this.f5468g = fVar;
            return this;
        }

        public a e(boolean z) {
            this.f5469h = z;
            return this;
        }

        public a f(b bVar) {
            this.f5465d = bVar;
            return this;
        }

        public a g(cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a<?> aVar) {
            this.f5466e = aVar;
            return this;
        }

        public a h(McProtocolVersion mcProtocolVersion) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("设置协议版本：" + mcProtocolVersion.name());
            this.f5464a = mcProtocolVersion;
            return this;
        }

        public a i(boolean z) {
            this.c = z;
            return this;
        }
    }

    public McChannelConfig() {
        McProtocolVersion mcProtocolVersion = McProtocolVersion.V1;
        this.c = b.c;
        this.f5462f = null;
    }
}
