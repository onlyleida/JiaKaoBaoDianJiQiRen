package cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.f;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c implements cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6230a = 0;
    private int b = 0;
    private i c = null;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a
    public boolean a(e eVar, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, List<TraceItemModel> list) {
        int i;
        if (this.c == null) {
            this.c = new i(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
        int i2 = eVar.d().r;
        if (Math.abs(i2 - teachTypeData.data2) < 30 || (((i = teachTypeData.data2) < -500 && i2 < i) || (i > 500 && i2 > i))) {
            if (Math.abs(i2 - this.b) < 5) {
                this.f6230a++;
            } else {
                this.f6230a = 0;
            }
        } else if (this.c.c(eVar.d().L)) {
            this.c.b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            this.c.a();
            TtsManager.z(teachTypeData.desc, TtsGrade.TeachError);
            f.o("触发方向盘提醒:" + teachTypeData);
        }
        this.b = i2;
        return this.f6230a >= 5;
    }
}
