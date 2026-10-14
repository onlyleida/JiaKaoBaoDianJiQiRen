package cn.mucang.android.core.permission.model;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PermissionsResult implements Serializable {
    private boolean grantedAll;
    private List<PermissionModel> list;

    public PermissionsResult() {
    }

    public boolean getGrantedAll() {
        return this.grantedAll;
    }

    public List<PermissionModel> getList() {
        return this.list;
    }

    public void setGrantedAll(boolean z) {
        this.grantedAll = z;
    }

    public void setList(List<PermissionModel> list) {
        this.list = list;
    }

    public PermissionsResult(boolean z, List<PermissionModel> list) {
        this.grantedAll = z;
        this.list = list;
    }
}
