package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceAgent implements Serializable {
    public long agentId;
    public boolean passEnabled;
    public long tenantId;

    public long getAgentId() {
        return this.agentId;
    }

    public long getTenantId() {
        return this.tenantId;
    }

    public boolean isPassEnabled() {
        return this.passEnabled;
    }

    public void setAgentId(long j) {
        this.agentId = j;
    }

    public void setPassEnabled(boolean z) {
        this.passEnabled = z;
    }

    public void setTenantId(long j) {
        this.tenantId = j;
    }
}
