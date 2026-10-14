package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ArrowMarkSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class c implements p.b<ArrowMarkSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.b, cn.mucang.android.jiakaoyi.k3collect.collision.impl.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrowMarkSrcData f4028a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.b b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f4029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f4030e;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4031a;

        static {
            int[] iArr = new int[K3ShapeType.values().length];
            f4031a = iArr;
            try {
                iArr[K3ShapeType.ARROW_STRAIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4031a[K3ShapeType.ARROW_TURN_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4031a[K3ShapeType.ARROW_TURN_LEFT_AROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4031a[K3ShapeType.ARROW_TURN_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4031a[K3ShapeType.ARROW_TURN_AROUND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4031a[K3ShapeType.ARROW_STRAIGHT_TURN_LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4031a[K3ShapeType.ARROW_STRAIGHT_TURN_AROUND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4031a[K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4031a[K3ShapeType.ARROW_TURN_LEFT_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.b(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.b d() {
        Pos pos;
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.b bVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.b();
            this.c = bVar;
            bVar.b = this.f4028a.id.longValue();
            Pos pos2 = this.f4029d;
            if (pos2 != null && (pos = this.f4030e) != null) {
                this.c.c = cn.mucang.android.jiakaoyi.hpmap.d.a.a(new Line(pos2, pos));
            }
        }
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0089  */
    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.b c() {
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            lineStyle.color = -1;
            lineStyle.lineWidth = 1;
            ArrowMarkSrcData arrowMarkSrcData = this.f4028a;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.b bVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.b(lineStyle, arrowMarkSrcData.type, arrowMarkSrcData.id);
            this.b = bVar;
            bVar.f3954d = arrowMarkSrcData.arrowType;
            Pos pos = this.f4029d;
            bVar.f3955e = pos;
            Pos pos2 = this.f4030e;
            bVar.f3956f = pos2;
            if (pos != null && pos2 != null) {
                float f2 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                bVar.f3958h = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos, pos2, f2);
                this.b.f3957g = cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f4030e, this.f4029d, f2);
                K3ShapeType k3ShapeTypeA = K3ShapeType.INSTANCE.a(this.b.f3954d);
                int i = 105;
                int i2 = 15;
                int i3 = 0;
                if (k3ShapeTypeA != null) {
                    switch (a.f4031a[k3ShapeTypeA.ordinal()]) {
                        case 1:
                            i = 120;
                            i2 = 30;
                            i3 = 15;
                            break;
                        case 2:
                        case 3:
                            i2 = 75;
                            break;
                        case 4:
                            i2 = 0;
                            i3 = 75;
                            break;
                        case 5:
                            i = 45;
                            i2 = 110;
                            break;
                        case 6:
                        case 7:
                            i = 120;
                            i2 = 75;
                            i3 = 15;
                            break;
                        case 8:
                            i = 120;
                            i3 = 75;
                            break;
                        case 9:
                            i = 150;
                            i2 = 75;
                            i3 = 60;
                            break;
                        default:
                            i = 0;
                            i2 = 0;
                            break;
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (i != 0) {
                    Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f4029d, this.f4030e, i + 20);
                    Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f4030e, this.f4029d, 20);
                    Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(posS2, posS, i2 + 20);
                    Line lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(posS2, posS, i3 + 20);
                    this.b.i = new cn.mucang.android.jiakaoyi.signal.pos.c(lineP.start, lineP.end, lineQ.end, lineQ.start);
                }
            }
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(ArrowMarkSrcData arrowMarkSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4028a = arrowMarkSrcData;
        this.f4029d = cn.mucang.android.jiakaoyi.hpmap.c.b.j(arrowMarkSrcData.gps1, aVar);
        this.f4030e = cn.mucang.android.jiakaoyi.hpmap.c.b.j(arrowMarkSrcData.gps2, aVar);
    }
}
