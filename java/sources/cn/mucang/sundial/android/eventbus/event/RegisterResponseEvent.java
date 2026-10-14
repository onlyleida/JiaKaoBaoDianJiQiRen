package cn.mucang.sundial.android.eventbus.event;

/* JADX INFO: loaded from: classes5.dex */
public class RegisterResponseEvent {
    private final String errorMessage;
    private final boolean success;

    public RegisterResponseEvent(boolean z, String str) {
        this.success = z;
        this.errorMessage = str;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public boolean isSuccess() {
        return this.success;
    }
}
