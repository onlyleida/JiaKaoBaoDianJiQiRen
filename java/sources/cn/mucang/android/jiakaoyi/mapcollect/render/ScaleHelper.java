package cn.mucang.android.jiakaoyi.mapcollect.render;

import android.os.SystemClock;
import androidx.lifecycle.a0;
import androidx.lifecycle.r;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.sundial.library.activity.BaseActivity;

/* JADX INFO: loaded from: classes3.dex */
public class ScaleHelper {
    private final MapView b;
    private final f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a f5172d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f5174f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f5175g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f5176h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f5171a = 0.3f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private State f5173e = State.Out;
    private boolean i = false;

    private enum State {
        Out,
        IsInning,
        In,
        IsOuting
    }

    public ScaleHelper(final MapView mapView, f fVar, r rVar) {
        this.b = mapView;
        this.c = fVar;
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a.class).h(rVar, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.render.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f5181a.b(mapView, (cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a) obj);
            }
        });
        mapView.setClickViewListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.render.d
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f5180a.d((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(MapView mapView, cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a aVar) {
        this.f5172d = aVar;
        if (mapView != null && aVar != null) {
            aVar.a(mapView);
        }
        State state = this.f5173e;
        if (state == State.In || state == State.IsInning) {
            return;
        }
        this.f5174f = 0L;
        this.f5175g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(Boolean bool) {
        if (bool.booleanValue()) {
            this.i = true;
            SystemClock.elapsedRealtime();
        } else {
            this.f5176h = SystemClock.elapsedRealtime();
            this.i = false;
        }
    }

    private Pos f(Pos pos, Pos pos2, float f2) {
        double d2 = pos.x;
        double d3 = f2;
        double d4 = d2 + ((pos2.x - d2) * d3);
        double d5 = pos.y;
        return new Pos(d4, d5 + ((pos2.y - d5) * d3));
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0198  */
    void e(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar) {
        float fC;
        Pos pos;
        float fA = cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(this.c.getMapBound().l() * 0.5d, this.c.getMapBound().f() * 0.5d, this.b);
        float measuredHeight = this.f5171a;
        cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a aVar2 = this.f5172d;
        if (aVar2 != null && aVar2.c != null) {
            float measuredWidth = this.b.getMeasuredWidth() * 0.85f;
            cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a aVar3 = this.f5172d;
            measuredHeight = measuredWidth / aVar3.f3710g;
            if (aVar3.f3711h * measuredHeight > this.b.getMeasuredHeight() * 0.85f) {
                measuredHeight = (this.b.getMeasuredHeight() * 0.85f) / this.f5172d.f3711h;
            }
            float f2 = this.f5171a;
            if (measuredHeight > f2) {
                measuredHeight = this.b.e() ? 0.8f * f2 : f2;
            }
        }
        float fA2 = cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(this.b.getMeasuredWidth(), this.b.getMeasuredHeight(), this.b) * measuredHeight;
        Pos posF = carPos.center;
        cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a aVar4 = this.f5172d;
        if (aVar4 == null || aVar4.c == null || (pos = aVar4.f3709f) == null) {
            this.f5173e = State.Out;
            this.f5174f = 0L;
            this.f5175g = 0L;
            fA = Math.min(fA, fA2 - 0.1f);
            if (this.c.getMapBound().l() >= 100000.0d || this.c.getMapBound().f() >= 100000.0d) {
                fA = (float) (((double) fA) + 0.02d);
            }
        } else {
            if (!aVar4.b) {
                if (aVar4.f3706a) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (this.f5174f <= 0) {
                        this.f5174f = jElapsedRealtime;
                    }
                    long j = this.f5174f;
                    if (jElapsedRealtime - j >= BaseActivity.INTERVAL) {
                        this.f5173e = State.In;
                        cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a aVar5 = this.f5172d;
                        if (aVar5.i) {
                            posF = pos;
                        }
                        fC = aVar5.f3708e;
                        fA = fA2;
                    } else {
                        this.f5173e = State.IsInning;
                        float f3 = ((jElapsedRealtime - j) * 1.0f) / 1500.0f;
                        fA += (fA2 - fA) * f3;
                        if (this.f5172d.i) {
                            posF = f(pos, posF, f3);
                        }
                        cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a aVar6 = this.f5172d;
                        float f4 = aVar6.f3707d;
                        fC = (cn.mucang.android.jiakaoyi.signal.utils.d.c(aVar6.f3708e - f4) * f3) + f4;
                    }
                } else {
                    this.f5173e = State.Out;
                    this.f5174f = 0L;
                    this.f5175g = 0L;
                }
                if (!this.i && SystemClock.elapsedRealtime() - this.f5176h >= 3000) {
                    this.b.setCurrentZoom(fA);
                    if (Math.abs(fC - 100000.0f) > 1.0f) {
                        this.b.t(fC, (float) posF.x, (float) posF.y);
                    }
                    this.b.i((float) posF.x, (float) posF.y);
                }
                this.b.r();
            }
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            if (this.f5175g <= 0) {
                this.f5175g = jElapsedRealtime2;
            }
            long j2 = this.f5175g;
            if (jElapsedRealtime2 - j2 >= BaseActivity.INTERVAL) {
                this.f5172d = null;
                return;
            }
            this.f5173e = State.IsOuting;
            float f5 = ((jElapsedRealtime2 - j2) * 1.0f) / 1500.0f;
            fA = ((fA - fA2) * f5) + fA2;
            if (this.f5172d.i) {
                posF = f(pos, posF, f5);
            }
        }
        fC = 100000.0f;
        if (!this.i) {
            this.b.setCurrentZoom(fA);
            if (Math.abs(fC - 100000.0f) > 1.0f) {
                this.b.t(fC, (float) posF.x, (float) posF.y);
            }
            this.b.i((float) posF.x, (float) posF.y);
        }
        this.b.r();
    }
}
