package cn.mucang.android.jiakaoyi.hpmap.view.bg;

import cn.mucang.android.jiakaoyi.hpmap.R;

/* JADX INFO: loaded from: classes2.dex */
public enum InProject {
    None(0, "", R.color.map_normal_bg),
    Cement(1, "深色水泥地", R.color.in_project_cement),
    Tar(2, "柏油地", R.color.in_project_tar),
    GrayCement(3, "灰色水泥地", R.color.out_project_grayCement);

    public final int color;
    public final int type;
    public final String typeName;

    InProject(int i, String str, int i2) {
        this.type = i;
        this.typeName = str;
        this.color = i2;
    }

    public static InProject parse(int i) {
        for (InProject inProject : values()) {
            if (inProject.type == i) {
                return inProject;
            }
        }
        return None;
    }
}
