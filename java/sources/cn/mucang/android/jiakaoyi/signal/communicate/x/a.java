package cn.mucang.android.jiakaoyi.signal.communicate.x;

import android.util.Log;
import android.util.SparseIntArray;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.v;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f5540a = new SparseIntArray();
    private final Object b = new Object();
    private int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5541d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f5542e;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.x.a$a, reason: collision with other inner class name */
    private static class C0125a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f5543a = new a();
    }

    private String a(SparseIntArray sparseIntArray) {
        int size = sparseIntArray.size();
        StringBuilder sb = new StringBuilder();
        sb.append(sparseIntArray.keyAt(0));
        for (int i = 1; i < size; i++) {
            sb.append(",");
            sb.append(sparseIntArray.keyAt(i));
        }
        return sb.toString();
    }

    public static a b() {
        return C0125a.f5543a;
    }

    public void c(int i, int i2) {
        synchronized (this.b) {
            if (this.f5540a.size() == 0) {
                if (MucangConfig.v()) {
                    Log.e("ByteStatistic", "收到: index=" + i + ",receiveCount=" + i2);
                }
                f.f("字节统计:收到一个响应,index=" + i + ",receiveCount=" + i2 + ",当前发送的字节数 = " + this.f5541d + " , 但是当前的等待响应列表为空");
                return;
            }
            int i3 = this.f5540a.get(i);
            if (i3 == 0) {
                if (MucangConfig.v()) {
                    Log.e("ByteStatistic", "收到: index=" + i + ",receiveCount=" + i2 + ",sendCount=" + i3);
                }
                f.f("字节统计:收到一个响应,index=" + i + ",receiveCount=" + i2 + ",当前发送的字节数 = " + this.f5541d + " , 但是当前的等待响应列表里没找到");
                return;
            }
            this.f5540a.delete(i);
            if (MucangConfig.v()) {
                Log.e("ByteStatistic", "收到: index=" + i + ",receiveCount=" + i2 + ",sendCount=" + i3);
            }
            if (this.f5540a.size() > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("字节统计:当前index=");
                sb.append(i);
                sb.append(",等待响应的队列里还有:");
                sb.append(a(this.f5540a));
                sb.append(this.f5540a.size() > 5 ? ",数量大于5，清空之" : "");
                f.f(sb.toString());
                for (int i4 = 0; i4 < this.f5540a.size(); i4++) {
                    if (this.f5540a.keyAt(i4) < i) {
                        this.f5540a.removeAt(i4);
                    }
                }
            }
            if (i3 != i2) {
                f.f("字节统计:发送的字节数 = " + i3 + ", 接收的字节数 = " + i2 + ", index = " + i + ",当前发送的字节数 = " + this.f5541d);
            }
        }
    }

    public byte[] d(int i, cn.mucang.android.jiakaoyi.signal.com.u.a aVar) {
        synchronized (this.b) {
            int i2 = this.f5541d + i;
            this.f5541d = i2;
            this.c++;
            if (i2 > 30720) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f5542e > 10000) {
                    this.f5542e = jCurrentTimeMillis;
                    int length = this.f5541d + aVar.b(new byte[4], 0, 4, 1, false, (short) 0, false).length;
                    this.f5541d = length;
                    this.f5540a.put(this.c, length);
                    v vVar = new v(true);
                    vVar.f(this.c);
                    byte[] bArrB = vVar.b();
                    byte[] bArrB2 = aVar.b(bArrB, 0, bArrB.length, Cmd.SendBytesNumber.order, false, (short) 0, false);
                    if (MucangConfig.v()) {
                        Log.e("ByteStatistic", "下发 : index=" + this.c + ",sendCount=" + this.f5541d);
                    }
                    this.f5541d = 0;
                    return bArrB2;
                }
            }
            return null;
        }
    }
}
