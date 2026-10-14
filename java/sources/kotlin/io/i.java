package kotlin.io;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0007"}, d2 = {"walk", "Lkotlin/io/FileTreeWalk;", "Ljava/io/File;", "direction", "Lkotlin/io/FileWalkDirection;", "walkBottomUp", "walkTopDown", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/io/FilesKt")
class i extends FilesKt__FileReadWriteKt {
    public static final FileTreeWalk g(File walk, FileWalkDirection direction) {
        r.e(walk, "$this$walk");
        r.e(direction, "direction");
        return new FileTreeWalk(walk, direction);
    }

    public static final FileTreeWalk h(File walkBottomUp) {
        r.e(walkBottomUp, "$this$walkBottomUp");
        return g(walkBottomUp, FileWalkDirection.BOTTOM_UP);
    }
}
