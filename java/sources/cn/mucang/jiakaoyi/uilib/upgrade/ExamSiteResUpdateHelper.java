package cn.mucang.jiakaoyi.uilib.upgrade;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.voice.n;
import cn.mucang.android.jiakaoyi.framework.utils.t0;
import cn.mucang.jiakaoyi.uilib.api.ResConfigApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ResConfigInfo;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J \u0010\u0013\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tJ\"\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0002J \u0010\u001b\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;", "", "()V", "SKIN", "", "VOICE_PACK", "checkUpdateSkin", "", "examSiteId", "", "callback", "Lkotlin/Function0;", "checkUpdateVoicePack", "getSkinConfig", "Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;", "groupId", "update", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "updateSkinToEnableExamSite", Constant.PROTOCOL_WEBVIEW_NAME, "", TtmlNode.ATTR_ID, "updateVoicePack", "progressCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "updateVoicePackToEnableExamSite", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamSiteResUpdateHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExamSiteResUpdateHelper f10312a = new ExamSiteResUpdateHelper();

    private ExamSiteResUpdateHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ResConfigInfo d(long j) {
        ResConfigInfo resConfigInfoM;
        try {
            resConfigInfoM = new ResConfigApi().m(j, 1);
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o("检查到有需要更新的语音包 接口失败");
            resConfigInfoM = null;
        }
        if (resConfigInfoM != null) {
            return resConfigInfoM;
        }
        f.o("没有检查到有需要更新的语音包 ");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ResConfigInfo g(long j, final cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar) {
        try {
            ResConfigInfo resConfigInfoM = new ResConfigApi().m(j, 2);
            if (resConfigInfoM == null) {
                f.o("没有检查到有需要更新的语音包 ");
                return null;
            }
            f.o("拉取到线上配置的语音包: name " + ((Object) resConfigInfoM.getName()) + " ; configId " + resConfigInfoM.getConfigId() + " ; version " + resConfigInfoM.getVersion());
            cn.mucang.android.jiakaoyi.framework.tts.i.c.d().b(resConfigInfoM.getName(), Long.valueOf(resConfigInfoM.getConfigId()), resConfigInfoM.getVersion());
            if (cn.mucang.android.jiakaoyi.framework.tts.i.c.d().e(resConfigInfoM.getConfigId(), resConfigInfoM.getVersion())) {
                return resConfigInfoM;
            }
            String str = cn.mucang.android.jiakaoyi.framework.tts.i.b.l() + resConfigInfoM.getConfigId() + '/' + resConfigInfoM.getVersion() + '/' + ((Object) resConfigInfoM.getName()) + ".zip";
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            File fileD = new n(resConfigInfoM.getUrl(), str).d(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.b
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    ExamSiteResUpdateHelper.h(bVar, (Float) obj);
                }
            });
            if (fileD != null && fileD.exists()) {
                File parentFile = new File(str).getParentFile();
                if (parentFile != null) {
                    try {
                        t0.f(fileD.getPath(), parentFile.getPath());
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        parentFile.delete();
                        f.o(r.m("解压失败：", "语音包"));
                        u.h(r.m("解压失败：", "语音包"));
                    }
                }
                fileD.delete();
                return resConfigInfoM;
            }
            f.o(r.m("下载失败：", "语音包"));
            u.h(r.m("下载失败：", "语音包"));
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            f.o("查询考场：" + j + " 语音包" + ResultCode.MSG_FAILED);
            u.h("查询考场：" + j + " 语音包" + ResultCode.MSG_FAILED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.framework.h.b bVar, Float f2) {
        if (bVar == null) {
            return;
        }
        bVar.callback(f2);
    }

    public final void c(long j, Function0<v> function0) {
        g.b(j0.a(w0.b()), null, null, new ExamSiteResUpdateHelper$checkUpdateSkin$1(j, function0, null), 3, null);
    }

    public final void f(ExamSiteModel examSiteModel, String name, long j) {
        r.e(name, "name");
        if (examSiteModel == null) {
            return;
        }
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        boolean z = false;
        if (examSiteModelD != null && examSiteModelD.examSiteId == examSiteModel.examSiteId) {
            z = true;
        }
        if (z) {
            examSiteModelD.skinName = name;
            examSiteModelD.skinId = j;
            ExamSiteUtil.r(examSiteModelD);
        }
    }

    public final void i(ExamSiteModel examSiteModel, String name, long j) {
        r.e(name, "name");
        if (examSiteModel == null) {
            return;
        }
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        boolean z = false;
        if (examSiteModelD != null && examSiteModelD.examSiteId == examSiteModel.examSiteId) {
            z = true;
        }
        if (z) {
            examSiteModelD.voicePackageName = name;
            examSiteModelD.voicePackageId = j;
            ExamSiteUtil.r(examSiteModelD);
        }
    }
}
