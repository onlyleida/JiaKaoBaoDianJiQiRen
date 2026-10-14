package com.mobile.auth.k;

import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class x {
    public static String a(boolean z) {
        StringBuilder sb = new StringBuilder();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!z || !networkInterfaceNextElement.getName().toLowerCase().contains("wlan")) {
                        if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                            sb.append(inetAddressNextElement.getHostAddress());
                            sb.append(",");
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(sb)) {
                sb = sb.delete(sb.length() - 1, sb.length());
            }
            f.b("UmcIPUtils", "IPV4 ip：" + ((Object) sb));
            return sb.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String a(boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (!z || !networkInterfaceNextElement.getName().toLowerCase().contains("wlan")) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet6Address) && !inetAddressNextElement.isLinkLocalAddress()) {
                            String hostAddress = inetAddressNextElement.getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                if (!z2) {
                                    sb.append(hostAddress);
                                } else if (hostAddress.startsWith("2409:89")) {
                                    sb.append(hostAddress);
                                }
                                sb.append(",");
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(sb)) {
                sb = sb.delete(sb.length() - 1, sb.length());
            }
            f.b("UmcIPUtils", "onlyMobileDataIp " + z + " IPV6 ip：" + sb.toString());
            return sb.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
