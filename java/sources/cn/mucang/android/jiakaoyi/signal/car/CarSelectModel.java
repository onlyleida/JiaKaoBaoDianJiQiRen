package cn.mucang.android.jiakaoyi.signal.car;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;", "Ljava/io/Serializable;", "()V", "configList", "", "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "getConfigList", "()Ljava/util/List;", "setConfigList", "(Ljava/util/List;)V", "isSelect", "", "()Z", "setSelect", "(Z)V", "modelName", "", "getModelName", "()Ljava/lang/String;", "setModelName", "(Ljava/lang/String;)V", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarSelectModel implements Serializable {
    private List<CarItemModel> configList;
    private boolean isSelect;
    private String modelName;

    public final List<CarItemModel> getConfigList() {
        return this.configList;
    }

    public final String getModelName() {
        return this.modelName;
    }

    /* JADX INFO: renamed from: isSelect, reason: from getter */
    public final boolean getIsSelect() {
        return this.isSelect;
    }

    public final void setConfigList(List<CarItemModel> list) {
        this.configList = list;
    }

    public final void setModelName(String str) {
        this.modelName = str;
    }

    public final void setSelect(boolean z) {
        this.isSelect = z;
    }
}
