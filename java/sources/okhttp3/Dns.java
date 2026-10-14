package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface Dns {
    public static final Dns SYSTEM = new Dns() { // from class: okhttp3.c
        @Override // okhttp3.Dns
        public final List lookup(String str) {
            return f.a(str);
        }
    };

    List<InetAddress> lookup(String str) throws UnknownHostException;
}
