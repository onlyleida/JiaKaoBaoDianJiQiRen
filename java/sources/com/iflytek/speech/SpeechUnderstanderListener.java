package com.iflytek.speech;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface SpeechUnderstanderListener extends IInterface {

    public static class Default implements SpeechUnderstanderListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.iflytek.speech.SpeechUnderstanderListener
        public void onBeginOfSpeech() throws RemoteException {
        }

        @Override // com.iflytek.speech.SpeechUnderstanderListener
        public void onEndOfSpeech() throws RemoteException {
        }

        @Override // com.iflytek.speech.SpeechUnderstanderListener
        public void onError(int i) throws RemoteException {
        }

        @Override // com.iflytek.speech.SpeechUnderstanderListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) throws RemoteException {
        }

        @Override // com.iflytek.speech.SpeechUnderstanderListener
        public void onResult(UnderstanderResult understanderResult) throws RemoteException {
        }

        @Override // com.iflytek.speech.SpeechUnderstanderListener
        public void onVolumeChanged(int i, byte[] bArr) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements SpeechUnderstanderListener {
        private static final String DESCRIPTOR = "com.iflytek.speech.SpeechUnderstanderListener";
        static final int TRANSACTION_onBeginOfSpeech = 2;
        static final int TRANSACTION_onEndOfSpeech = 3;
        static final int TRANSACTION_onError = 5;
        static final int TRANSACTION_onEvent = 6;
        static final int TRANSACTION_onResult = 4;
        static final int TRANSACTION_onVolumeChanged = 1;

        private static class Proxy implements SpeechUnderstanderListener {
            public static SpeechUnderstanderListener sDefaultImpl;
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

            @Override // com.iflytek.speech.SpeechUnderstanderListener
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

            @Override // com.iflytek.speech.SpeechUnderstanderListener
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

            @Override // com.iflytek.speech.SpeechUnderstanderListener
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

            @Override // com.iflytek.speech.SpeechUnderstanderListener
            public void onEvent(int i, int i2, int i3, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onEvent(i, i2, i3, bundle);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.SpeechUnderstanderListener
            public void onResult(UnderstanderResult understanderResult) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (understanderResult != null) {
                        parcelObtain.writeInt(1);
                        understanderResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onResult(understanderResult);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.SpeechUnderstanderListener
            public void onVolumeChanged(int i, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onVolumeChanged(i, bArr);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static SpeechUnderstanderListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SpeechUnderstanderListener)) ? new Proxy(iBinder) : (SpeechUnderstanderListener) iInterfaceQueryLocalInterface;
        }

        public static SpeechUnderstanderListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(SpeechUnderstanderListener speechUnderstanderListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (speechUnderstanderListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = speechUnderstanderListener;
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
                    onVolumeChanged(parcel.readInt(), parcel.createByteArray());
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
                    onResult(parcel.readInt() != 0 ? UnderstanderResult.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onError(parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEvent(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onBeginOfSpeech() throws RemoteException;

    void onEndOfSpeech() throws RemoteException;

    void onError(int i) throws RemoteException;

    void onEvent(int i, int i2, int i3, Bundle bundle) throws RemoteException;

    void onResult(UnderstanderResult understanderResult) throws RemoteException;

    void onVolumeChanged(int i, byte[] bArr) throws RemoteException;
}
