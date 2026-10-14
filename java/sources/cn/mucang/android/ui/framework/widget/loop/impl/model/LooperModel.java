package cn.mucang.android.ui.framework.widget.loop.impl.model;

import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class LooperModel implements BaseModel {
    private int imageResId;
    private String imageUrl;

    public LooperModel(String str) {
        this.imageUrl = str;
    }

    public int getImageResId() {
        return this.imageResId;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public void setImageResId(int i) {
        this.imageResId = i;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public LooperModel(int i) {
        this.imageResId = i;
    }
}
