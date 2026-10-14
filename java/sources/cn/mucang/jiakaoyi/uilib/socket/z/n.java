package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.jiakaoyi.uilib.socket.model.DiffDataModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class n extends t<DiffDataModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f9705a;

    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DiffDataModel a(int i, ByteBuffer byteBuffer) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bArrArray = byteBuffer.array();
        long j = jCurrentTimeMillis - this.f9705a;
        GpsAnalysis.f().i((int) j);
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        if (dVar.h() != 4) {
            cn.mucang.android.jiakaoyi.framework.log.f.q("t : size = " + bArrArray.length + " , dt = " + j + " , gpsType = " + dVar.h());
        }
        this.f9705a = jCurrentTimeMillis;
        return new DiffDataModel(bArrArray);
    }
}
