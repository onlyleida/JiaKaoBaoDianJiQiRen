package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5208a = -1;
    public int b = -1;
    public int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5209d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5210e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AISitPoseResult f5212g;

    public boolean A() {
        AISitPoseResult aISitPoseResult = this.f5212g;
        return aISitPoseResult != null && aISitPoseResult.getSitPoseType() == 1 && this.f5212g.getAngle() > 10;
    }

    public boolean B() {
        AISitPoseResult aISitPoseResult = this.f5212g;
        return aISitPoseResult != null && aISitPoseResult.getSitPoseType() == 2 && this.f5212g.getAngle() > 10;
    }

    public boolean C() {
        return this.f5208a == 2;
    }

    public boolean D() {
        return this.b == 6;
    }

    public void a(a aVar) {
        this.f5208a = aVar.f5208a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f5209d = aVar.f5209d;
        this.f5210e = aVar.f5210e;
        this.f5211f = aVar.f5211f;
        this.f5212g = aVar.f5212g;
    }

    public String b() {
        if (v()) {
            return "无动作";
        }
        StringBuilder sb = new StringBuilder();
        if (n()) {
            sb.append("疲劳驾驶 ");
        }
        if (C()) {
            sb.append("抽烟 ");
        }
        if (m()) {
            sb.append("喝东西 ");
        }
        if (w()) {
            sb.append("打电话 ");
        }
        return sb.toString();
    }

    public String c() {
        int i = this.c;
        if (i == 3) {
            return "生气";
        }
        if (i == 1) {
            return "高兴";
        }
        if (i == 2) {
            return "悲伤";
        }
        if (i == 4) {
            return "惊讶";
        }
        return i == 0 ? "正常" : "未知";
    }

    public String d() {
        int i = this.f5209d;
        if (i == 0) {
            return "正常";
        }
        if (i == 1) {
            return "左摆头";
        }
        if (i == 2) {
            return "右摆头";
        }
        if (i == 4) {
            return "低头";
        }
        if (i != 5) {
            return i != 6 ? "未知" : "低头+右摆头";
        }
        return "低头+左摆头";
    }

    public PartIdentityModule e() {
        return PartIdentityModule.getModule(this.f5211f);
    }

    public String f() {
        int i = this.b;
        if (i == 0) {
            return "双手脱离方向盘";
        }
        if (i != 5) {
            return i != 6 ? "无动作" : "双手开门";
        }
        return "单手开门";
    }

    public String g() {
        int i = this.b;
        if (i == 0) {
            return "双手脱离方向盘";
        }
        if (i == 1) {
            return "单左手";
        }
        if (i == 2) {
            return "单右手";
        }
        if (i != 3) {
            return i != 4 ? "无动作" : "双手交叉";
        }
        return "双手正常";
    }

    public boolean h() {
        return this.c == 4;
    }

    public boolean i() {
        return this.c == 3;
    }

    public boolean j() {
        return this.f5209d == 5;
    }

    public boolean k() {
        return this.f5209d == 6;
    }

    public boolean l() {
        return this.f5209d == 4;
    }

    public boolean m() {
        return this.f5208a == 8;
    }

    public boolean n() {
        return this.f5208a == 1;
    }

    public boolean o() {
        return this.b == 4;
    }

    public boolean p() {
        return this.b == 1;
    }

    public boolean q() {
        return this.b == 2;
    }

    public boolean r() {
        return this.b == 0;
    }

    public boolean s() {
        return this.c == 1;
    }

    public boolean t() {
        return this.f5209d == 1;
    }

    public boolean u() {
        return this.f5209d == 2;
    }

    public boolean v() {
        return this.f5208a == 0;
    }

    public boolean w() {
        return this.f5208a == 4;
    }

    public boolean x() {
        return this.c == 2;
    }

    public boolean y() {
        return this.b == 5;
    }

    public boolean z() {
        AISitPoseResult aISitPoseResult = this.f5212g;
        return aISitPoseResult != null && aISitPoseResult.getSitPoseType() == 4;
    }
}
