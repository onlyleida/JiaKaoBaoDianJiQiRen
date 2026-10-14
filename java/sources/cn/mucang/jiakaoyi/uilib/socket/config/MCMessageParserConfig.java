package cn.mucang.jiakaoyi.uilib.socket.config;

import android.util.SparseArray;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.y.a0;
import cn.mucang.jiakaoyi.uilib.socket.y.e;
import cn.mucang.jiakaoyi.uilib.socket.y.f;
import cn.mucang.jiakaoyi.uilib.socket.y.j;
import cn.mucang.jiakaoyi.uilib.socket.y.k;
import cn.mucang.jiakaoyi.uilib.socket.y.l;
import cn.mucang.jiakaoyi.uilib.socket.y.m;
import cn.mucang.jiakaoyi.uilib.socket.y.o;
import cn.mucang.jiakaoyi.uilib.socket.y.r;
import cn.mucang.jiakaoyi.uilib.socket.y.t;
import cn.mucang.jiakaoyi.uilib.socket.y.v;
import cn.mucang.jiakaoyi.uilib.socket.y.x;
import cn.mucang.jiakaoyi.uilib.socket.y.y;
import cn.mucang.jiakaoyi.uilib.socket.z.a;
import cn.mucang.jiakaoyi.uilib.socket.z.b;
import cn.mucang.jiakaoyi.uilib.socket.z.b0;
import cn.mucang.jiakaoyi.uilib.socket.z.c;
import cn.mucang.jiakaoyi.uilib.socket.z.c0;
import cn.mucang.jiakaoyi.uilib.socket.z.d;
import cn.mucang.jiakaoyi.uilib.socket.z.d0;
import cn.mucang.jiakaoyi.uilib.socket.z.e0;
import cn.mucang.jiakaoyi.uilib.socket.z.g;
import cn.mucang.jiakaoyi.uilib.socket.z.h;
import cn.mucang.jiakaoyi.uilib.socket.z.i;
import cn.mucang.jiakaoyi.uilib.socket.z.n;
import cn.mucang.jiakaoyi.uilib.socket.z.p;
import cn.mucang.jiakaoyi.uilib.socket.z.q;
import cn.mucang.jiakaoyi.uilib.socket.z.s;
import cn.mucang.jiakaoyi.uilib.socket.z.u;
import cn.mucang.jiakaoyi.uilib.socket.z.w;
import cn.mucang.jiakaoyi.uilib.socket.z.z;
import com.alibaba.fastjson.asm.Opcodes;

/* JADX INFO: loaded from: classes5.dex */
public enum MCMessageParserConfig {
    LogoutMsgParser(65, s.class, v.class),
    ReLoginMsgParser(66, u.class, x.class),
    ReLoginGpsMsgParser(68, u.class, o.class),
    DiffDataMsgParser(64, n.class, k.class),
    HeatBeatAckMsgParser(97, q.class, r.class),
    HeatGpsBeatAckMsgParser(101, q.class, cn.mucang.jiakaoyi.uilib.socket.y.n.class),
    HeatBeatLoopMsgParser(98, q.class, cn.mucang.jiakaoyi.uilib.socket.y.q.class),
    HeatGpsBeatLoopMsgParser(100, q.class, m.class),
    LoginRespMsgParser(17, cn.mucang.jiakaoyi.uilib.socket.z.r.class, cn.mucang.jiakaoyi.uilib.socket.y.u.class),
    GPSBASEMsgParser(67, cn.mucang.jiakaoyi.uilib.socket.z.o.class, l.class),
    SocketDialogMessageParser(112, cn.mucang.jiakaoyi.uilib.socket.z.m.class, j.class),
    GPSStationInfo(70, p.class, cn.mucang.jiakaoyi.uilib.socket.y.p.class),
    StudentLoginMsgParser(69, w.class, y.class),
    RemoteBrake(cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA2, h.class, null),
    CollisionBrake(181, cn.mucang.jiakaoyi.uilib.socket.z.k.class, null),
    SafeControl(147, cn.mucang.jiakaoyi.uilib.socket.z.v.class, null),
    RemoteCall(cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_Ai_Hand_Result, i.class, null),
    RemoteSafeMode(Opcodes.INVOKESPECIAL, b0.class, null),
    CallRefuse(180, cn.mucang.jiakaoyi.uilib.socket.z.j.class, null),
    UpLoadLogMsgParser(176, cn.mucang.jiakaoyi.uilib.socket.z.x.class, t.class),
    DebugLogMsgParser(177, cn.mucang.jiakaoyi.uilib.socket.z.l.class, cn.mucang.jiakaoyi.uilib.socket.y.s.class),
    RequestUdp(19, e0.class, null),
    RequestUdpBusiness(21, d0.class, null),
    ProjectFence(182, z.class, a0.class),
    PushSwitch(Opcodes.INVOKESTATIC, cn.mucang.jiakaoyi.uilib.socket.z.a0.class, cn.mucang.jiakaoyi.uilib.socket.y.b0.class),
    Cmd(41, d.class, f.class),
    CBaseSn(36, g.class, cn.mucang.jiakaoyi.uilib.socket.y.i.class),
    AutoShuttleStart(81, c.class, e.class),
    AutoShuttleCancel(82, a.class, cn.mucang.jiakaoyi.uilib.socket.y.c.class),
    AutoShuttleGetDis(80, b.class, cn.mucang.jiakaoyi.uilib.socket.y.d.class),
    RemoteGearSet(113, cn.mucang.jiakaoyi.uilib.socket.z.f.class, cn.mucang.jiakaoyi.uilib.socket.y.h.class),
    OtherCarPos(129, cn.mucang.jiakaoyi.uilib.socket.z.y.class, cn.mucang.jiakaoyi.uilib.socket.y.z.class),
    CONFIG(130, cn.mucang.jiakaoyi.uilib.socket.z.e.class, cn.mucang.jiakaoyi.uilib.socket.y.g.class),
    RemoteSwitchSafe(185, c0.class, null);

    private final Class<? extends cn.mucang.jiakaoyi.uilib.socket.y.w<? extends SocketModel>> messageHandlerClass;
    private final Class<? extends cn.mucang.jiakaoyi.uilib.socket.z.t<? extends SocketModel>> messageParserClass;
    private final int messageType;
    private static final SparseArray<cn.mucang.jiakaoyi.uilib.socket.z.t<? extends SocketModel>> messageParsers = new SparseArray<>();
    private static final SparseArray<cn.mucang.jiakaoyi.uilib.socket.y.w<? extends SocketModel>> messageHandlers = new SparseArray<>();

    static {
        for (MCMessageParserConfig mCMessageParserConfig : values()) {
            Class<? extends cn.mucang.jiakaoyi.uilib.socket.z.t<? extends SocketModel>> cls = mCMessageParserConfig.messageParserClass;
            Class<? extends cn.mucang.jiakaoyi.uilib.socket.y.w<? extends SocketModel>> cls2 = mCMessageParserConfig.messageHandlerClass;
            try {
                messageParsers.put(mCMessageParserConfig.messageType, cls.newInstance());
                if (cls2 != null) {
                    messageHandlers.put(mCMessageParserConfig.messageType, cls2.newInstance());
                }
            } catch (Exception unused) {
            }
        }
    }

    MCMessageParserConfig(int i, Class cls, Class cls2) {
        this.messageType = i;
        this.messageParserClass = cls;
        this.messageHandlerClass = cls2;
    }

    public static cn.mucang.jiakaoyi.uilib.socket.y.w<? extends SocketModel> getMessageHandler(int i) {
        return messageHandlers.get(i);
    }

    public static cn.mucang.jiakaoyi.uilib.socket.z.t<? extends SocketModel> getMessageParser(int i) {
        return messageParsers.get(i);
    }
}
