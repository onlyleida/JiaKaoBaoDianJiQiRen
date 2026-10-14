package cn.mucang.sundial.library.util;

import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\t¨\u0006\r"}, d2 = {"Lcn/mucang/sundial/library/util/SubjectUtil;", "", "", "index", "index2Subject", "(I)I", SpeechConstant.SUBJECT, "", "subject2name", "(I)Ljava/lang/String;", "subject2param", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SubjectUtil {
    public static final SubjectUtil INSTANCE = new SubjectUtil();

    private SubjectUtil() {
    }

    public final int index2Subject(int index) {
        return index == 0 ? 2 : 3;
    }

    public final String subject2name(int subject) {
        if (subject != 2) {
            return subject != 3 ? "" : "科目三";
        }
        return "科目二";
    }

    public final String subject2param(int subject) {
        if (subject != 2) {
            return subject != 3 ? "" : "Subject3";
        }
        return "Subject2";
    }
}
