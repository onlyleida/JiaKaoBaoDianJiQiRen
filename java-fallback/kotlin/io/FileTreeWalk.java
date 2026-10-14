package kotlin.io;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.b.p;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0089\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u00128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\bJ \u0010\f\u001a\u00020\u00002\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R@\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", TtmlNode.START, "direction", "Lkotlin/io/FileWalkDirection;", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "onEnter", "Lkotlin/Function1;", "", "onLeave", "", "onFail", "Lkotlin/Function2;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "f", "Ljava/io/IOException;", "e", "maxDepth", "", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "iterator", "", "depth", "function", "DirectoryState", "FileTreeWalkIterator", "WalkState", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public final class e implements kotlin.sequences.h<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f14635a;
    private final FileWalkDirection b;
    private final kotlin.jvm.b.l<File, Boolean> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.jvm.b.l<File, v> f14636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p<File, IOException, v> f14637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14638f;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootDir", "Ljava/io/File;", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static abstract class a extends c {
        public a(File r2) {
            r.e(r2, "rootDir");
            super(r2);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk;)V", "state", "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private final class b extends kotlin.collections.b<File> {
        private final ArrayDeque<c> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ e f14639d;

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "failed", "", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        private final class a extends a {
            private boolean b;
            private File[] c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f14640d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f14641e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ b f14642f;

            public a(b r2, File r3) {
                r.e(r3, "rootDir");
                this.f14642f = r2;
                super(r3);
            }

            @Override // kotlin.io.e.c
            public File b() {
                if (this.f14641e == false) goto L5;
            L17:
                File[] r0 = this.c;
                if (r0 == null) goto L24;
                int r3 = this.f14640d;
                r.c(r0);
                if (r3 >= r0.length) goto L24;
                File[] r1 = this.c;
                r.c(r1);
                int r2 = this.f14640d;
                this.f14640d = r2 + 1;
                return r1[r2];
            L24:
                if (this.b == true) goto L27;
                this.b = true;
                return a();
            L27:
                kotlin.jvm.b.l r4 = e.f(this.f14642f.f14639d);
                if (r4 == null) goto L30;
                v r5 = (v) r4.invoke(a());
            L30:
                return null;
            L5:
                if (this.c != null) goto L17;
                kotlin.jvm.b.l r6 = e.d(this.f14642f.f14639d);
                if (r6 != null) goto L9;
            L11:
                File[] r7 = a().listFiles();
                this.c = r7;
                if (r7 != null) goto L17;
                p r8 = e.e(this.f14642f.f14639d);
                if (r8 == null) goto L16;
                v r9 = (v) r8.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
            L16:
                this.f14641e = true;
                goto L17
            L9:
                if (((Boolean) r6.invoke(a())).booleanValue() == true) goto L11;
                return null;
            }
        }

        /* JADX INFO: renamed from: kotlin.io.e$b$b, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootFile", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "visited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        private final class C0330b extends c {
            private boolean b;

            public C0330b(b r1, File r2) {
                r.e(r2, "rootFile");
                super(r2);
            }

            @Override // kotlin.io.e.c
            public File b() {
                if (this.b == false) goto L6;
                return null;
            L6:
                this.b = true;
                return a();
            }
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        private final class c extends a {
            private boolean b;
            private File[] c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f14643d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ b f14644e;

            public c(b r2, File r3) {
                r.e(r3, "rootDir");
                this.f14644e = r2;
                super(r3);
            }

            @Override // kotlin.io.e.c
            public File b() {
                if (this.b == true) goto L11;
                kotlin.jvm.b.l r0 = e.d(this.f14644e.f14639d);
                if (r0 != null) goto L7;
            L9:
                this.b = true;
                return a();
            L7:
                if (((Boolean) r0.invoke(a())).booleanValue() == true) goto L9;
                return null;
            L11:
                File[] r1 = this.c;
                if (r1 == null) goto L21;
                int r2 = this.f14643d;
                r.c(r1);
                if (r2 < r1.length) goto L21;
                kotlin.jvm.b.l r3 = e.f(this.f14644e.f14639d);
                if (r3 == null) goto L19;
                v r4 = (v) r3.invoke(a());
            L19:
                return null;
            L21:
                if (this.c != null) goto L35;
                File[] r5 = a().listFiles();
                this.c = r5;
                if (r5 != null) goto L27;
                p r6 = e.e(this.f14644e.f14639d);
                if (r6 == null) goto L27;
                v r7 = (v) r6.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
            L27:
                File[] r8 = this.c;
                if (r8 == null) goto L31;
                r.c(r8);
                if (r8.length != 0) goto L35;
            L31:
                kotlin.jvm.b.l r9 = e.f(this.f14644e.f14639d);
                if (r9 == null) goto L34;
                v r10 = (v) r9.invoke(a());
            L34:
                return null;
            L35:
                File[] r11 = this.c;
                r.c(r11);
                int r12 = this.f14643d;
                this.f14643d = r12 + 1;
                return r11[r12];
            }
        }

        public b(e r3) {
            this.f14639d = r3;
            ArrayDeque<c> r0 = new ArrayDeque();
            this.c = r0;
            if (e.g(r3).isDirectory() == false) goto L6;
            r0.push(i(e.g(r3)));
            return;
        L6:
            if (e.g(r3).isFile() == false) goto L8;
            r0.push(new C0330b(this, e.g(r3)));
            return;
        L8:
            e();
        }

        private final a i(File r3) {
            FileWalkDirection r0 = e.b(this.f14639d);
            int r1 = f.f14646a[r0.ordinal()];
            if (r1 == 1) goto L10;
            if (r1 != 2) goto L8;
            return new a(this, r3);
        L8:
            throw new NoWhenBranchMatchedException();
        L10:
            return new c(this, r3);
        }

        private final File j() {
        L2:
            c r0 = this.c.peek();
            if (r0 == null) goto L16;
            File r1 = r0.b();
            if (r1 == null) goto L6;
            if (r.a(r1, r0.a()) == true) goto L15;
            if (r1.isDirectory() == false) goto L15;
            if (this.c.size() >= e.c(this.f14639d)) goto L15;
            this.c.push(i(r1));
        L15:
            return r1;
        L6:
            this.c.pop();
            goto L2
        L16:
            return null;
        }

        @Override // kotlin.collections.b
        protected void c() {
            File r0 = j();
            if (r0 == null) goto L5;
            f(r0);
            return;
        L5:
            e();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$WalkState;", "", "root", "Ljava/io/File;", "(Ljava/io/File;)V", "getRoot", "()Ljava/io/File;", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f14645a;

        public c(File r2) {
            r.e(r2, "root");
            this.f14645a = r2;
        }

        public final File a() {
            return this.f14645a;
        }

        public abstract File b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private e(File r1, FileWalkDirection r2, kotlin.jvm.b.l<? super File, Boolean> r3, kotlin.jvm.b.l<? super File, v> r4, p<? super File, ? super IOException, v> r5, int r6) {
        this.f14635a = r1;
        this.b = r2;
        this.c = r3;
        this.f14636d = r4;
        this.f14637e = r5;
        this.f14638f = r6;
    }

    public static final /* synthetic */ FileWalkDirection b(e r0) {
        return r0.b;
    }

    public static final /* synthetic */ int c(e r0) {
        return r0.f14638f;
    }

    public static final /* synthetic */ kotlin.jvm.b.l d(e r0) {
        return r0.c;
    }

    public static final /* synthetic */ p e(e r0) {
        return r0.f14637e;
    }

    public static final /* synthetic */ kotlin.jvm.b.l f(e r0) {
        return r0.f14636d;
    }

    public static final /* synthetic */ File g(e r0) {
        return r0.f14635a;
    }

    @Override // kotlin.sequences.h
    public Iterator<File> iterator() {
        return new b(this);
    }

    /* synthetic */ e(File r8, FileWalkDirection r9, kotlin.jvm.b.l r10, kotlin.jvm.b.l r11, p r12, int r13, int r14, o r15) {
        if ((r14 & 2) == 0) goto L5;
        r9 = FileWalkDirection.TOP_DOWN;
    L5:
        FileWalkDirection r2 = r9;
        if ((r14 & 32) == 0) goto L8;
        int r6 = Integer.MAX_VALUE;
    L9:
        this(r8, r2, r10, r11, r12, r6);
        return;
    L8:
        r6 = r13;
        goto L9
    }

    public e(File r11, FileWalkDirection r12) {
        r.e(r11, TtmlNode.START);
        r.e(r12, "direction");
        this(r11, r12, null, null, null, 0, 32, null);
    }
}
