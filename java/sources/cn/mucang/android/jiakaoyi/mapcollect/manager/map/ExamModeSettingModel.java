package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u001c\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "selectLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "", "getSelectLiveData", "()Landroidx/lifecycle/MutableLiveData;", "loadSelectPath", "", "examSiteId", "", "saveSelectPath", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamModeSettingModel extends LoadingViewModel {
    private final androidx.lifecycle.z<List<String>> c = new androidx.lifecycle.z<>();

    public final androidx.lifecycle.z<List<String>> i() {
        return this.c;
    }

    public final void j(long j) {
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), kotlinx.coroutines.w0.b(), null, new ExamModeSettingModel$loadSelectPath$1(j, this, null), 2, null);
    }

    public final void k(long j, List<String> content) {
        kotlin.jvm.internal.r.e(content, "content");
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), kotlinx.coroutines.w0.b(), null, new ExamModeSettingModel$saveSelectPath$1(j, content, null), 2, null);
    }
}
