package cn.mucang.android.core.permission.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PermissionModel implements Serializable {
    private boolean granted;
    private String name;
    private boolean shouldShowRequest;

    public PermissionModel() {
    }

    public boolean getGranted() {
        return this.granted;
    }

    public String getName() {
        return this.name;
    }

    public boolean getShouldShowRequest() {
        return this.shouldShowRequest;
    }

    public void setGranted(boolean z) {
        this.granted = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setShouldShowRequest(boolean z) {
        this.shouldShowRequest = z;
    }

    public PermissionModel(String str) {
        this.name = str;
    }

    public PermissionModel(String str, boolean z) {
        this.name = str;
        this.granted = z;
    }

    public PermissionModel(String str, boolean z, boolean z2) {
        this.name = str;
        this.granted = z;
        this.shouldShowRequest = z2;
    }
}
