package cn.mucang.android.core.permission.setting;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PermissionInfo implements Serializable {
    private String authority;
    private String name;
    private String reason;
    private String reasonShort;

    public PermissionInfo() {
    }

    public String getAuthority() {
        return this.authority;
    }

    public String getName() {
        return this.name;
    }

    public String getReason() {
        return this.reason;
    }

    public String getReasonShort() {
        return this.reasonShort;
    }

    public void setAuthority(String str) {
        this.authority = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public void setReasonShort(String str) {
        this.reasonShort = str;
    }

    public PermissionInfo(String str, String str2, String str3, String str4) {
        this.authority = str;
        this.name = str2;
        this.reasonShort = str3;
        this.reason = str4;
    }
}
