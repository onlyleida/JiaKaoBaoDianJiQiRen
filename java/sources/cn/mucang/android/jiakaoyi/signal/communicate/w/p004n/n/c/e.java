package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c;

import android.os.SystemClock;
import android.serialport.SerialPortFinder;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.framework.utils.q;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.McChannelConfig;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.a.c;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.f;
import com.google.android.exoplayer2.DefaultLoadControl;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e implements cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b {
    private static final String[] c = {"/dev/ttyMT1", "/dev/ttyMT2", "/dev/ttyS1", "/dev/ttyACM1", "/dev/ttyACM2", "/dev/ttyXRUSB0", "/dev/ttyS4", "/dev/ttyS3"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f5535a;
    private List<String> b;

    private static class b implements f {
        private b() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.f
        public void a(InputStream inputStream) throws Exception {
            if (!n.a() && new cn.mucang.android.jiakaoyi.signal.com.t.c.b().h(inputStream, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS).f5326a == null) {
                t.h("McCommunicator", "该串口没有有效数据");
                throw new Exception("串口没有有效数据");
            }
        }
    }

    public e() {
        this(null);
    }

    private List<j> c(List<String> list, List<j> list2, List<IComConnectListener> list3, Object obj) throws Throwable {
        String strG = i0.g("this_device_serial_name", null);
        if (n0.g(strG)) {
            list.remove(strG);
            list.add(0, strG);
        }
        for (String str : list) {
            j jVar = new j(d(str));
            jVar.F(list3);
            try {
                jVar.A();
                cn.mucang.android.jiakaoyi.framework.log.f.f("打开串口成功:" + str);
                synchronized (obj) {
                    list2.add(jVar);
                }
                i0.m("this_device_serial_name", str);
                return list2;
            } catch (Exception unused) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("打开串口失败:" + str);
                try {
                    jVar.a();
                } catch (Throwable unused2) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("关闭串口失败:" + str);
                }
            }
        }
        throw new ComException(ComName.MasterSerial, ComState.ErrorCom, new Exception("打开串口失败"));
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b
    public int a() {
        return 1;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b
    public List<j> b(List<j> list, List<IComConnectListener> list2, Object obj) throws Throwable {
        ArrayList arrayList = new ArrayList();
        synchronized (obj) {
            if (list.size() > 0) {
                arrayList.addAll(list);
            }
        }
        int i = 0;
        if (arrayList.size() > 0) {
            j jVar = (j) arrayList.get(0);
            if (jVar.f() == ComState.Valid || jVar.f() == ComState.UpdatingFirmware || jVar.f() == ComState.Initialing || jVar.f() == ComState.ReInitialing || jVar.f() == ComState.AiUpdatingFirmware || jVar.f() == ComState.Authorising) {
                return list;
            }
            try {
                jVar.C();
            } catch (Throwable unused) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("release communicator失败");
            }
            synchronized (obj) {
                list.clear();
            }
        }
        while (i < 10) {
            try {
                if (q.f3635a) {
                    c(Collections.singletonList("V600"), list, list2, obj);
                    return list;
                }
                String[] strArr = this.f5535a;
                if (strArr != null && strArr.length != 0) {
                    c(Arrays.asList(strArr), list, list2, obj);
                    return list;
                }
                c(this.b, list, list2, obj);
                return list;
            } catch (Throwable unused2) {
                i++;
                SystemClock.sleep(500L);
            }
        }
        throw new ComException(ComName.MasterSerial, ComState.ErrorCom, new Exception("打开串口失败"));
    }

    protected McChannelConfig d(String str) throws ComException {
        McChannelConfig.a aVar = new McChannelConfig.a();
        aVar.b(new c(str, 115200));
        aVar.h(McChannelConfig.McProtocolVersion.V1);
        aVar.f(cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.b.b);
        aVar.d(new b());
        aVar.i(true);
        return aVar.a();
    }

    public e(String[] strArr) {
        this.f5535a = strArr;
        if (strArr == null || strArr.length == 0) {
            this.b = new ArrayList(Arrays.asList(c));
            ArrayList arrayList = new ArrayList(Arrays.asList(new SerialPortFinder().getAllDevicesPath()));
            if (arrayList.size() > 0) {
                this.b.retainAll(arrayList);
            }
            if (arrayList.size() > this.b.size()) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (this.b.contains(arrayList.get(size))) {
                        arrayList.remove(size);
                    }
                }
                this.b.addAll(arrayList);
            }
        }
    }
}
