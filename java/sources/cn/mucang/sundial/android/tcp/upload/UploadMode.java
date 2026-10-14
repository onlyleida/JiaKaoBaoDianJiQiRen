package cn.mucang.sundial.android.tcp.upload;

/* JADX INFO: loaded from: classes5.dex */
public enum UploadMode {
    SERVER_ORDER_UPLOAD(1),
    PLATFORM_QUERY(2),
    TERMINAL_TAKE(129),
    STOP_TO_UPLOAD(255),
    TMP_SAVE_LOCAL(-1);

    int value;

    UploadMode(int i) {
        this.value = i;
    }

    public int valueOf() {
        return this.value;
    }
}
