package cn.mucang.android.jiakaoyi.mapcollect.b.utils;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.b.b.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0014\u0010\u000f\u001a\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/utils/ExamModelUtils;", "", "()V", "exam_mode", "", "exam_mode_map_keys", "changeExamMode", "", "isExam", "", "getExamMode", "getExamModeMapKeys", "", "getKey", "key", "saveExamModeMapKeys", "keys", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamModelUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExamModelUtils f4701a = new ExamModelUtils();

    private ExamModelUtils() {
    }

    private final String c(String str) {
        return str + '_' + ExamSiteUtil.e(0L);
    }

    public final boolean a() {
        return i0.b("exam_mode", false);
    }

    public final List<String> b() {
        String strG = i0.g(c("exam_mode_map_keys"), "");
        if (TextUtils.isEmpty(strG)) {
            return null;
        }
        return JSON.parseArray(strG, String.class);
    }
}
