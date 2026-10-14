package cn.mucang.android.core.callphone;

import android.text.TextUtils;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PhoneCallRequest implements Serializable {
    private long callTime;
    private String extra;
    private String group;
    private String label;
    private boolean needConfirm;
    private String phone;
    private long requestTime;
    private String source;
    private boolean tryCallFirst;

    protected PhoneCallRequest() {
        this.requestTime = System.currentTimeMillis();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneCallRequest)) {
            return false;
        }
        PhoneCallRequest phoneCallRequest = (PhoneCallRequest) obj;
        return this.phone.equals(phoneCallRequest.phone) && this.requestTime == phoneCallRequest.requestTime;
    }

    public long getCallTime() {
        return this.callTime;
    }

    public String getExtra() {
        return this.extra;
    }

    public String getGroup() {
        return this.group;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPhone() {
        return this.phone;
    }

    public long getRequestTime() {
        return this.requestTime;
    }

    public String getSource() {
        return this.source;
    }

    public int hashCode() {
        return (this.phone.hashCode() * 31) + ((int) this.requestTime);
    }

    public boolean isNeedConfirm() {
        return this.needConfirm;
    }

    @Deprecated
    public boolean isTryCallFirst() {
        return this.tryCallFirst;
    }

    public void setCallTime(long j) {
        this.callTime = j;
    }

    public void setExtra(String str) {
        this.extra = str;
    }

    public void setGroup(String str) {
        this.group = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setNeedConfirm(boolean z) {
        this.needConfirm = z;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setRequestTime(long j) {
        this.requestTime = j;
    }

    public void setSource(String str) {
        this.source = str;
    }

    @Deprecated
    public void setTryCallFirst(boolean z) {
        this.tryCallFirst = z;
    }

    public PhoneCallRequest(String str, String str2, String str3) {
        this(str, str2, str3, null);
    }

    public PhoneCallRequest(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, null);
    }

    public PhoneCallRequest(String str, String str2, String str3, String str4, String str5) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.phone = str;
            this.group = str2;
            this.source = str3;
            this.label = str4;
            this.extra = str5;
            this.requestTime = System.currentTimeMillis();
            return;
        }
        throw new IllegalArgumentException("phonenumber, group and source must not be NULL");
    }

    public PhoneCallRequest(PhoneCallRequest phoneCallRequest) {
        this.phone = phoneCallRequest.phone;
        this.group = phoneCallRequest.group;
        this.source = phoneCallRequest.source;
        this.label = phoneCallRequest.label;
        this.callTime = phoneCallRequest.callTime;
        this.extra = phoneCallRequest.extra;
        this.needConfirm = phoneCallRequest.needConfirm;
        this.tryCallFirst = phoneCallRequest.tryCallFirst;
        this.requestTime = phoneCallRequest.requestTime;
    }
}
