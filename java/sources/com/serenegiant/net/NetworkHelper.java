package com.serenegiant.net;

import android.util.Log;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class NetworkHelper {
    private static final String TAG = "NetworkHelper";

    public static String getLocalIPv4Address() {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                        return inetAddress.getHostAddress();
                    }
                }
            }
            Iterator it2 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it2.hasNext()) {
                Iterator<InterfaceAddress> it3 = ((NetworkInterface) it2.next()).getInterfaceAddresses().iterator();
                while (it3.hasNext()) {
                    InetAddress address = it3.next().getAddress();
                    if (!address.isLoopbackAddress() && !(address instanceof Inet4Address)) {
                        return address.getHostAddress();
                    }
                }
            }
            return null;
        } catch (NullPointerException | SocketException e2) {
            Log.e(TAG, "getLocalIPv4Address", e2);
            return null;
        }
    }

    public static String getLocalIPv6Address() {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet6Address)) {
                        return inetAddress.getHostAddress();
                    }
                }
            }
            return null;
        } catch (NullPointerException | SocketException e2) {
            Log.w(TAG, "getLocalIPv6Address", e2);
            return null;
        }
    }
}
