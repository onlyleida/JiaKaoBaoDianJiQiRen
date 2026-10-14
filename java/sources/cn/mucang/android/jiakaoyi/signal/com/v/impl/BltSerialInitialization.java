package cn.mucang.android.jiakaoyi.signal.com.v.impl;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.util.Log;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.v.a;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.com.v.c.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\nH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/com/init/impl/BltSerialInitialization;", "Lcn/mucang/android/jiakaoyi/signal/com/init/BaseInitialization;", "comName", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V", "socket", "Landroid/bluetooth/BluetoothSocket;", "bandwidth", "", "close", "", SocialConstants.PARAM_APP_DESC, "", "init", "Companion", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BltSerialInitialization extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BluetoothSocket f5335e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BltSerialInitialization(ComName comName) {
        super(comName);
        r.e(comName, "comName");
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        BluetoothSocket bluetoothSocket = this.f5335e;
        if (bluetoothSocket != null) {
            o.a(bluetoothSocket);
            this.f5335e = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public void init() throws ComException {
        Object next;
        String address;
        boolean z;
        boolean z2;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
        OutputStream outputStream = null;
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        List<String> bluetoothName = absSignalProvider == null ? null : absSignalProvider.getBluetoothName();
        if (bondedDevices == null) {
            address = null;
        } else {
            Iterator<T> it = bondedDevices.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                BluetoothDevice bluetoothDevice = (BluetoothDevice) next;
                z = true;
                if (bluetoothName != null) {
                    if (!(bluetoothName instanceof Collection) || !bluetoothName.isEmpty()) {
                        Iterator<T> it2 = bluetoothName.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (r.a((String) it2.next(), bluetoothDevice.getName())) {
                                    z2 = true;
                                    break;
                                }
                            } else {
                                z2 = false;
                                break;
                            }
                        }
                    } else {
                        z2 = false;
                        break;
                    }
                    if (!z2) {
                        z = false;
                    }
                } else {
                    z = false;
                }
            } while (!z);
            BluetoothDevice bluetoothDevice2 = (BluetoothDevice) next;
            if (bluetoothDevice2 == null) {
                address = null;
            } else {
                address = bluetoothDevice2.getAddress();
            }
        }
        for (BluetoothDevice bluetoothDevice3 : bondedDevices) {
            Log.i("debugBlt", bluetoothDevice3.getName() + ", " + ((Object) bluetoothDevice3.getAddress()));
        }
        Log.i("debugBlt", r.m("开始连接mac地址:", address));
        if (!n0.g(address)) {
            Log.i("debugBlt", "未搜索到设备");
            u.h("蓝牙模块连接失败,请确认设备是否正常配对");
            throw new ComException(this.f5334d, ComState.ErrorInitial, new Exception("蓝牙连接失败"));
        }
        try {
            this.f5335e = defaultAdapter.getRemoteDevice(address).createRfcommSocketToServiceRecord(UUID.fromString("00001101-0000-1000-8000-00805F9B34FB"));
            Log.i("debugBlt", "开始连接");
            BluetoothSocket bluetoothSocket = this.f5335e;
            if (bluetoothSocket != null) {
                bluetoothSocket.connect();
            }
            Log.i("debugBlt", "连接成功");
            BluetoothSocket bluetoothSocket2 = this.f5335e;
            this.f5333a = bluetoothSocket2 == null ? null : bluetoothSocket2.getInputStream();
            BluetoothSocket bluetoothSocket3 = this.f5335e;
            if (bluetoothSocket3 != null) {
                outputStream = bluetoothSocket3.getOutputStream();
            }
            this.b = outputStream;
        } catch (IOException e2) {
            throw new ComException(this.f5334d, ComState.ErrorInitial, e2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public int v() {
        return 1048576;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public String w() {
        return "蓝牙";
    }
}
