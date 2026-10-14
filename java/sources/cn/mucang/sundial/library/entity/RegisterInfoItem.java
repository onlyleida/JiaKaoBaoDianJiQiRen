package cn.mucang.sundial.library.entity;

import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/entity/RegisterInfoItem;", "", "", "label", "Ljava/lang/String;", "getLabel", "()Ljava/lang/String;", "", "maxLength", "I", "getMaxLength", "()I", "input", "getInput", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class RegisterInfoItem {
    private final String input;
    private final String label;
    private final int maxLength;

    public RegisterInfoItem(String label, String str, int i) {
        r.e(label, "label");
        this.label = label;
        this.input = str;
        this.maxLength = i;
    }

    public final String getInput() {
        return this.input;
    }

    public final String getLabel() {
        return this.label;
    }

    public final int getMaxLength() {
        return this.maxLength;
    }

    public /* synthetic */ RegisterInfoItem(String str, String str2, int i, int i2, o oVar) {
        this(str, str2, (i2 & 4) != 0 ? -1 : i);
    }
}
