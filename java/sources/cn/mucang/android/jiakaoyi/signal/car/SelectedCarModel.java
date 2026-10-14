package cn.mucang.android.jiakaoyi.signal.car;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/car/SelectedCarModel;", "Ljava/io/Serializable;", "()V", "code", "", "getCode", "()Ljava/lang/Integer;", "setCode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "modelName", "", "getModelName", "()Ljava/lang/String;", "setModelName", "(Ljava/lang/String;)V", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectedCarModel implements Serializable {
    private Integer code = 0;
    private String modelName;

    public final Integer getCode() {
        return this.code;
    }

    public final String getModelName() {
        return this.modelName;
    }

    public final void setCode(Integer num) {
        this.code = num;
    }

    public final void setModelName(String str) {
        this.modelName = str;
    }
}
