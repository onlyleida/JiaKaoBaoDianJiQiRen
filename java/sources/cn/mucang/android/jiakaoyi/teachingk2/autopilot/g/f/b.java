package cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.f;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Gear f6229a = null;
    private i b = null;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a
    public boolean a(e eVar, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, List<TraceItemModel> list) {
        if (this.b == null) {
            this.b = new i(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
        if (this.f6229a == null) {
            if (Gear.parse(list.get(list.size() / 2).gear).isFront()) {
                this.f6229a = Gear.GearBack;
            } else {
                this.f6229a = f.b() ? Gear.GearD : Gear.Gear1;
            }
        }
        boolean z = eVar.d().m == this.f6229a;
        if (!z && this.b.c(eVar.d().L)) {
            this.b.b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            this.b.a();
            TtsManager.z(String.format(k0.a(R.string.teachingk2_please_gear), this.f6229a.gearName), TtsGrade.TeachError);
        }
        return z;
    }
}
