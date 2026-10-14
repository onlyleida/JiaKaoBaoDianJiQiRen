package cn.mucang.android.core.permission.model;

import cn.mucang.android.core.permission.mvp.PermissionItemModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PermissionGuideModel implements Serializable {
    private String bottomDesc;
    private String desc;
    private List<PermissionItemModel> list;

    @Deprecated
    private boolean showAgreement;
    private boolean showClose;
    private String title;

    public PermissionGuideModel() {
        this(null, null, null);
    }

    public String getBottomDesc() {
        return this.bottomDesc;
    }

    public String getDesc() {
        return this.desc;
    }

    public List<PermissionItemModel> getList() {
        return this.list;
    }

    public String getTitle() {
        return this.title;
    }

    @Deprecated
    public boolean isShowAgreement() {
        return this.showAgreement;
    }

    public boolean isShowClose() {
        return this.showClose;
    }

    public void setBottomDesc(String str) {
        this.bottomDesc = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setList(List<PermissionItemModel> list) {
        this.list = list;
    }

    @Deprecated
    public void setShowAgreement(boolean z) {
        this.showAgreement = z;
    }

    public void setShowClose(boolean z) {
        this.showClose = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public PermissionGuideModel(String str, String str2, String str3) {
        this(str, str2, str3, null);
    }

    public PermissionGuideModel(String str, String str2, String str3, List<PermissionItemModel> list) {
        this(str, str2, str3, list, true);
    }

    public PermissionGuideModel(String str, String str2, String str3, List<PermissionItemModel> list, boolean z) {
        this(str, str2, str3, list, z, false);
    }

    @Deprecated
    public PermissionGuideModel(String str, String str2, String str3, List<PermissionItemModel> list, boolean z, boolean z2) {
        this.title = str;
        this.desc = str2;
        this.bottomDesc = str3;
        this.list = list;
        this.showClose = z;
        this.showAgreement = z2;
    }
}
