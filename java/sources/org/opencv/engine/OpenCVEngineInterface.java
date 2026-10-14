package org.opencv.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
public interface OpenCVEngineInterface extends IInterface {

    public static class Default implements OpenCVEngineInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // org.opencv.engine.OpenCVEngineInterface
        public int getEngineVersion() throws RemoteException {
            return 0;
        }

        @Override // org.opencv.engine.OpenCVEngineInterface
        public String getLibPathByVersion(String str) throws RemoteException {
            return null;
        }

        @Override // org.opencv.engine.OpenCVEngineInterface
        public String getLibraryList(String str) throws RemoteException {
            return null;
        }

        @Override // org.opencv.engine.OpenCVEngineInterface
        public boolean installVersion(String str) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements OpenCVEngineInterface {
        private static final String DESCRIPTOR = "org.opencv.engine.OpenCVEngineInterface";
        static final int TRANSACTION_getEngineVersion = 1;
        static final int TRANSACTION_getLibPathByVersion = 2;
        static final int TRANSACTION_getLibraryList = 4;
        static final int TRANSACTION_installVersion = 3;

        private static class Proxy implements OpenCVEngineInterface {
            public static OpenCVEngineInterface sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public int getEngineVersion() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEngineVersion();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public String getLibPathByVersion(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLibPathByVersion(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public String getLibraryList(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLibraryList(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public boolean installVersion(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().installVersion(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static OpenCVEngineInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof OpenCVEngineInterface)) ? new Proxy(iBinder) : (OpenCVEngineInterface) iInterfaceQueryLocalInterface;
        }

        public static OpenCVEngineInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(OpenCVEngineInterface openCVEngineInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (openCVEngineInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = openCVEngineInterface;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                int engineVersion = getEngineVersion();
                parcel2.writeNoException();
                parcel2.writeInt(engineVersion);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String libPathByVersion = getLibPathByVersion(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(libPathByVersion);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zInstallVersion = installVersion(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zInstallVersion ? 1 : 0);
                return true;
            }
            if (i != 4) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            String libraryList = getLibraryList(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(libraryList);
            return true;
        }
    }

    int getEngineVersion() throws RemoteException;

    String getLibPathByVersion(String str) throws RemoteException;

    String getLibraryList(String str) throws RemoteException;

    boolean installVersion(String str) throws RemoteException;
}
