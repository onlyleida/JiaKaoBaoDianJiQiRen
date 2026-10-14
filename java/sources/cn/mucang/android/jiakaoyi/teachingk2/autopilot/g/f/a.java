package cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.f;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a implements cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6228a = 0;
    private i b = null;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a
    public boolean a(e eVar, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, List<TraceItemModel> list) {
        if (this.b == null) {
            this.b = new i(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
        int i = this.f6228a;
        if (i == 0) {
            if (!eVar.d().f5268f) {
                return false;
            }
            this.f6228a = 1;
            this.b.a();
            return false;
        }
        if (i == 1) {
            if (!eVar.d().f5268f) {
                this.f6228a = 2;
                this.b.a();
                return false;
            }
            if (!this.b.c(eVar.d().L)) {
                return false;
            }
            this.b.b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            this.b.a();
            TtsManager.z(k0.a(R.string.teachingk2_please_pull_handbrake), TtsGrade.TeachError);
            return false;
        }
        if (i != 2) {
            return i == 3;
        }
        if (eVar.d().f5268f) {
            this.f6228a = 3;
            return false;
        }
        if (!this.b.c(eVar.d().L)) {
            return false;
        }
        this.b.b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        this.b.a();
        TtsManager.z(k0.a(R.string.teachingk2_please_push_handbrake), TtsGrade.TeachError);
        return false;
    }
}
