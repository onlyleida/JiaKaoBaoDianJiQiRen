package cn.mucang.comet.common.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class ProxyInfo implements Serializable {
    private String host;
    private long id;
    private int initIdleSlaveCount;
    private int maxLostPackets;
    private int port;
    private int ttl;

    public String getHost() {
        return this.host;
    }

    public long getId() {
        return this.id;
    }

    public int getInitIdleSlaveCount() {
        return this.initIdleSlaveCount;
    }

    public int getMaxLostPackets() {
        return this.maxLostPackets;
    }

    public int getPort() {
        return this.port;
    }

    public int getTtl() {
        return this.ttl;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setInitIdleSlaveCount(int i) {
        this.initIdleSlaveCount = i;
    }

    public void setMaxLostPackets(int i) {
        this.maxLostPackets = i;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public void setTtl(int i) {
        this.ttl = i;
    }

    public String toString() {
        return this.id + "|" + this.host + ":" + this.port + ",maxLostPackets:" + this.maxLostPackets + ",initIdleSlaveCount:" + this.initIdleSlaveCount;
    }
}
