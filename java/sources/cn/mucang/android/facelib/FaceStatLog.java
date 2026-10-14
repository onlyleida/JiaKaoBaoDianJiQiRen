package cn.mucang.android.facelib;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.facelib.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/facelib/FaceStatLog;", "", "()V", "Companion", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceStatLog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3037a = new a(null);
    private static int b;

    /* JADX INFO: renamed from: cn.mucang.android.facelib.s$a */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fR$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/facelib/FaceStatLog$Companion;", "", "()V", "matchCount", "", "getMatchCount$annotations", "getMatchCount", "()I", "setMatchCount", "(I)V", "stat", "", "loginName", "", "isMatched", "", "matchedName", "success", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final int a() {
            return FaceStatLog.b;
        }

        public final void b(int i) {
            FaceStatLog.b = i;
        }
    }
}
