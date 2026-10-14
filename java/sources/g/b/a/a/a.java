package g.b.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.coloros.ocs.base.common.CapabilityInfo;

/* JADX INFO: loaded from: classes5.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: g.b.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0304a extends Binder implements a {
        public AbstractBinderC0304a() {
            attachInterface(this, "com.coloros.ocs.base.IAuthenticationListener");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.coloros.ocs.base.IAuthenticationListener");
                f(parcel.readInt() != 0 ? CapabilityInfo.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.coloros.ocs.base.IAuthenticationListener");
                return true;
            }
            parcel.enforceInterface("com.coloros.ocs.base.IAuthenticationListener");
            a(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i) throws RemoteException;

    void f(CapabilityInfo capabilityInfo) throws RemoteException;
}
