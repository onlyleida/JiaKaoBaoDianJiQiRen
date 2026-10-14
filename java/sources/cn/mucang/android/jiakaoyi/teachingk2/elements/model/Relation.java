package cn.mucang.android.jiakaoyi.teachingk2.elements.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public enum Relation implements Serializable {
    BigThan("大于"),
    Equal("等于"),
    NotEqual("不等于"),
    SmallThan("小于"),
    Between("范围内"),
    OutOfRange("范围外");

    public final String relationName;

    Relation(String str) {
        this.relationName = str;
    }
}
