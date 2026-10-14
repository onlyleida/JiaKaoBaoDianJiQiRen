package cn.mucang.android.jiakaoyi.hpmap.view.bg;

import cn.mucang.android.jiakaoyi.hpmap.R;

/* JADX INFO: loaded from: classes2.dex */
public enum OutProject {
    Black(0, "深色", R.color.map_bg_black),
    Gray(1, "灰色", R.color.map_bg_gray),
    Lawn(2, "绿草坪", R.color.out_project_lawn),
    GrayCement(3, "灰色水泥地", R.color.out_project_grayCement);

    public final int color;
    public final int type;
    public final String typeName;

    OutProject(int i, String str, int i2) {
        this.type = i;
        this.typeName = str;
        this.color = i2;
    }

    public static OutProject parse(int i) {
        for (OutProject outProject : values()) {
            if (outProject.type == i) {
                return outProject;
            }
        }
        return Black;
    }
}
