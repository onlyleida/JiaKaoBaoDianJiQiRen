package cn.mucang.android.jiakaoyi.teachingk2.form;

import cn.mucang.android.jiakaoyi.teachingk2.form.model.AutoTeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.PictureModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.TextTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VideoModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    public static Class<? extends FormModel> a(int i) {
        if (i == 1) {
            return TextTipModel.class;
        }
        if (i == 2) {
            return VoiceModel.class;
        }
        if (i == 3) {
            return PictureModel.class;
        }
        if (i == 4) {
            return VideoModel.class;
        }
        if (i == 5) {
            return LineTipModel.class;
        }
        if (i != 8) {
            return null;
        }
        return AutoTeachModel.class;
    }
}
