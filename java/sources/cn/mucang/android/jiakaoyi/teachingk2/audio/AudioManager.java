package cn.mucang.android.jiakaoyi.teachingk2.audio;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.e0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.model.CallModel;
import cn.mucang.jiakaoyi.uilib.socket.model.CallStatusModel;
import cn.mucang.jiakaoyi.uilib.socket.o;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.audio.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0002\u0017\u001c\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020%J\b\u0010)\u001a\u00020'H\u0002J\b\u0010*\u001a\u00020'H\u0002J\u000e\u0010+\u001a\u00020'2\u0006\u0010(\u001a\u00020%J\b\u0010,\u001a\u00020\nH\u0002J\u0010\u0010-\u001a\u00020'2\u0006\u0010.\u001a\u00020/H\u0002J\b\u00100\u001a\u00020'H\u0007J\b\u00101\u001a\u00020'H\u0007J\b\u00102\u001a\u00020'H\u0016J\b\u00103\u001a\u00020'H\u0016J\u0012\u00104\u001a\u00020'2\b\u00105\u001a\u0004\u0018\u000106H\u0016J\b\u00107\u001a\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001dR,\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00068\u0006@BX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b \u0010\u0002\u001a\u0004\b!\u0010\u0011\"\u0004\b\"\u0010\u0013R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager;", "Lcn/mucang/jiakaoyi/uilib/socket/MCConnectListener;", "()V", "REFRESH_DURATION", "", "STATUS_CONNECTED", "", "STATUS_CONNECTING", "STATUS_DISCONNECT", "TAG", "", "TIME_OUT", "VOICE_TYPE_AGORA", "VOICE_TYPE_FLUORITE", "connectedTime", "getConnectedTime$annotations", "getConnectedTime", "()I", "setConnectedTime", "(I)V", "engine", "Lio/agora/rtc/RtcEngine;", "eventHandler", "cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$eventHandler$1", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$eventHandler$1;", "handler", "Landroid/os/Handler;", MenuOptions.REFRESH, "cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$refresh$1", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$refresh$1;", "value", "status", "getStatus$annotations", "getStatus", "setStatus", "views", "", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;", "attachAudioView", "", "view", "call", "changeStatus", "detachAudioView", "getCallTime", "hangUp", "needCall", "", "init", "onClick", "onConnect", "onConnectException", "onMessage", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;", "refreshTime", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AudioManager implements o {
    private static int b;
    private static RtcEngine c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f6172f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AudioManager f6169a = new AudioManager();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Handler f6170d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final b f6171e = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List<AudioParentView> f6173g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f6174h = new a();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.audio.h$a */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0005H\u0016J\"\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\"\u0010\u0011\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0014"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$eventHandler$1", "Lio/agora/rtc/IRtcEngineEventHandler;", "onConnectionStateChanged", "", "state", "", "reason", "onError", "err", "onJoinChannelSuccess", "channel", "", "uid", "elapsed", "onLeaveChannel", "stats", "Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;", "onRejoinChannelSuccess", "onUserJoined", "onUserOffline", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends IRtcEngineEventHandler {
        a() {
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionStateChanged(int state, int reason) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("声网-状态回调:" + state + ',' + reason);
            if (state == 1 || state == 5) {
                AudioManager.F(0);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onError(int err) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("声网-发生错误:", Integer.valueOf(err)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onJoinChannelSuccess(String channel, int uid, int elapsed) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("声网-加入房间成功:" + ((Object) channel) + ',' + uid + ',' + elapsed);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLeaveChannel(IRtcEngineEventHandler.RtcStats stats) {
            StringBuilder sb = new StringBuilder();
            sb.append("声网-离开房间:");
            sb.append(stats == null ? null : Integer.valueOf(stats.totalDuration));
            sb.append(',');
            sb.append(stats == null ? null : Integer.valueOf(stats.users));
            sb.append(',');
            sb.append(stats == null ? null : Integer.valueOf(stats.rxPacketLossRate));
            sb.append(',');
            sb.append(stats != null ? Integer.valueOf(stats.txPacketLossRate) : null);
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRejoinChannelSuccess(String channel, int uid, int elapsed) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("声网-重新加入房间成功:" + ((Object) channel) + ',' + uid + ',' + elapsed + '\"');
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserJoined(int uid, int elapsed) {
            RtcEngine rtcEngine = AudioManager.c;
            if (rtcEngine != null) {
                rtcEngine.adjustRecordingSignalVolume(100);
            }
            AudioManager.F(2);
            cn.mucang.android.jiakaoyi.framework.log.f.o("声网-有用户加入了:" + uid + ',' + elapsed);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserOffline(int uid, int reason) {
            super.onUserOffline(uid, reason);
            cn.mucang.android.jiakaoyi.framework.log.f.o("声网-有用户离开了:" + uid + ',' + reason);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.audio.h$b */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$refresh$1", "Ljava/lang/Runnable;", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioManager audioManager = AudioManager.f6169a;
            AudioManager.E(AudioManager.r() + 1);
            audioManager.D();
            AudioManager.f6170d.postDelayed(this, 1000L);
            if (x.e()) {
                return;
            }
            audioManager.t(false);
        }
    }

    private AudioManager() {
    }

    public static final void C() {
        AudioManager audioManager = f6169a;
        if (f6172f != 0) {
            audioManager.t(true);
        } else {
            audioManager.k();
            F(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        Iterator<T> it = f6173g.iterator();
        while (it.hasNext()) {
            ((AudioParentView) it.next()).b(f6169a.q());
        }
    }

    public static final void E(int i) {
        b = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(int i) {
        if (f6172f == i) {
            return;
        }
        int i2 = f6172f;
        AudioManager audioManager = f6169a;
        if (i2 != 1 && i == 1) {
            n0.b();
            f6170d.postDelayed(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.audio.f
                @Override // java.lang.Runnable
                public final void run() {
                    AudioManager.b();
                }
            }, 30000L);
        } else if (i != 1) {
            n0.h();
            f6170d.removeCallbacksAndMessages(null);
        }
        f6172f = i;
        audioManager.m();
        b = 0;
        if (i == 2) {
            f6170d.postDelayed(f6171e, 1000L);
        } else {
            f6170d.removeCallbacks(f6171e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
        f6169a.t(true);
        u.h(k0.a(R.string.teachbase_call_timeout));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View view) {
        C();
    }

    private final void k() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.audio.c
            @Override // java.lang.Runnable
            public final void run() {
                AudioManager.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l() {
        try {
            new AudioApi().m();
        } catch (Exception e2) {
            F(0);
            if (e2 instanceof ApiException) {
                u.h(e2.getMessage());
            } else {
                u.h(k0.a(R.string.teachbase_call_fail));
            }
        }
    }

    private final void m() {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.audio.e
            @Override // java.lang.Runnable
            public final void run() {
                AudioManager.n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n() {
        LiveBus.d(AudioStatus.class).o(new AudioStatus(s()));
        Iterator<T> it = f6173g.iterator();
        while (it.hasNext()) {
            ((AudioParentView) it.next()).a(s(), f6169a.q());
        }
        if (s() != 0) {
            SpeechManager.f5839a.q();
        } else if (MucangConfig.i() instanceof UnityMainActivity) {
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.audio.d
                @Override // java.lang.Runnable
                public final void run() {
                    AudioManager.o();
                }
            }, 500L);
        }
        e0 e0VarD = s.b().d();
        if (e0VarD == null) {
            return;
        }
        e0VarD.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o() {
        SpeechManager.f5839a.u();
    }

    private final String q() {
        return FormatUtils.g(b * 1000, false, 2, null);
    }

    public static final int r() {
        return b;
    }

    public static final int s() {
        return f6172f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(boolean z) {
        F(0);
        RtcEngine rtcEngine = c;
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("声网-离开房间:", rtcEngine == null ? null : Integer.valueOf(rtcEngine.leaveChannel())));
        f6170d.removeCallbacksAndMessages(null);
        if (z) {
            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.audio.b
                @Override // java.lang.Runnable
                public final void run() {
                    AudioManager.u();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u() {
        try {
            Result.Companion companion = Result.INSTANCE;
            new AudioApi().n();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    public static final void v() {
        try {
            c = RtcEngine.create(MucangConfig.getContext(), MucangConfig.getContext().getResources().getString(R.string.agora_app_id), f6174h);
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("声网引擎初始化失败：", e2.getMessage()));
            t.d("AudioManager", "声网引擎初始化失败");
        }
        cn.mucang.jiakaoyi.uilib.socket.t.a().F(f6169a);
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void a() {
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void c(SocketModel socketModel) {
        if (!(socketModel instanceof CallModel)) {
            if (socketModel instanceof CallStatusModel) {
                byte b2 = ((CallStatusModel) socketModel).cmd;
                if (b2 == 0) {
                    t(false);
                    return;
                }
                if (b2 == 1) {
                    F(2);
                    return;
                } else {
                    if (b2 == 2) {
                        u.h(k0.a(R.string.teachbase_call_busy));
                        F(0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        CallModel callModel = (CallModel) socketModel;
        if (callModel.voiceType == 0) {
            F(2);
            return;
        }
        RtcEngine rtcEngine = c;
        cn.mucang.android.jiakaoyi.framework.log.f.o("声网-监控中心呼叫:" + ((Object) callModel.accessToken) + ',' + ((Object) callModel.channelName) + "，加入结果:" + (rtcEngine == null ? null : Integer.valueOf(rtcEngine.joinChannel(callModel.accessToken, callModel.channelName, "", 0))));
        RtcEngine rtcEngine2 = c;
        if (rtcEngine2 == null) {
            return;
        }
        rtcEngine2.adjustRecordingSignalVolume(0);
    }

    public final void i(AudioParentView view) {
        r.e(view, "view");
        List<AudioParentView> list = f6173g;
        if (list.contains(view)) {
            return;
        }
        list.add(view);
        view.a(f6172f, q());
        view.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.audio.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AudioManager.j(view2);
            }
        });
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void onConnect() {
    }

    public final void p(AudioParentView view) {
        r.e(view, "view");
        f6173g.remove(view);
        view.setOnClickListener(null);
    }
}
