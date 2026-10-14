package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.o0;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.q0.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J\u0018\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0017J\u0006\u0010\u001c\u001a\u00020\u0017J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0004H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\rR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/utils/GuideMarkPlayer;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "finishTonePlayer", "Landroid/media/MediaPlayer;", "isPlaying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setPlaying", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", "pendingPlayVoice", "Ljava/util/LinkedList;", "getPendingPlayVoice", "()Ljava/util/LinkedList;", "type2Voice", "", "getType2Voice", "()Ljava/util/Map;", "destroy", "", "playGuideForGear", "gearsCategory", "gearType", "playMarkComplete", "playStartMark", "playVoice", "voiceFile", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GuideMarkPlayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaPlayer f10058a = new MediaPlayer();
    private final String b = "GuideMarkPlayer";
    private final LinkedList<String> c = new LinkedList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f10059d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<String, String> f10060e = o0.k(l.a("空挡", "请在10s内将挡位挂到空挡.mp3"), l.a("1挡", "空挡学习完成，请在10s内将挡位挂到1挡.mp3"), l.a("2挡", "1挡学习完成，请在10s内将挡位挂到2挡.mp3"), l.a("3挡", "2挡学习完成，请在10s内将挡位挂到3挡.mp3"), l.a("4挡", "3挡学习完成，请在10s内将挡位挂到4挡.mp3"), l.a("5挡", "4挡学习完成，请在10s内将挡位挂到5挡.mp3"), l.a("倒挡", "5挡学习完成，请在10s内将挡位挂到倒挡.mp3"), l.a("P挡", "请在10s内将挡位挂到P挡.mp3"), l.a("R挡", "P挡学习完成，请在10s内将挡位挂到R挡.mp3"), l.a("N挡", "R挡学习完成，请在10s内将挡位挂到N挡.mp3"), l.a("D挡", "N挡学习完成，请在10s内将挡位挂到D挡.mp3"));

    private final synchronized void h(String str) {
        try {
            if (this.f10059d.get()) {
                t.a(this.b, r.m("等待播放：", str));
                this.c.add(str);
                return;
            }
            u.j((String) StringsKt__StringsKt.p0(str, new String[]{".mp3"}, false, 0, 6, null).get(0));
            this.f10059d.set(true);
            t.a(this.b, r.m("开始播放新的一段", str));
            this.f10058a.reset();
            AssetFileDescriptor assetFileDescriptorOpenFd = MucangConfig.getContext().getAssets().openFd(str);
            r.d(assetFileDescriptorOpenFd, "assetManager.openFd(voiceFile)");
            this.f10058a.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
            this.f10058a.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.q0.a
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    GuideMarkPlayer.i(this.f10056a, mediaPlayer);
                }
            });
            this.f10058a.prepare();
            this.f10058a.start();
        } catch (Exception e2) {
            e2.printStackTrace();
            t.d(this.b, r.m("播放Error：", e2));
            this.f10058a.stop();
            this.f10058a.release();
            this.f10058a = new MediaPlayer();
            t.d(this.b, "rebuild 播放器");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(GuideMarkPlayer this$0, MediaPlayer mediaPlayer) {
        r.e(this$0, "this$0");
        this$0.getF10059d().set(false);
        if (this$0.b().isEmpty()) {
            return;
        }
        String first = this$0.b().getFirst();
        r.d(first, "pendingPlayVoice.first");
        this$0.h(first);
        this$0.b().remove(0);
    }

    public final void a() {
        this.f10058a.stop();
        this.f10058a.release();
    }

    public final LinkedList<String> b() {
        return this.c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final AtomicBoolean getF10059d() {
        return this.f10059d;
    }

    public final void e(String str, String gearType) {
        r.e(gearType, "gearType");
        String str2 = this.f10060e.get(GearsUtils.f10057a.b(str, gearType));
        if (str2 == null) {
            return;
        }
        h(str2);
    }

    public final void f() {
        h("标定完成.mp3");
    }

    public final void g() {
        h("开始标定.mp3");
        this.c.clear();
    }
}
