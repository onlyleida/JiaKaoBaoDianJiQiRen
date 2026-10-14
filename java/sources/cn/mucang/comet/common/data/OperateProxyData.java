package cn.mucang.comet.common.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class OperateProxyData implements Serializable {
    private ClientInfo clientInfo;
    private HardwareInfo hardwareInfo;
    private ProxyInfo proxyInfo;

    public ClientInfo getClientInfo() {
        return this.clientInfo;
    }

    public HardwareInfo getHardwareInfo() {
        return this.hardwareInfo;
    }

    public ProxyInfo getProxyInfo() {
        return this.proxyInfo;
    }

    public void setClientInfo(ClientInfo clientInfo) {
        this.clientInfo = clientInfo;
    }

    public void setHardwareInfo(HardwareInfo hardwareInfo) {
        this.hardwareInfo = hardwareInfo;
    }

    public void setProxyInfo(ProxyInfo proxyInfo) {
        this.proxyInfo = proxyInfo;
    }

    public String toString() {
        return "OperateProxyData{clientInfo=" + this.clientInfo + ", proxyInfo=" + this.proxyInfo + '}';
    }
}
