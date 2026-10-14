package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OtherCarPosListSocketModel extends SocketModel {
    public List<CarPosModel> itemList;

    public static class CarPosModel implements Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f9678a;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f9679g;
        public int gear;
        public String n;
        public String p;
        public byte speed;
        public int step;
        public transient long time;
        public int w;
        public int x;
        public int y;
        public int z;

        public double distanceSquare(CarPosModel carPosModel) {
            double d2 = this.x - carPosModel.x;
            int i = carPosModel.y;
            this.y = i;
            double d3 = i;
            return (d2 * d2) + (d3 * d3);
        }

        public String toString() {
            return "{n='" + this.n + "', p='" + this.p + "', x=" + this.x + ", y=" + this.y + ", z=" + this.z + ", a=" + this.f9678a + ", g=" + this.f9679g + ", w=" + this.w + ", speed=" + ((int) this.speed) + ", step=" + this.step + ", gear=" + this.gear + '}';
        }
    }

    public OtherCarPosListSocketModel(List<CarPosModel> list) {
        super(129);
        this.itemList = list;
    }
}
