package com.rscja.deviceapi;

import android.util.Log;
import com.rscja.deviceapi.exception.ConfigurationException;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    private static final String b = "b";
    private static b c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f13641a;

    private b() {
        boolean z = g.f.a.a.f14576a;
        try {
            this.f13641a = a.b();
        } catch (ConfigurationException e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized b b() throws ConfigurationException {
        if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = new b();
                }
            }
        }
        return c;
    }

    protected DeviceAPI a() {
        return DeviceAPI.a();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0041 A[Catch: all -> 0x009b, TRY_LEAVE, TryCatch #3 {, blocks: (B:12:0x000e, B:31:0x003d, B:33:0x0041, B:15:0x0016, B:17:0x001a, B:20:0x0022, B:22:0x0026, B:25:0x002e, B:27:0x0032, B:30:0x003a), top: B:51:0x0002, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0095  */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x0041, please report this as an issue */
    public synchronized boolean c(int i, int i2) {
        int iModuleInit;
        if (i == 2) {
            try {
                this.f13641a = a.b();
            } catch (ConfigurationException e2) {
                e2.printStackTrace();
            }
            if (this.f13641a != null) {
                iModuleInit = a().ModuleInit(this.f13641a.e(), this.f13641a.g(), i2, i);
                Log.e(b, "DeviceName=" + this.f13641a.e() + "   Uart= " + this.f13641a.g() + "   getBaudrate= " + this.f13641a.d() + "   module=" + i);
                if (iModuleInit > -1) {
                    return true;
                }
            }
            return false;
        }
        if (i == 4) {
            try {
                this.f13641a = a.a();
            } catch (ConfigurationException e3) {
                e3.printStackTrace();
            }
            if (this.f13641a != null) {
                iModuleInit = a().ModuleInit(this.f13641a.e(), this.f13641a.g(), i2, i);
                Log.e(b, "DeviceName=" + this.f13641a.e() + "   Uart= " + this.f13641a.g() + "   getBaudrate= " + this.f13641a.d() + "   module=" + i);
                if (iModuleInit > -1) {
                    return true;
                }
            }
            return false;
        }
        if (i == 5) {
            try {
                this.f13641a = a.c();
            } catch (ConfigurationException e4) {
                e4.printStackTrace();
            }
            if (this.f13641a != null) {
                iModuleInit = a().ModuleInit(this.f13641a.e(), this.f13641a.g(), i2, i);
                Log.e(b, "DeviceName=" + this.f13641a.e() + "   Uart= " + this.f13641a.g() + "   getBaudrate= " + this.f13641a.d() + "   module=" + i);
                if (iModuleInit > -1) {
                    return true;
                }
            }
            return false;
        }
        if (i != 6) {
            if (this.f13641a != null) {
                iModuleInit = a().ModuleInit(this.f13641a.e(), this.f13641a.g(), i2, i);
                Log.e(b, "DeviceName=" + this.f13641a.e() + "   Uart= " + this.f13641a.g() + "   getBaudrate= " + this.f13641a.d() + "   module=" + i);
                if (iModuleInit > -1) {
                    return true;
                }
            }
            return false;
        }
        try {
            this.f13641a = a.b();
        } catch (ConfigurationException e5) {
            e5.printStackTrace();
        }
        if (this.f13641a != null) {
            iModuleInit = a().ModuleInit(this.f13641a.e(), this.f13641a.g(), i2, i);
            Log.e(b, "DeviceName=" + this.f13641a.e() + "   Uart= " + this.f13641a.g() + "   getBaudrate= " + this.f13641a.d() + "   module=" + i);
            if (iModuleInit > -1) {
                return true;
            }
        }
        return false;
        throw th;
    }

    public byte[] d() {
        return DeviceAPI.a().ModuleReceiveEx();
    }

    public synchronized boolean e(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length != 0) {
                int iModuleSend = DeviceAPI.a().ModuleSend(bArr, bArr.length);
                if (iModuleSend == 0) {
                    return true;
                }
                Log.e(b, "send() iRes:" + iModuleSend);
                return false;
            }
        }
        return false;
    }
}
