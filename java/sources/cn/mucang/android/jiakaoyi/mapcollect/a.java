package cn.mucang.android.jiakaoyi.mapcollect;

import android.content.Intent;
import android.content.SharedPreferences;
import cn.mucang.android.core.utils.j0;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f4698a;

    public static ExamSiteModel a(Intent intent) {
        ExamSiteModel examSiteModel = (ExamSiteModel) intent.getSerializableExtra("examSiteModelKey");
        if (examSiteModel.mapData != null) {
            return examSiteModel;
        }
        if (f4698a == null) {
            f4698a = b("current_transform_data", null);
        }
        examSiteModel.mapData = f4698a;
        return examSiteModel;
    }

    private static String b(String str, String str2) {
        return j0.b("transform_map_data").getString(str, str2);
    }

    public static void c(ExamSiteModel examSiteModel, Intent intent) {
        String str = examSiteModel.mapData;
        f4698a = str;
        d("current_transform_data", str);
        intent.putExtra("examSiteModelKey", examSiteModel.copyWithoutMapData());
    }

    private static void d(String str, String str2) {
        SharedPreferences.Editor editorEdit = j0.b("transform_map_data").edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }
}
