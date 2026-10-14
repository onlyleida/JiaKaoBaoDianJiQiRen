package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "f", "Ljava/io/File;", "e", "Ljava/io/IOException;", "invoke"}, k = 3, mv = {1, 5, 1})
final class FilesKt__UtilsKt$copyRecursively$2 extends Lambda implements Function2<File, IOException, v> {
    final /* synthetic */ Function2 $onError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FilesKt__UtilsKt$copyRecursively$2(Function2 function2) {
        super(2);
        this.$onError = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ v invoke(File file, IOException iOException) throws TerminateException {
        invoke2(file, iOException);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(File f2, IOException e2) throws TerminateException {
        r.e(f2, "f");
        r.e(e2, "e");
        if (((OnErrorAction) this.$onError.invoke(f2, e2)) == OnErrorAction.TERMINATE) {
            throw new TerminateException(f2);
        }
    }
}
