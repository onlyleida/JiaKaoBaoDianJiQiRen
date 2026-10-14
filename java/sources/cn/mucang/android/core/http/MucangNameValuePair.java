package cn.mucang.android.core.http;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MucangNameValuePair implements Serializable {
    private String name;
    private String value;

    public MucangNameValuePair(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }
}
