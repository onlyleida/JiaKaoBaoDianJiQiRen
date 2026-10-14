package com.iflytek.speech;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface VerifierListener extends IInterface {

    public static class Default implements VerifierListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onBeginOfSpeech() throws RemoteException {
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onCancel() throws RemoteException {
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onEnd(VerifierResult verifierResult, int i) throws RemoteException {
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onEndOfSpeech() throws RemoteException {
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onError(int i) throws RemoteException {
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onRegister(VerifierResult verifierResult) throws RemoteException {
        }

        @Override // com.iflytek.speech.VerifierListener
        public void onVolumeChanged(int i) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements VerifierListener {
        private static final String DESCRIPTOR = "com.iflytek.speech.VerifierListener";
        static final int TRANSACTION_onBeginOfSpeech = 2;
        static final int TRANSACTION_onCancel = 6;
        static final int TRANSACTION_onEnd = 5;
        static final int TRANSACTION_onEndOfSpeech = 3;
        static final int TRANSACTION_onError = 7;
        static final int TRANSACTION_onRegister = 4;
        static final int TRANSACTION_onVolumeChanged = 1;

        private static class Proxy implements VerifierListener {
            public static VerifierListener sDefaultImpl;
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

            @Override // com.iflytek.speech.VerifierListener
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

            @Override // com.iflytek.speech.VerifierListener
            public void onCancel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onCancel();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.VerifierListener
            public void onEnd(VerifierResult verifierResult, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (verifierResult != null) {
                        parcelObtain.writeInt(1);
                        verifierResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onEnd(verifierResult, i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.VerifierListener
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

            @Override // com.iflytek.speech.VerifierListener
            public void onError(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onError(i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.VerifierListener
            public void onRegister(VerifierResult verifierResult) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (verifierResult != null) {
                        parcelObtain.writeInt(1);
                        verifierResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onRegister(verifierResult);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.VerifierListener
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

        public static VerifierListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof VerifierListener)) ? new Proxy(iBinder) : (VerifierListener) iInterfaceQueryLocalInterface;
        }

        public static VerifierListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(VerifierListener verifierListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (verifierListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = verifierListener;
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
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVolumeChanged(parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBeginOfSpeech();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEndOfSpeech();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRegister(parcel.readInt() != 0 ? VerifierResult.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEnd(parcel.readInt() != 0 ? VerifierResult.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCancel();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onError(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onBeginOfSpeech() throws RemoteException;

    void onCancel() throws RemoteException;

    void onEnd(VerifierResult verifierResult, int i) throws RemoteException;

    void onEndOfSpeech() throws RemoteException;

    void onError(int i) throws RemoteException;

    void onRegister(VerifierResult verifierResult) throws RemoteException;

    void onVolumeChanged(int i) throws RemoteException;
}
