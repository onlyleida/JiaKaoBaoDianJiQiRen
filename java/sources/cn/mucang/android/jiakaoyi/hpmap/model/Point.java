package cn.mucang.android.jiakaoyi.hpmap.model;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Point implements Serializable {
    public Gps gps;
    public Pos pos;

    public Point() {
        this.gps = new Gps();
        this.pos = new Pos();
    }

    public void setGps(Gps gps) {
        this.gps.setGps(gps);
    }

    public void setPos(Pos pos) {
        this.pos.setPos(pos);
    }

    public String toString() {
        return "Point{gps=" + this.gps.toString() + ", pos=" + this.pos.toString() + '}';
    }

    public Point(Gps gps) {
        this.gps = gps;
    }

    public Point(Pos pos) {
        this.pos = pos;
    }
}
