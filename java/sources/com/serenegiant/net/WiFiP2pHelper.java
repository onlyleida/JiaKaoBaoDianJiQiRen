package com.serenegiant.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public class WiFiP2pHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "WiFiP2pHelper";
    private static WiFiP2pHelper sWiFiP2PHelper;
    private WifiP2pManager.Channel mChannel;
    private boolean mIsWifiP2pEnabled;
    private WiFiDirectBroadcastReceiver mReceiver;
    private int mRetryCount;
    private final WeakReference<Context> mWeakContext;
    private WifiP2pDevice mWifiP2pDevice;
    private final WifiP2pManager mWifiP2pManager;
    private final Set<WiFiP2pListener> mListeners = new CopyOnWriteArraySet();
    private final List<WifiP2pDevice> mAvailableDevices = new ArrayList();
    private final WifiP2pManager.ChannelListener mChannelListener = new WifiP2pManager.ChannelListener() { // from class: com.serenegiant.net.WiFiP2pHelper.4
        @Override // android.net.wifi.p2p.WifiP2pManager.ChannelListener
        public void onChannelDisconnected() {
            WiFiP2pHelper.this.setIsWifiP2pEnabled(false);
            WiFiP2pHelper.this.resetData();
            synchronized (WiFiP2pHelper.this) {
                WiFiP2pHelper.this.mChannel = null;
            }
            if (WiFiP2pHelper.this.mRetryCount == 0) {
                WiFiP2pHelper.access$308(WiFiP2pHelper.this);
                Context context = (Context) WiFiP2pHelper.this.mWeakContext.get();
                if ((WiFiP2pHelper.this.mReceiver == null) && (context != null)) {
                    WiFiP2pHelper wiFiP2pHelper = WiFiP2pHelper.this;
                    wiFiP2pHelper.mChannel = wiFiP2pHelper.mWifiP2pManager.initialize(context, context.getMainLooper(), WiFiP2pHelper.this.mChannelListener);
                }
            }
        }
    };
    private final WifiP2pManager.PeerListListener mPeerListListener = new WifiP2pManager.PeerListListener() { // from class: com.serenegiant.net.WiFiP2pHelper.5
        @Override // android.net.wifi.p2p.WifiP2pManager.PeerListListener
        public void onPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
            Collection<WifiP2pDevice> deviceList = wifiP2pDeviceList.getDeviceList();
            synchronized (WiFiP2pHelper.this.mAvailableDevices) {
                WiFiP2pHelper.this.mAvailableDevices.clear();
                WiFiP2pHelper.this.mAvailableDevices.addAll(deviceList);
            }
            WiFiP2pHelper wiFiP2pHelper = WiFiP2pHelper.this;
            wiFiP2pHelper.callOnUpdateDevices(wiFiP2pHelper.mAvailableDevices);
        }
    };
    private final WifiP2pManager.ConnectionInfoListener mConnectionInfoListener = new WifiP2pManager.ConnectionInfoListener() { // from class: com.serenegiant.net.WiFiP2pHelper.6
        @Override // android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener
        public void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
            if (wifiP2pInfo != null) {
                WiFiP2pHelper.this.callOnConnect(wifiP2pInfo);
            }
        }
    };

    private static class WiFiDirectBroadcastReceiver extends BroadcastReceiver {
        private WifiP2pManager.Channel mChannel;
        private WifiP2pManager mManager;
        private WiFiP2pHelper mParent;

        public WiFiDirectBroadcastReceiver(WifiP2pManager wifiP2pManager, WifiP2pManager.Channel channel, WiFiP2pHelper wiFiP2pHelper) {
            this.mManager = wifiP2pManager;
            this.mChannel = channel;
            this.mParent = wiFiP2pHelper;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent != null ? intent.getAction() : null;
            if ("android.net.wifi.p2p.STATE_CHANGED".equals(action)) {
                try {
                    if (intent.getIntExtra("wifi_p2p_state", -1) == 2) {
                        this.mParent.setIsWifiP2pEnabled(true);
                    } else {
                        this.mParent.setIsWifiP2pEnabled(false);
                        this.mParent.resetData();
                    }
                    return;
                } catch (Exception e2) {
                    this.mParent.callOnError(e2);
                    return;
                }
            }
            if ("android.net.wifi.p2p.PEERS_CHANGED".equals(action)) {
                try {
                    this.mManager.requestPeers(this.mChannel, this.mParent.mPeerListListener);
                    return;
                } catch (Exception e3) {
                    this.mParent.callOnError(e3);
                    return;
                }
            }
            if ("android.net.wifi.p2p.CONNECTION_STATE_CHANGE".equals(action)) {
                try {
                    if (((NetworkInfo) intent.getParcelableExtra("networkInfo")).isConnected()) {
                        this.mManager.requestConnectionInfo(this.mChannel, this.mParent.mConnectionInfoListener);
                    } else {
                        this.mParent.resetData();
                    }
                    return;
                } catch (Exception e4) {
                    this.mParent.callOnError(e4);
                    return;
                }
            }
            if ("android.net.wifi.p2p.THIS_DEVICE_CHANGED".equals(action)) {
                try {
                    this.mParent.updateDevice((WifiP2pDevice) intent.getParcelableExtra("wifiP2pDevice"));
                } catch (Exception e5) {
                    this.mParent.callOnError(e5);
                }
            }
        }
    }

    private WiFiP2pHelper(Context context) {
        this.mWeakContext = new WeakReference<>(context);
        this.mWifiP2pManager = (WifiP2pManager) context.getSystemService("wifip2p");
    }

    static /* synthetic */ int access$308(WiFiP2pHelper wiFiP2pHelper) {
        int i = wiFiP2pHelper.mRetryCount;
        wiFiP2pHelper.mRetryCount = i + 1;
        return i;
    }

    public static synchronized WiFiP2pHelper getInstance(Context context) {
        WiFiP2pHelper wiFiP2pHelper = sWiFiP2PHelper;
        if (wiFiP2pHelper == null || wiFiP2pHelper.mWeakContext.get() == null) {
            sWiFiP2PHelper = new WiFiP2pHelper(context);
        }
        return sWiFiP2PHelper;
    }

    public static synchronized void release() {
        sWiFiP2PHelper = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void resetData() {
        if (isConnectedOrConnecting()) {
            callOnDisconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setIsWifiP2pEnabled(boolean z) {
        this.mIsWifiP2pEnabled = z;
        callOnStateChanged(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateDevice(WifiP2pDevice wifiP2pDevice) {
        this.mWifiP2pDevice = wifiP2pDevice;
    }

    public void add(WiFiP2pListener wiFiP2pListener) {
        this.mListeners.add(wiFiP2pListener);
    }

    protected void callOnConnect(WifiP2pInfo wifiP2pInfo) {
        for (WiFiP2pListener wiFiP2pListener : this.mListeners) {
            try {
                wiFiP2pListener.onConnect(wifiP2pInfo);
            } catch (Exception e2) {
                Log.w(TAG, e2);
                this.mListeners.remove(wiFiP2pListener);
            }
        }
    }

    protected void callOnDisconnect() {
        for (WiFiP2pListener wiFiP2pListener : this.mListeners) {
            try {
                wiFiP2pListener.onDisconnect();
            } catch (Exception e2) {
                Log.w(TAG, e2);
                this.mListeners.remove(wiFiP2pListener);
            }
        }
    }

    protected void callOnError(Exception exc) {
        for (WiFiP2pListener wiFiP2pListener : this.mListeners) {
            try {
                wiFiP2pListener.onError(exc);
            } catch (Exception e2) {
                Log.w(TAG, e2);
                this.mListeners.remove(wiFiP2pListener);
            }
        }
    }

    protected void callOnStateChanged(boolean z) {
        for (WiFiP2pListener wiFiP2pListener : this.mListeners) {
            try {
                wiFiP2pListener.onStateChanged(z);
            } catch (Exception e2) {
                Log.w(TAG, e2);
                this.mListeners.remove(wiFiP2pListener);
            }
        }
    }

    protected void callOnUpdateDevices(List<WifiP2pDevice> list) {
        for (WiFiP2pListener wiFiP2pListener : this.mListeners) {
            try {
                wiFiP2pListener.onUpdateDevices(list);
            } catch (Exception e2) {
                Log.w(TAG, e2);
                this.mListeners.remove(wiFiP2pListener);
            }
        }
    }

    public void connect(String str) {
        WifiP2pConfig wifiP2pConfig = new WifiP2pConfig();
        wifiP2pConfig.deviceAddress = str;
        wifiP2pConfig.wps.setup = 0;
        connect(wifiP2pConfig);
    }

    public synchronized void disconnect() {
        internalDisconnect(new WifiP2pManager.ActionListener() { // from class: com.serenegiant.net.WiFiP2pHelper.3
            @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
            public void onFailure(int i) {
                WiFiP2pHelper.this.callOnError(new RuntimeException("failed to disconnect, reason=" + i));
            }

            @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
            public void onSuccess() {
            }
        });
    }

    protected void internalDisconnect(WifiP2pManager.ActionListener actionListener) {
        int i;
        WifiP2pManager wifiP2pManager = this.mWifiP2pManager;
        if (wifiP2pManager != null) {
            WifiP2pDevice wifiP2pDevice = this.mWifiP2pDevice;
            if (wifiP2pDevice == null || (i = wifiP2pDevice.status) == 0) {
                WifiP2pManager.Channel channel = this.mChannel;
                if (channel != null) {
                    wifiP2pManager.removeGroup(channel, actionListener);
                    return;
                }
                return;
            }
            if (i == 3 || i == 1) {
                wifiP2pManager.cancelConnect(this.mChannel, actionListener);
            }
        }
    }

    public synchronized boolean isConnected() {
        WifiP2pDevice wifiP2pDevice;
        wifiP2pDevice = this.mWifiP2pDevice;
        return wifiP2pDevice != null && wifiP2pDevice.status == 0;
    }

    public synchronized boolean isConnectedOrConnecting() {
        boolean z;
        int i;
        WifiP2pDevice wifiP2pDevice = this.mWifiP2pDevice;
        z = true;
        if (wifiP2pDevice == null || ((i = wifiP2pDevice.status) != 0 && i != 1)) {
            z = false;
        }
        return z;
    }

    public synchronized boolean isWiFiP2pEnabled() {
        return this.mChannel != null && this.mIsWifiP2pEnabled;
    }

    public synchronized void register() {
        Context context = this.mWeakContext.get();
        boolean z = true;
        boolean z2 = context != null;
        if (this.mReceiver != null) {
            z = false;
        }
        if (z & z2) {
            this.mChannel = this.mWifiP2pManager.initialize(context, context.getMainLooper(), this.mChannelListener);
            this.mReceiver = new WiFiDirectBroadcastReceiver(this.mWifiP2pManager, this.mChannel, this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.p2p.STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.p2p.PEERS_CHANGED");
            intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
            intentFilter.addAction("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
            context.registerReceiver(this.mReceiver, intentFilter);
        }
    }

    public void remove(WiFiP2pListener wiFiP2pListener) {
        this.mListeners.remove(wiFiP2pListener);
    }

    public synchronized void startDiscovery() throws IllegalStateException {
        WifiP2pManager.Channel channel = this.mChannel;
        if (channel == null) {
            throw new IllegalStateException("not registered");
        }
        this.mWifiP2pManager.discoverPeers(channel, new WifiP2pManager.ActionListener() { // from class: com.serenegiant.net.WiFiP2pHelper.1
            @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
            public void onFailure(int i) {
                WiFiP2pHelper.this.callOnError(new RuntimeException("failed to start discovery, reason=" + i));
            }

            @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
            public void onSuccess() {
            }
        });
    }

    public synchronized void unregister() {
        this.mIsWifiP2pEnabled = false;
        this.mRetryCount = 0;
        internalDisconnect(null);
        if (this.mReceiver != null) {
            try {
                this.mWeakContext.get().unregisterReceiver(this.mReceiver);
            } catch (Exception e2) {
                Log.w(TAG, e2);
            }
            this.mReceiver = null;
        }
    }

    public void connect(WifiP2pDevice wifiP2pDevice) {
        WifiP2pConfig wifiP2pConfig = new WifiP2pConfig();
        wifiP2pConfig.deviceAddress = wifiP2pDevice.deviceAddress;
        wifiP2pConfig.wps.setup = 0;
        connect(wifiP2pConfig);
    }

    public void connect(WifiP2pConfig wifiP2pConfig) throws IllegalStateException {
        WifiP2pManager.Channel channel = this.mChannel;
        if (channel != null) {
            this.mWifiP2pManager.connect(channel, wifiP2pConfig, new WifiP2pManager.ActionListener() { // from class: com.serenegiant.net.WiFiP2pHelper.2
                @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                public void onFailure(int i) {
                    WiFiP2pHelper.this.callOnError(new RuntimeException("failed to connect, reason=" + i));
                }

                @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                public void onSuccess() {
                }
            });
            return;
        }
        throw new IllegalStateException("not registered");
    }
}
