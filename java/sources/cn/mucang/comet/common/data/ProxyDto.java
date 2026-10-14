package cn.mucang.comet.common.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class ProxyDto implements Serializable {
    private volatile boolean closed;
    private long createTime;
    private long id;
    private int initIdleSlaveCount;
    private long maxIdleDuration;
    private int maxLostPackets;
    private long maxSilenceDuration;
    private long proxyConnectTime;
    private long proxyHandlerCount;
    private int proxyPort;
    private long serverSocketChannelCount;
    private long slaveConnectTime;
    private long slaveHandlerCount;
    private int slavePort;
    private long socketCount;
    private int status;
    private long trafficReceived;

    public long getCreateTime() {
        return this.createTime;
    }

    public long getId() {
        return this.id;
    }

    public int getInitIdleSlaveCount() {
        return this.initIdleSlaveCount;
    }

    public long getMaxIdleDuration() {
        return this.maxIdleDuration;
    }

    public int getMaxLostPackets() {
        return this.maxLostPackets;
    }

    public long getMaxSilenceDuration() {
        return this.maxSilenceDuration;
    }

    public long getProxyConnectTime() {
        return this.proxyConnectTime;
    }

    public long getProxyHandlerCount() {
        return this.proxyHandlerCount;
    }

    public int getProxyPort() {
        return this.proxyPort;
    }

    public long getServerSocketChannelCount() {
        return this.serverSocketChannelCount;
    }

    public long getSlaveConnectTime() {
        return this.slaveConnectTime;
    }

    public long getSlaveHandlerCount() {
        return this.slaveHandlerCount;
    }

    public int getSlavePort() {
        return this.slavePort;
    }

    public long getSocketCount() {
        return this.socketCount;
    }

    public int getStatus() {
        return this.status;
    }

    public long getTrafficReceived() {
        return this.trafficReceived;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public void setClosed(boolean z) {
        this.closed = z;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setInitIdleSlaveCount(int i) {
        this.initIdleSlaveCount = i;
    }

    public void setMaxIdleDuration(long j) {
        this.maxIdleDuration = j;
    }

    public void setMaxLostPackets(int i) {
        this.maxLostPackets = i;
    }

    public void setMaxSilenceDuration(long j) {
        this.maxSilenceDuration = j;
    }

    public void setProxyConnectTime(long j) {
        this.proxyConnectTime = j;
    }

    public void setProxyHandlerCount(long j) {
        this.proxyHandlerCount = j;
    }

    public void setProxyPort(int i) {
        this.proxyPort = i;
    }

    public void setServerSocketChannelCount(long j) {
        this.serverSocketChannelCount = j;
    }

    public void setSlaveConnectTime(long j) {
        this.slaveConnectTime = j;
    }

    public void setSlaveHandlerCount(long j) {
        this.slaveHandlerCount = j;
    }

    public void setSlavePort(int i) {
        this.slavePort = i;
    }

    public void setSocketCount(long j) {
        this.socketCount = j;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTrafficReceived(long j) {
        this.trafficReceived = j;
    }
}
