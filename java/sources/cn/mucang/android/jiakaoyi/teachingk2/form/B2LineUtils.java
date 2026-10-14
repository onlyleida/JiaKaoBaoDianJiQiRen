package cn.mucang.android.jiakaoyi.teachingk2.form;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.form.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/form/B2LineUtils;", "", "()V", "b2LineList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;", "step", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class B2LineUtils {
    public static final List<UnityShowLine> a(int i) {
        if (i == Step.B2_CeFangTingChe.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line18, UnityShowLine.Line23, UnityShowLine.Line34, UnityShowLine.Line36, UnityShowLine.Line45, UnityShowLine.Line56, UnityShowLine.Line67, UnityShowLine.Line78);
        }
        if (i == Step.B2_ZhiJiaoZhuanWan.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line16, UnityShowLine.Line23, UnityShowLine.Line34, UnityShowLine.Line36, UnityShowLine.Line45, UnityShowLine.Line56);
        }
        if (i == Step.B2_ShangPoQiBu.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line19, UnityShowLine.Line210, UnityShowLine.Line34, UnityShowLine.Line56, UnityShowLine.Line78, UnityShowLine.Line910);
        }
        if ((i == Step.B2_SQuXian.type || i == Step.B2_ShiHuaLuMian.type) || i == Step.B2_ChunHuaLu.type) {
            return u.m(UnityShowLine.LeftLine, UnityShowLine.RightLine);
        }
        if (i == Step.B2_ZhaiLuDiaoTou.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line14, UnityShowLine.Line23, UnityShowLine.Line34);
        }
        if (i == Step.B2_JinJiQingKuang.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line26, UnityShowLine.Line34, UnityShowLine.Line56);
        }
        if (i == Step.B2_SuiDao.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line34);
        }
        if (i == Step.B2_ZhuangKao.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line110, UnityShowLine.Line23, UnityShowLine.Line34, UnityShowLine.Line36, UnityShowLine.Line37, UnityShowLine.Line45, UnityShowLine.Line48, UnityShowLine.Line56, UnityShowLine.Line58, UnityShowLine.Line67, UnityShowLine.Line78, UnityShowLine.Line79, UnityShowLine.Line910);
        }
        if (i == Step.B2_DanBian.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line112, UnityShowLine.Line211, UnityShowLine.Line1112);
        }
        if (i == Step.B2_XianKuan.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line110, UnityShowLine.Line29, UnityShowLine.Line34, UnityShowLine.Line56, UnityShowLine.Line78, UnityShowLine.Line910);
        }
        if (i == Step.B2_ZhangAi.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line110, UnityShowLine.Line29, UnityShowLine.Line910);
        }
        if (i == Step.B2_QiFu.type) {
            return u.m(UnityShowLine.Line12, UnityShowLine.Line112, UnityShowLine.Line211, UnityShowLine.Line34, UnityShowLine.Line56, UnityShowLine.Line78, UnityShowLine.Line910, UnityShowLine.Line1112);
        }
        if (i == Step.B2_ShanLu.type) {
            return u.m(UnityShowLine.LLine, UnityShowLine.MLine, UnityShowLine.RLine);
        }
        return i == Step.B2_GaoSu.type ? u.m(UnityShowLine.Line12, UnityShowLine.Line13, UnityShowLine.Line24, UnityShowLine.Line34, UnityShowLine.Line38, UnityShowLine.Line45, UnityShowLine.Line56, UnityShowLine.Line67, UnityShowLine.Line78, UnityShowLine.Line710, UnityShowLine.Line89, UnityShowLine.Line910, UnityShowLine.LLine, UnityShowLine.RLine) : u.j();
    }
}
