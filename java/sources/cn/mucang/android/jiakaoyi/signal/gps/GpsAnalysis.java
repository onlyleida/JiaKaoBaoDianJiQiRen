package cn.mucang.android.jiakaoyi.signal.gps;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.o;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public class GpsAnalysis {
    private static final int Z;
    private static final r0<Float> a0 = r0.e("car-main-distance-m", BitmapDescriptorFactory.HUE_RED);
    private Gps A;
    private int B;
    private int C;
    private int D;
    private double E;
    private double F;
    private boolean G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private final LinkedList<Integer> N;
    private final LinkedList<Integer> O;
    private final LinkedList<Integer> P;
    private final LinkedList<Integer> Q;
    private final LinkedList<Integer> R;
    private final LinkedList<Integer> S;
    private final LinkedList<Integer> T;
    private final LinkedList<Integer> U;
    private final LinkedList<Integer> V;
    private final LinkedList<Integer> W;
    private final HandlerThread X;
    private final Handler Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConnectionState f5659a;
    private ConnectionState b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5662f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f5663g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f5664h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private double v;
    private double w;
    private double x;
    private double y;
    private String z;

    public enum ConnectionState {
        None,
        Success,
        Failure;

        boolean isSuccess() {
            return this == Success;
        }
    }

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                GpsAnalysis.this.g(message);
            } catch (Throwable unused) {
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final GpsAnalysis f5666a = new GpsAnalysis(null);
    }

    static {
        Z = MucangConfig.v() ? 1 : 3;
    }

    /* synthetic */ GpsAnalysis(a aVar) {
        this();
    }

    private void b() {
        int i = this.m;
        if (i > 0) {
            this.v = (((double) this.q) * 1.0d) / ((double) i);
            this.x = (((double) this.o) * 1.0d) / ((double) i);
        }
        int i2 = this.r;
        if (i2 > 0) {
            this.w = (((double) this.u) * 1.0d) / ((double) i2);
            this.y = (((double) this.s) * 1.0d) / ((double) i2);
        }
    }

    public static GpsAnalysis f() {
        return b.f5666a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Message message) {
        switch (message.what) {
            case 1:
                this.Y.sendEmptyMessageDelayed(1, 1000L);
                int i = this.M + 1;
                this.M = i;
                u(this.N, i);
                u(this.P, this.M);
                u(this.O, this.M);
                u(this.Q, this.M);
                u(this.R, this.M);
                u(this.T, this.M);
                u(this.S, this.M);
                u(this.U, this.M);
                u(this.V, this.M);
                u(this.W, this.M);
                this.K = this.R.size();
                this.m = this.N.size();
                this.o = this.O.size();
                this.p = this.P.size();
                this.q = this.Q.size();
                this.f5661e = this.T.size();
                this.c = this.S.size();
                this.k = this.U.size();
                this.f5663g = this.V.size();
                this.i = this.W.size();
                int i2 = Z * 60;
                int i3 = this.M;
                if (i3 % i2 == 0 && i3 > 0) {
                    c();
                    break;
                }
                break;
            case 2:
                this.N.addFirst(Integer.valueOf(this.M));
                u(this.N, this.M);
                this.m = this.N.size();
                this.r++;
                int i4 = 0;
                if (Math.abs(message.arg1 - 1000) < 500) {
                    this.I++;
                } else if (Math.abs(message.arg1 - 3000) < 500) {
                    this.J++;
                } else {
                    this.I = 0;
                    this.J = 0;
                }
                if (this.I > 4) {
                    this.H = 1000;
                } else if (this.J > 4) {
                    this.H = 3000;
                }
                int i5 = this.H;
                if (i5 == 1000) {
                    this.n = Z * 60;
                    int i6 = message.arg1;
                    if (i6 > 3000) {
                        int i7 = i6 / 1000;
                        while (i4 < i7) {
                            this.O.addFirst(Integer.valueOf(this.M));
                            i4++;
                        }
                        this.s++;
                    }
                } else if (i5 == 3000) {
                    this.n = Z * 20;
                    int i8 = message.arg1;
                    if (i8 > 5000) {
                        int i9 = i8 / 3000;
                        while (i4 < i9) {
                            this.O.addFirst(Integer.valueOf(this.M));
                            i4++;
                        }
                        this.s++;
                    }
                }
                u(this.O, this.M);
                this.o = this.O.size();
                b();
                break;
            case 3:
                this.P.addFirst(Integer.valueOf(this.M));
                u(this.P, this.M);
                this.p = this.P.size();
                this.t++;
                b();
                break;
            case 4:
                this.Q.addFirst(Integer.valueOf(this.M));
                u(this.Q, this.M);
                this.q = this.Q.size();
                this.u++;
                b();
                break;
            case 5:
                this.R.addFirst(Integer.valueOf(this.M));
                u(this.R, this.M);
                this.K = this.R.size();
                this.L++;
                break;
            case 6:
                this.S.addFirst(Integer.valueOf(this.M));
                u(this.S, this.M);
                this.c = this.S.size();
                this.f5660d++;
                break;
            case 7:
                this.T.addFirst(Integer.valueOf(this.M));
                u(this.T, this.M);
                this.f5661e = this.T.size();
                this.f5662f++;
                break;
            case 8:
                this.U.addFirst(Integer.valueOf(this.M));
                u(this.U, this.M);
                this.k = this.U.size();
                this.l++;
                break;
            case 9:
                this.V.addFirst(Integer.valueOf(this.M));
                u(this.V, this.M);
                this.f5663g = this.V.size();
                this.f5664h++;
                break;
            case 10:
                this.W.addFirst(Integer.valueOf(this.M));
                u(this.W, this.M);
                this.i = this.W.size();
                this.j++;
                break;
        }
    }

    private void u(LinkedList<Integer> linkedList, int i) {
        if (linkedList.size() == 0) {
            return;
        }
        while (linkedList.size() > 0 && i - linkedList.getLast().intValue() > Z * 60) {
            linkedList.removeLast();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0434  */
    /* JADX WARN: Code duplicated, block: B:106:0x046c  */
    /* JADX WARN: Code duplicated, block: B:107:0x0480  */
    /* JADX WARN: Code duplicated, block: B:110:0x0487  */
    /* JADX WARN: Code duplicated, block: B:74:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:84:0x0339  */
    /* JADX WARN: Code duplicated, block: B:87:0x0363  */
    /* JADX WARN: Code duplicated, block: B:99:0x0430  */
    public String c() {
        boolean z;
        double d2;
        double d3;
        boolean z2;
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append("总时长:");
        sb.append(this.M / 60);
        sb.append("分钟,总接收差分数据:");
        sb.append(this.r);
        sb.append(",总接收gps数据:");
        sb.append(this.L);
        sb.append("<br/>");
        sb.append("断开连接次数仅作参考<br/>");
        int i = Z;
        sb.append(i);
        sb.append("分钟内服务连接断开次数:");
        sb.append(this.c);
        sb.append("<br/>");
        sb.append("全程服务连接断开次数:");
        sb.append(this.f5660d);
        sb.append("<br/>");
        sb.append(i);
        sb.append("分钟内固件连接断开次数:");
        sb.append(this.f5661e);
        sb.append("<br/>");
        sb.append("全程固件连接断开次数:");
        sb.append(this.f5662f);
        sb.append("<br/>");
        if (this.f5659a.isSuccess()) {
            sb.append("当前和服务器连接状态:正常<br/>");
            z = false;
        } else {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append("当前和服务器连接状态:断开</b></font><br/>");
            z = true;
        }
        if (this.b.isSuccess()) {
            sb.append("当前和固件连接状态:正常<br/>");
        } else {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append("当前和固件连接状态:断开</b></font><br/>");
            z = true;
        }
        if (this.b.isSuccess()) {
            sb.append("卫星数:");
            sb.append(this.D);
            sb.append("<br/>");
            if (this.D < 20) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("卫星数过少");
                sb.append("</b></font><br/>");
                z = true;
            }
            sb.append("定位状态:");
            sb.append(this.B);
            sb.append("<br/>");
            if (this.B != 4) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("定位异常，请检查周围是否有遮挡，或者天线是否接触不良</b></font><br/>");
                z = true;
            }
            int i2 = o.b.get();
            if (i2 > 0 && this.D > 0) {
                sb.append("定位卫星数:");
                sb.append(i2);
                sb.append("<br/>");
                if (i2 < 35) {
                    sb.append("<font color='#ff0000'><b>!!!");
                    sb.append("定位卫星数过少，请检查周围环境是否有遮挡，或者车辆周围是否有干扰器</b></font><br/>");
                    z = true;
                }
            }
            sb.append("定向状态:");
            sb.append(this.C);
            sb.append("<br/>");
            if (this.C != 4) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("定向异常，请检查周围是否有遮挡，或者天线是否接触不良</b></font><br/>");
                z = true;
            }
            int i3 = o.c.get();
            if (i3 > 0 && this.D > 0) {
                sb.append("定向卫星数:");
                sb.append(i3);
                sb.append("<br/>");
                if (i3 < 35) {
                    sb.append("<font color='#ff0000'><b>!!!");
                    sb.append("定向卫星数过少，请检查周围环境是否有遮挡，或者车辆周围是否有干扰器</b></font><br/>");
                    z = true;
                }
            }
            sb.append("主从天线距离:");
            sb.append((int) (this.E * 100.0d));
            sb.append("-");
            sb.append((int) (this.F * 100.0d));
            sb.append("<br/>");
            double d4 = this.F;
            if (d4 > 0.0d && Math.abs(this.E - d4) > 0.05d) {
                if (this.B == 4 && this.C == 4) {
                    sb.append("<font color='#ff0000'><b>!!!");
                    sb.append("天线距离异常，请检查车身数据是否错误或者与本车不匹配");
                    sb.append("</b></font><br/>");
                } else {
                    sb.append("<font color='#ff0000'><b>!!!");
                    sb.append("天线距离异常，请检查从天线是否接触不良，或者车顶是否有遮挡");
                    sb.append("</b></font><br/>");
                }
                z = true;
            }
        }
        sb.append("基站:");
        sb.append(this.z);
        sb.append("，");
        sb.append(this.G);
        sb.append("<br/>");
        if (this.A != null && this.G) {
            double dDistanceTo = ((double) ((int) ((d.g().distanceTo(this.A) * 0.001d) * 10.0d))) / 10.0d;
            sb.append("基站距离:");
            sb.append(dDistanceTo);
            sb.append("公里<br/>");
            if (dDistanceTo > 10.0d) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("车辆距离基站过远</b></font><br/>");
                z = true;
            }
        }
        sb.append(i);
        sb.append("分钟内定位非4次数:");
        sb.append(this.f5663g);
        sb.append("<br/>");
        if (this.f5663g > 50) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内定位非4状态次数较多");
            sb.append("</b></font><br/>");
            z = true;
        }
        sb.append(i);
        sb.append("分钟内定向非4次数:");
        sb.append(this.i);
        sb.append("<br/>");
        if (this.i > 50) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内定向非4状态次数较多");
            sb.append("</b></font><br/>");
            z = true;
        }
        sb.append(i);
        sb.append("分钟内差分数据数:");
        sb.append(this.m);
        sb.append("，应接收差分数据:");
        sb.append(this.n);
        sb.append("<br/>");
        int i4 = this.n;
        if (i4 <= 0 || i4 - this.m <= 9) {
            if (this.m == 0 && this.f5659a.isSuccess() && this.G) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("没有差分数据，可能是基站配置有问题，或者基站被关闭");
                sb.append("</b></font><br/>");
            }
            sb.append(i);
            sb.append("分钟内下发差分数据:");
            sb.append(this.p);
            sb.append("<br/>");
            if (Math.abs(this.m - this.p) > Math.max(this.n / 4, 5)) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append(i);
                sb.append("分钟内差分数据漏发较多，请检查平板和控制盒的串口线是否接触不良</b></font><br/>");
                z = true;
            }
            sb.append(i);
            sb.append("分钟内下发差分响应数据:");
            sb.append(this.q);
            sb.append("<br/>");
            sb.append(i);
            sb.append("分钟内差分数据下发效率:");
            sb.append((int) (this.v * 100.0d));
            sb.append("%<br/>");
            d2 = this.v;
            if (d2 < 0.8d && d2 != 0.0d) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append(i);
                sb.append("分钟内差分数据接收下发不正常，应下发数为:");
                sb.append(this.m);
                sb.append(",漏发数量为:");
                sb.append(this.m - this.q);
                sb.append("</b></font><br/>");
                z = true;
            }
            sb.append(i);
            sb.append("分钟内差分数据延迟率:");
            sb.append((int) (this.x * 100.0d));
            sb.append("%<br/>");
            if (this.x <= 0.1d || this.o > 5) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append(i);
                sb.append("分钟内差分数据延迟数较多:");
                sb.append(this.o);
                sb.append("</b></font><br/>");
                z = true;
            }
            sb.append(i);
            sb.append("分钟内空GPS数据:");
            sb.append(this.k);
            sb.append("<br/>");
            if (this.k > i * 60) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append(i);
                sb.append("分钟内空GPS数据较多，可能是蘑菇头接线不好，或者附近干扰严重</b></font><br/>");
                z = true;
            }
            sb.append(i);
            sb.append("分钟内接收GPS数据:");
            sb.append(this.K);
            sb.append("<br/>");
            if (Math.abs(this.K - ((i * 60) * 5)) > 20 && Math.abs(this.K - ((i * 60) * 10)) > 20) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append(i);
                sb.append("分钟内接收GPS数据异常，可能是天线接触不良、或流动站故障；请重启设备或者插拔天线尝试恢复</b></font><br/>");
                z = true;
            }
            sb.append("全程定位非4次数:");
            sb.append(this.f5664h);
            sb.append("<br/>");
            sb.append("全程定向非4次数:");
            sb.append(this.j);
            sb.append("<br/>");
            sb.append("全程空GPS数据:");
            sb.append(this.l);
            sb.append("<br/>");
            sb.append("全程接收差分数据:");
            sb.append(this.r);
            sb.append("<br/>");
            sb.append("全程下发差分数据:");
            sb.append(this.t);
            sb.append("<br/>");
            sb.append("全程下发差分响应数据:");
            sb.append(this.u);
            sb.append("<br/>");
            sb.append("差分数据下发总效率:");
            sb.append((int) (this.w * 100.0d));
            sb.append("%<br/>");
            d3 = this.w;
            if (d3 < 0.5d || this.t <= 0) {
                if (d3 < 0.8d && d3 != 0.0d) {
                    sb.append("<font color='#ff0000'><b>!!!");
                    sb.append("全程差分数据接收下发不正常，正常下发数为:");
                    sb.append(this.t);
                    sb.append(",漏发数量为:");
                    sb.append(this.r - this.u);
                    sb.append("</b></font><br/>");
                }
                sb.append("全程差分数据延迟率:");
                sb.append((int) (this.y * 100.0d));
                sb.append("%<br/>");
                if (this.y > 0.1d) {
                    sb.append("<font color='#ff0000'><b>!!!");
                    sb.append("全程差分数据延迟数较多:");
                    sb.append(this.s);
                    sb.append("%</b></font><br/>");
                    z2 = true;
                } else {
                    z2 = z;
                }
                string = sb.toString();
                if (z2 && !n.a()) {
                    f.h(string);
                }
                return string;
            }
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append("全程差分数据接收下发严重不正常，应下发数为:");
            sb.append(this.r);
            sb.append(",漏发数量为:");
            sb.append(this.r - this.u);
            sb.append("，请检查平板串口线、控制盒和流动站串口线等是否接触不良</b></font><br/>");
            z = true;
            sb.append("全程差分数据延迟率:");
            sb.append((int) (this.y * 100.0d));
            sb.append("%<br/>");
            if (this.y > 0.1d) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("全程差分数据延迟数较多:");
                sb.append(this.s);
                sb.append("%</b></font><br/>");
                z2 = true;
            } else {
                z2 = z;
            }
            string = sb.toString();
            if (z2) {
                f.h(string);
            }
            return string;
        }
        sb.append("<font color='#ff0000'><b>!!!");
        sb.append(i);
        sb.append("分钟内差分数据漏接数较多:");
        sb.append(Math.abs(this.m - this.n));
        sb.append("</b></font><br/>");
        z = true;
        sb.append(i);
        sb.append("分钟内下发差分数据:");
        sb.append(this.p);
        sb.append("<br/>");
        if (Math.abs(this.m - this.p) > Math.max(this.n / 4, 5)) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内差分数据漏发较多，请检查平板和控制盒的串口线是否接触不良</b></font><br/>");
            z = true;
        }
        sb.append(i);
        sb.append("分钟内下发差分响应数据:");
        sb.append(this.q);
        sb.append("<br/>");
        sb.append(i);
        sb.append("分钟内差分数据下发效率:");
        sb.append((int) (this.v * 100.0d));
        sb.append("%<br/>");
        d2 = this.v;
        if (d2 < 0.8d) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内差分数据接收下发不正常，应下发数为:");
            sb.append(this.m);
            sb.append(",漏发数量为:");
            sb.append(this.m - this.q);
            sb.append("</b></font><br/>");
            z = true;
        }
        sb.append(i);
        sb.append("分钟内差分数据延迟率:");
        sb.append((int) (this.x * 100.0d));
        sb.append("%<br/>");
        if (this.x <= 0.1d) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内差分数据延迟数较多:");
            sb.append(this.o);
            sb.append("</b></font><br/>");
            z = true;
        } else {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内差分数据延迟数较多:");
            sb.append(this.o);
            sb.append("</b></font><br/>");
            z = true;
        }
        sb.append(i);
        sb.append("分钟内空GPS数据:");
        sb.append(this.k);
        sb.append("<br/>");
        if (this.k > i * 60) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内空GPS数据较多，可能是蘑菇头接线不好，或者附近干扰严重</b></font><br/>");
            z = true;
        }
        sb.append(i);
        sb.append("分钟内接收GPS数据:");
        sb.append(this.K);
        sb.append("<br/>");
        if (Math.abs(this.K - ((i * 60) * 5)) > 20) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append(i);
            sb.append("分钟内接收GPS数据异常，可能是天线接触不良、或流动站故障；请重启设备或者插拔天线尝试恢复</b></font><br/>");
            z = true;
        }
        sb.append("全程定位非4次数:");
        sb.append(this.f5664h);
        sb.append("<br/>");
        sb.append("全程定向非4次数:");
        sb.append(this.j);
        sb.append("<br/>");
        sb.append("全程空GPS数据:");
        sb.append(this.l);
        sb.append("<br/>");
        sb.append("全程接收差分数据:");
        sb.append(this.r);
        sb.append("<br/>");
        sb.append("全程下发差分数据:");
        sb.append(this.t);
        sb.append("<br/>");
        sb.append("全程下发差分响应数据:");
        sb.append(this.u);
        sb.append("<br/>");
        sb.append("差分数据下发总效率:");
        sb.append((int) (this.w * 100.0d));
        sb.append("%<br/>");
        d3 = this.w;
        if (d3 < 0.5d) {
            if (d3 < 0.8d) {
                sb.append("<font color='#ff0000'><b>!!!");
                sb.append("全程差分数据接收下发不正常，正常下发数为:");
                sb.append(this.t);
                sb.append(",漏发数量为:");
                sb.append(this.r - this.u);
                sb.append("</b></font><br/>");
                z = true;
            }
        } else if (d3 < 0.8d) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append("全程差分数据接收下发不正常，正常下发数为:");
            sb.append(this.t);
            sb.append(",漏发数量为:");
            sb.append(this.r - this.u);
            sb.append("</b></font><br/>");
            z = true;
        }
        sb.append("全程差分数据延迟率:");
        sb.append((int) (this.y * 100.0d));
        sb.append("%<br/>");
        if (this.y > 0.1d) {
            sb.append("<font color='#ff0000'><b>!!!");
            sb.append("全程差分数据延迟数较多:");
            sb.append(this.s);
            sb.append("%</b></font><br/>");
            z2 = true;
        } else {
            z2 = z;
        }
        string = sb.toString();
        if (z2) {
            f.h(string);
        }
        return string;
    }

    public void d() {
        this.Y.sendEmptyMessage(8);
    }

    public void e(boolean z) {
        this.b = z ? ConnectionState.Success : ConnectionState.Failure;
        if (z) {
            return;
        }
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.Y.sendEmptyMessage(7);
    }

    public void h() {
        this.Y.sendEmptyMessage(5);
    }

    public void i(int i) {
        if (i < 0) {
            return;
        }
        Handler handler = this.Y;
        handler.sendMessage(handler.obtainMessage(2, i, 0));
    }

    public void j() {
        this.Y.sendEmptyMessage(4);
    }

    public void k() {
        this.Y.sendEmptyMessage(3);
    }

    public void l(boolean z) {
        this.f5659a = z ? ConnectionState.Success : ConnectionState.Failure;
        if (z) {
            return;
        }
        this.Y.sendEmptyMessage(6);
    }

    public void m(int i) {
        this.C = i;
        if (i != 4) {
            this.Y.sendEmptyMessage(10);
        }
    }

    public void n(double d2) {
        this.E = d2;
    }

    public void o(int i) {
        this.B = i;
        if (i != 4) {
            this.Y.sendEmptyMessage(9);
        }
    }

    public void p(int i) {
        this.D = i;
    }

    public void q(double d2) {
        this.F = d2;
        a0.j(Float.valueOf((float) d2));
    }

    public void r(Gps gps) {
        this.A = new Gps(gps);
        f.o("设置基站坐标:" + gps);
    }

    public void s(String str) {
        if (n0.e(str)) {
            return;
        }
        this.z = str;
    }

    public void t(boolean z) {
        this.G = z;
    }

    private GpsAnalysis() {
        ConnectionState connectionState = ConnectionState.None;
        this.f5659a = connectionState;
        this.b = connectionState;
        this.c = 0;
        this.f5660d = 0;
        this.f5661e = 0;
        this.f5662f = 0;
        this.k = 0;
        this.l = 0;
        this.D = -1;
        this.F = 0.0d;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = new LinkedList<>();
        this.O = new LinkedList<>();
        this.P = new LinkedList<>();
        this.Q = new LinkedList<>();
        this.R = new LinkedList<>();
        this.S = new LinkedList<>();
        this.T = new LinkedList<>();
        this.U = new LinkedList<>();
        this.V = new LinkedList<>();
        this.W = new LinkedList<>();
        HandlerThread handlerThread = new HandlerThread("GpsAnalysisThread");
        this.X = handlerThread;
        handlerThread.start();
        a aVar = new a(handlerThread.getLooper());
        this.Y = aVar;
        aVar.sendEmptyMessageDelayed(1, 1000L);
        this.G = true;
        this.F = a0.b().floatValue();
    }
}
