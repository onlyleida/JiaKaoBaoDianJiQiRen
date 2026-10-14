package XI.XI.K0;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import d.a.a.a;

/* JADX INFO: loaded from: classes.dex */
public class K0 implements kM {
    public a K0;

    /* JADX INFO: renamed from: XI, reason: collision with root package name */
    public Context f12XI;
    public xo kM;
    public ServiceConnection xo = new XI();

    public class XI implements ServiceConnection {
        public XI() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            a c0291a;
            K0 k0 = K0.this;
            int i = a.AbstractBinderC0290a.f14429a;
            if (iBinder == null) {
                c0291a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
                c0291a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new a.AbstractBinderC0290a.C0291a(iBinder) : (a) iInterfaceQueryLocalInterface;
            }
            k0.K0 = c0291a;
            K0.this.kM.connectSuccess(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            K0.this.K0 = null;
        }
    }

    public K0(Context context) {
        this.f12XI = context;
    }

    public boolean XI() {
        boolean zIsSupported;
        a aVar = this.K0;
        if (aVar != null) {
            try {
                zIsSupported = aVar.isSupported();
            } catch (RemoteException e2) {
                String str = "isSupported exception:" + e2.getMessage();
                e2.printStackTrace();
                zIsSupported = false;
            }
        } else {
            zIsSupported = false;
        }
        String str2 = "isSupported:" + this.K0;
        String str3 = "isSupported ret:" + zIsSupported;
        return zIsSupported;
    }
}
