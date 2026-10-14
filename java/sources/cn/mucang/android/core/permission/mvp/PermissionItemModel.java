package cn.mucang.android.core.permission.mvp;

import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class PermissionItemModel implements BaseModel {
    private String desc;
    private int img;
    private String title;

    public PermissionItemModel() {
    }

    public String getDesc() {
        return this.desc;
    }

    public int getImg() {
        return this.img;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setImg(int i) {
        this.img = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public PermissionItemModel(String str) {
        this.title = str;
    }

    public PermissionItemModel(String str, String str2) {
        this.title = str;
        this.desc = str2;
    }

    public PermissionItemModel(String str, String str2, int i) {
        this.title = str;
        this.desc = str2;
        this.img = i;
    }
}
