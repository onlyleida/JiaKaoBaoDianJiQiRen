package cn.mucang.android.jiakaoyi.signal.handle.gear;

import androidx.lifecycle.j0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Triple;
import org.opencv.videoio.Videoio;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.handle.gear.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u0000 -2\u00020\u0001:\u0001-B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0017J\u0006\u0010&\u001a\u00020#J\u0006\u0010'\u001a\u00020#J\u0006\u0010(\u001a\u00020\u0015J\u0006\u0010)\u001a\u00020#J\u0006\u0010*\u001a\u00020#J\u0010\u0010+\u001a\u00020#2\b\u0010,\u001a\u0004\u0018\u00010\u0005R1\u0010\u0003\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R1\u0010\u0011\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00120\u0004j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0012`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\tR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R+\u0010\u0019\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b0\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearPracticeViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "RPM_MAP", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "", "Lkotlin/collections/HashMap;", "getRPM_MAP", "()Ljava/util/HashMap;", "currentGear", "getCurrentGear", "()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "setCurrentGear", "(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V", "gearLearning", "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLearning;", "gearMap", "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;", "getGearMap", "isStart", "", "max", "", "min", "practiceResult", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Triple;", "getPracticeResult", "()Landroidx/lifecycle/MutableLiveData;", "practiceStatus", "getPracticeStatus", "reachTime", "", "addData", "", "currentRpm", SpeechConstant.SPEED, "clearData", TtmlNode.END, "isStudying", "reset", "save", TtmlNode.START, "gear", "Companion", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearPracticeViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<Gear, Integer> f5691a;
    private final HashMap<Gear, GearLinearResult> b;
    private Gear c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5692d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f5693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z<Triple<Gear, Float, Float>> f5694f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z<Boolean> f5695g;

    public GearPracticeViewModel() {
        HashMap<Gear, Integer> map = new HashMap<>();
        this.f5691a = map;
        map.put(Gear.Gear1, Integer.valueOf(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS));
        map.put(Gear.Gear2, Integer.valueOf(Videoio.CAP_OPENCV_MJPEG));
        map.put(Gear.Gear3, 2000);
        map.put(Gear.Gear4, Integer.valueOf(Videoio.CAP_GSTREAMER));
        map.put(Gear.Gear5, Integer.valueOf(Videoio.CAP_MSMF));
        this.b = new HashMap<>();
        this.f5693e = new b();
        this.f5694f = new z<>();
        this.f5695g = new z<>();
    }

    public final void a(int i, float f2) {
        Gear gear = this.c;
        if (gear == null || !this.f5692d) {
            return;
        }
        GearLinearResult gearLinearResultD = this.f5693e.d(i, f2, gear);
        if (gearLinearResultD != null) {
            this.f5694f.l(new Triple<>(this.c, Float.valueOf(gearLinearResultD.min), Float.valueOf(gearLinearResultD.max)));
        }
        if (this.f5693e.f() || i < 500) {
            TtsManager.r("当前挡位学习完成", TtsGrade.GlobalTip);
            b();
        }
    }

    public final void b() {
        GearLinearResult gearLinearResultH = this.f5693e.h();
        if (gearLinearResultH != null && gearLinearResultH.value > BitmapDescriptorFactory.HUE_RED) {
            this.b.put(this.c, gearLinearResultH);
            cn.mucang.android.jiakaoyi.signal.center.config.a.h().b(this.c, gearLinearResultH);
        }
        f();
        this.f5695g.l(Boolean.FALSE);
        this.f5692d = false;
    }

    public final z<Triple<Gear, Float, Float>> c() {
        return this.f5694f;
    }

    public final z<Boolean> d() {
        return this.f5695g;
    }

    public final boolean e() {
        return this.c != null;
    }

    public final void f() {
        this.c = null;
        this.f5693e.g();
    }

    public final void g() {
        cn.mucang.android.jiakaoyi.signal.center.config.a.h().n();
    }

    public final void h(Gear gear) {
        this.f5692d = true;
        this.c = gear;
        this.f5695g.l(Boolean.TRUE);
    }
}
