package cn.mucang.jiakaoyi.uilib.record;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;", "Ljava/io/Serializable;", "()V", "deductDetails", "", "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;", "getDeductDetails", "()Ljava/util/List;", "setDeductDetails", "(Ljava/util/List;)V", "orderNo", "", "getOrderNo", "()Ljava/lang/String;", "setOrderNo", "(Ljava/lang/String;)V", "score", "", "getScore", "()I", "setScore", "(I)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UploadRecordModel implements Serializable {
    private List<DeductRecordModel> deductDetails;
    private String orderNo;
    private int score;

    public final List<DeductRecordModel> getDeductDetails() {
        return this.deductDetails;
    }

    public final String getOrderNo() {
        return this.orderNo;
    }

    public final int getScore() {
        return this.score;
    }

    public final void setDeductDetails(List<DeductRecordModel> list) {
        this.deductDetails = list;
    }

    public final void setOrderNo(String str) {
        this.orderNo = str;
    }

    public final void setScore(int i) {
        this.score = i;
    }
}
