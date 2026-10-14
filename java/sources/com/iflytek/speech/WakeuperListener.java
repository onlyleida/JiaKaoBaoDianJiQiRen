package com.iflytek.speech;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface WakeuperListener extends IInterface {

    public static class Default implements WakeuperListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.iflytek.speech.WakeuperListener
        public void onBeginOfSpeech() throws RemoteException {
        }

        @Override // com.iflytek.speech.WakeuperListener
        public void onEndOfSpeech() throws RemoteException {
        }

        @Override // com.iflytek.speech.WakeuperListener
        public void onError(int i) throws RemoteException {
        }

        @Override // com.iflytek.speech.WakeuperListener
        public void onResult(WakeuperResult wakeuperResult) throws RemoteException {
        }

        @Override // com.iflytek.speech.WakeuperListener
        public void onVolumeChanged(int i) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements WakeuperListener {
        private static final String DESCRIPTOR = "com.iflytek.speech.WakeuperListener";
        static final int TRANSACTION_onBeginOfSpeech = 2;
        static final int TRANSACTION_onEndOfSpeech = 3;
        static final int TRANSACTION_onError = 5;
        static final int TRANSACTION_onResult = 4;
        static final int TRANSACTION_onVolumeChanged = 1;

        private static class Proxy implements WakeuperListener {
            public static WakeuperListener sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.iflytek.speech.WakeuperListener
            public void onBeginOfSpeech() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onBeginOfSpeech();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.WakeuperListener
            public void onEndOfSpeech() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onEndOfSpeech();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.WakeuperListener
            public void onError(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onError(i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.WakeuperListener
            public void onResult(WakeuperResult wakeuperResult) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (wakeuperResult != null) {
                        parcelObtain.writeInt(1);
                        wakeuperResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onResult(wakeuperResult);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.WakeuperListener
            public void onVolumeChanged(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onVolumeChanged(i);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static WakeuperListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof WakeuperListener)) ? new Proxy(iBinder) : (WakeuperListener) iInterfaceQueryLocalInterface;
        }

        public static WakeuperListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(WakeuperListener wakeuperListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (wakeuperListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = wakeuperListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onVolumeChanged(parcel.readInt());
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onBeginOfSpeech();
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onEndOfSpeech();
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onResult(parcel.readInt() != 0 ? WakeuperResult.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 5) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onError(parcel.readInt());
            return true;
        }
    }

    void onBeginOfSpeech() throws RemoteException;

    void onEndOfSpeech() throws RemoteException;

    void onError(int i) throws RemoteException;

    void onResult(WakeuperResult wakeuperResult) throws RemoteException;

    void onVolumeChanged(int i) throws RemoteException;
}
