package cn.mucang.comet.common.data;

/* JADX INFO: loaded from: classes4.dex */
public enum ClaimTypeEnum {
    CLAIM_TYPE_SLAVE(10),
    CLAIM_TYPE_PROXY(20);

    private int type;

    ClaimTypeEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
