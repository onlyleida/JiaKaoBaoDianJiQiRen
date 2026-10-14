package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B!\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007B\u0005¢\u0006\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;", "Ljava/io/Serializable;", Constant.PROTOCOL_WEBVIEW_NAME, "", "stepIdGroup", "", "", "(Ljava/lang/String;Ljava/util/List;)V", "()V", "businessId", "getBusinessId", "()I", "setBusinessId", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getStepIdGroup", "()Ljava/util/List;", "setStepIdGroup", "(Ljava/util/List;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainStepModel implements Serializable {
    private transient int businessId;
    private String name;
    private List<Integer> stepIdGroup;

    public TrainStepModel() {
    }

    public final int getBusinessId() {
        return this.businessId;
    }

    public final String getName() {
        return this.name;
    }

    public final List<Integer> getStepIdGroup() {
        return this.stepIdGroup;
    }

    public final void setBusinessId(int i) {
        this.businessId = i;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setStepIdGroup(List<Integer> list) {
        this.stepIdGroup = list;
    }

    public TrainStepModel(String str, List<Integer> list) {
        this();
        this.name = str;
        this.stepIdGroup = list;
    }
}
