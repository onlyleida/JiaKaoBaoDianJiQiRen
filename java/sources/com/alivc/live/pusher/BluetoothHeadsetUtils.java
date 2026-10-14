package com.alivc.live.pusher;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class BluetoothHeadsetUtils {
    private static final String TAG = "BluetoothHeadsetUtils";
    private AudioManager mAudioManager;
    private BluetoothHeadset mBluetoothHeadset;
    private Context mContext;
    private boolean mIsOnHeadsetSco = false;
    private boolean mIsStarted = false;
    private boolean mRegistered = false;
    private BlueToothListener mBlueToothListener = null;
    private BluetoothProfile.ServiceListener mHeadsetProfileListener = new BluetoothProfile.ServiceListener() { // from class: com.alivc.live.pusher.BluetoothHeadsetUtils.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            Log.d(BluetoothHeadsetUtils.TAG, "Profile listener onServiceConnected");
            BluetoothHeadsetUtils.this.mBluetoothHeadset = (BluetoothHeadset) bluetoothProfile;
            if (BluetoothHeadsetUtils.this.mBluetoothHeadset.getConnectedDevices().size() > 0) {
                BluetoothHeadsetUtils.this.startBluetoothSco();
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i) {
            Log.d(BluetoothHeadsetUtils.TAG, "Profile listener onServiceDisconnected");
            if (BluetoothHeadsetUtils.this.mBluetoothHeadset != null) {
                BluetoothHeadsetUtils.this.stopBluetoothSco();
            }
        }
    };
    private BroadcastReceiver mHeadsetBroadcastReceiver = new BroadcastReceiver() { // from class: com.alivc.live.pusher.BluetoothHeadsetUtils.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!action.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
                if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                    int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 10);
                    if (intExtra == 12) {
                        Log.d(BluetoothHeadsetUtils.TAG, "Headset audio connected");
                        BluetoothHeadsetUtils.this.mIsOnHeadsetSco = true;
                        if (BluetoothHeadsetUtils.this.mBlueToothListener != null) {
                            BluetoothHeadsetUtils.this.mBlueToothListener.onBlueTooth(true);
                            return;
                        }
                        return;
                    }
                    if (intExtra == 10) {
                        Log.d(BluetoothHeadsetUtils.TAG, "Headset audio disconnected");
                        BluetoothHeadsetUtils.this.mIsOnHeadsetSco = false;
                        if (BluetoothHeadsetUtils.this.mBlueToothListener != null) {
                            BluetoothHeadsetUtils.this.mBlueToothListener.onBlueTooth(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
            Log.d(BluetoothHeadsetUtils.TAG, "Action = " + action + " State = " + intExtra2);
            if (intExtra2 == 2) {
                Log.d(BluetoothHeadsetUtils.TAG, "Headset connected");
                if (BluetoothHeadsetUtils.this.mBluetoothHeadset != null) {
                    BluetoothHeadsetUtils.this.startBluetoothSco();
                    return;
                } else {
                    BluetoothHeadsetUtils.this.mBluetoothAdapter.getProfileProxy(BluetoothHeadsetUtils.this.mContext, BluetoothHeadsetUtils.this.mHeadsetProfileListener, 1);
                    return;
                }
            }
            if (intExtra2 == 0) {
                Log.d(BluetoothHeadsetUtils.TAG, "Headset disconnected");
                if (BluetoothHeadsetUtils.this.mBluetoothHeadset != null) {
                    BluetoothHeadsetUtils.this.stopBluetoothSco();
                }
            }
        }
    };
    private BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

    public interface BlueToothListener {
        void onBlueTooth(boolean z);
    }

    public BluetoothHeadsetUtils(Context context) {
        this.mContext = context;
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBluetoothSco() {
        this.mAudioManager.setMode(3);
        this.mAudioManager.startBluetoothSco();
        this.mAudioManager.setBluetoothScoOn(true);
        BlueToothListener blueToothListener = this.mBlueToothListener;
        if (blueToothListener != null) {
            blueToothListener.onBlueTooth(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopBluetoothSco() {
        this.mAudioManager.setMode(0);
        this.mAudioManager.stopBluetoothSco();
        this.mAudioManager.setBluetoothScoOn(false);
        BlueToothListener blueToothListener = this.mBlueToothListener;
        if (blueToothListener != null) {
            blueToothListener.onBlueTooth(false);
        }
    }

    public boolean isOnHeadsetSco() {
        return this.mIsOnHeadsetSco;
    }

    public void start(BlueToothListener blueToothListener) {
        this.mBlueToothListener = blueToothListener;
        if (this.mIsStarted || this.mBluetoothAdapter == null || !this.mAudioManager.isBluetoothScoAvailableOffCall()) {
            return;
        }
        this.mContext.registerReceiver(this.mHeadsetBroadcastReceiver, new IntentFilter("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"));
        this.mContext.registerReceiver(this.mHeadsetBroadcastReceiver, new IntentFilter("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"));
        this.mRegistered = true;
        if (this.mBluetoothAdapter.isEnabled()) {
            this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mHeadsetProfileListener, 1);
        }
        this.mIsStarted = true;
    }

    public void stop() {
        if (this.mIsStarted) {
            if (this.mBluetoothHeadset != null) {
                stopBluetoothSco();
                this.mBluetoothAdapter.closeProfileProxy(1, this.mBluetoothHeadset);
                this.mBluetoothHeadset = null;
            }
            if (this.mRegistered) {
                try {
                    this.mContext.unregisterReceiver(this.mHeadsetBroadcastReceiver);
                } catch (Exception unused) {
                    LogUtil.d("Bluetooth", "unregisterReceiver exception");
                }
                this.mRegistered = false;
            }
            this.mIsStarted = false;
        }
    }
}
