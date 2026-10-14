package cn.mucang.jiakaoyi.uilib.socket.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class SocketServer implements Serializable {
    public String ip;
    public int port;
    public RetryPolicy retryPolicy;
}
