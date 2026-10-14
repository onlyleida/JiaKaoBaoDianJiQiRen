package cn.mucang.android.jiakaoyi.hpmap.view.bg;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public enum FenceProject {
    None(0, "", null),
    Bumper(1, "防撞杆", get(-340698, -11184811));

    public final List<Integer> colors;
    public final int type;
    public final String typeName;

    FenceProject(int i, String str, List list) {
        this.type = i;
        this.typeName = str;
        this.colors = list;
    }

    private static List<Integer> get(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        return arrayList;
    }

    public static FenceProject parse(int i) {
        for (FenceProject fenceProject : values()) {
            if (fenceProject.type == i) {
                return fenceProject;
            }
        }
        return None;
    }
}
