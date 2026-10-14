package kotlin.io;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.sequences.Sequence;
import kotlin.v;

/* JADX INFO: renamed from: kotlin.io.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0089\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u00128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\bJ \u0010\f\u001a\u00020\u00002\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R@\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", TtmlNode.START, "direction", "Lkotlin/io/FileWalkDirection;", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "onEnter", "Lkotlin/Function1;", "", "onLeave", "", "onFail", "Lkotlin/Function2;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "f", "Ljava/io/IOException;", "e", "maxDepth", "", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "iterator", "", "depth", "function", "DirectoryState", "FileTreeWalkIterator", "WalkState", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public final class FileTreeWalk implements Sequence<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f14635a;
    private final FileWalkDirection b;
    private final Function1<File, Boolean> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1<File, v> f14636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function2<File, IOException, v> f14637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14638f;

    /* JADX INFO: renamed from: kotlin.io.e$a */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootDir", "Ljava/io/File;", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File rootDir) {
            super(rootDir);
            r.e(rootDir, "rootDir");
        }
    }

    /* JADX INFO: renamed from: kotlin.io.e$b */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk;)V", "state", "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private final class b extends AbstractIterator<File> {
        private final ArrayDeque<c> c;

        /* JADX INFO: renamed from: kotlin.io.e$b$a */
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, File rootDir) {
                super(rootDir);
                r.e(rootDir, "rootDir");
                this.f14642f = bVar;
            }

            @Override // kotlin.io.FileTreeWalk.c
            public File b() {
                if (!this.f14641e && this.c == null) {
                    Function1 function1 = FileTreeWalk.this.c;
                    if (function1 != null && !((Boolean) function1.invoke(getF14645a())).booleanValue()) {
                        return null;
                    }
                    File[] fileArrListFiles = getF14645a().listFiles();
                    this.c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        Function2 function2 = FileTreeWalk.this.f14637e;
                        if (function2 != null) {
                        }
                        this.f14641e = true;
                    }
                }
                File[] fileArr = this.c;
                if (fileArr != null) {
                    int i = this.f14640d;
                    r.c(fileArr);
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.c;
                        r.c(fileArr2);
                        int i2 = this.f14640d;
                        this.f14640d = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (!this.b) {
                    this.b = true;
                    return getF14645a();
                }
                Function1 function3 = FileTreeWalk.this.f14636d;
                if (function3 != null) {
                }
                return null;
            }
        }

        /* JADX INFO: renamed from: kotlin.io.e$b$b, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootFile", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "visited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        private final class C0317b extends c {
            private boolean b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0317b(b bVar, File rootFile) {
                super(rootFile);
                r.e(rootFile, "rootFile");
            }

            @Override // kotlin.io.FileTreeWalk.c
            public File b() {
                if (this.b) {
                    return null;
                }
                this.b = true;
                return getF14645a();
            }
        }

        /* JADX INFO: renamed from: kotlin.io.e$b$c */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        private final class c extends a {
            private boolean b;
            private File[] c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f14643d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ b f14644e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(b bVar, File rootDir) {
                super(rootDir);
                r.e(rootDir, "rootDir");
                this.f14644e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x0085, code lost:
            
                if (r0.length == 0) goto L31;
             */
            @Override // kotlin.io.FileTreeWalk.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.io.File b() {
                /*
                    r10 = this;
                    boolean r0 = r10.b
                    r1 = 0
                    if (r0 != 0) goto L28
                    kotlin.io.e$b r0 = r10.f14644e
                    kotlin.io.e r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.b.l r0 = kotlin.io.FileTreeWalk.d(r0)
                    if (r0 == 0) goto L20
                    java.io.File r2 = r10.getF14645a()
                    java.lang.Object r0 = r0.invoke(r2)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L20
                    return r1
                L20:
                    r0 = 1
                    r10.b = r0
                    java.io.File r0 = r10.getF14645a()
                    return r0
                L28:
                    java.io.File[] r0 = r10.c
                    if (r0 == 0) goto L4a
                    int r2 = r10.f14643d
                    kotlin.jvm.internal.r.c(r0)
                    int r0 = r0.length
                    if (r2 >= r0) goto L35
                    goto L4a
                L35:
                    kotlin.io.e$b r0 = r10.f14644e
                    kotlin.io.e r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.b.l r0 = kotlin.io.FileTreeWalk.f(r0)
                    if (r0 == 0) goto L49
                    java.io.File r2 = r10.getF14645a()
                    java.lang.Object r0 = r0.invoke(r2)
                    kotlin.v r0 = (kotlin.v) r0
                L49:
                    return r1
                L4a:
                    java.io.File[] r0 = r10.c
                    if (r0 != 0) goto L9c
                    java.io.File r0 = r10.getF14645a()
                    java.io.File[] r0 = r0.listFiles()
                    r10.c = r0
                    if (r0 != 0) goto L7d
                    kotlin.io.e$b r0 = r10.f14644e
                    kotlin.io.e r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.b.p r0 = kotlin.io.FileTreeWalk.e(r0)
                    if (r0 == 0) goto L7d
                    java.io.File r2 = r10.getF14645a()
                    kotlin.io.AccessDeniedException r9 = new kotlin.io.AccessDeniedException
                    java.io.File r4 = r10.getF14645a()
                    r5 = 0
                    r7 = 2
                    r8 = 0
                    java.lang.String r6 = "Cannot list files in a directory"
                    r3 = r9
                    r3.<init>(r4, r5, r6, r7, r8)
                    java.lang.Object r0 = r0.invoke(r2, r9)
                    kotlin.v r0 = (kotlin.v) r0
                L7d:
                    java.io.File[] r0 = r10.c
                    if (r0 == 0) goto L87
                    kotlin.jvm.internal.r.c(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L9c
                L87:
                    kotlin.io.e$b r0 = r10.f14644e
                    kotlin.io.e r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.b.l r0 = kotlin.io.FileTreeWalk.f(r0)
                    if (r0 == 0) goto L9b
                    java.io.File r2 = r10.getF14645a()
                    java.lang.Object r0 = r0.invoke(r2)
                    kotlin.v r0 = (kotlin.v) r0
                L9b:
                    return r1
                L9c:
                    java.io.File[] r0 = r10.c
                    kotlin.jvm.internal.r.c(r0)
                    int r1 = r10.f14643d
                    int r2 = r1 + 1
                    r10.f14643d = r2
                    r0 = r0[r1]
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileTreeWalk.b.c.b():java.io.File");
            }
        }

        public b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.c = arrayDeque;
            if (FileTreeWalk.this.f14635a.isDirectory()) {
                arrayDeque.push(i(FileTreeWalk.this.f14635a));
            } else if (FileTreeWalk.this.f14635a.isFile()) {
                arrayDeque.push(new C0317b(this, FileTreeWalk.this.f14635a));
            } else {
                e();
            }
        }

        private final a i(File file) {
            int i = f.f14646a[FileTreeWalk.this.b.ordinal()];
            if (i == 1) {
                return new c(this, file);
            }
            if (i == 2) {
                return new a(this, file);
            }
            throw new NoWhenBranchMatchedException();
        }

        private final File j() {
            while (true) {
                c cVarPeek = this.c.peek();
                if (cVarPeek == null) {
                    return null;
                }
                File fileB = cVarPeek.b();
                if (fileB == null) {
                    this.c.pop();
                } else {
                    if (r.a(fileB, cVarPeek.getF14645a()) || !fileB.isDirectory() || this.c.size() >= FileTreeWalk.this.f14638f) {
                        return fileB;
                    }
                    this.c.push(i(fileB));
                }
            }
        }

        @Override // kotlin.collections.AbstractIterator
        protected void c() {
            File fileJ = j();
            if (fileJ != null) {
                f(fileJ);
            } else {
                e();
            }
        }
    }

    /* JADX INFO: renamed from: kotlin.io.e$c */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$WalkState;", "", "root", "Ljava/io/File;", "(Ljava/io/File;)V", "getRoot", "()Ljava/io/File;", "step", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f14645a;

        public c(File root) {
            r.e(root, "root");
            this.f14645a = root;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final File getF14645a() {
            return this.f14645a;
        }

        public abstract File b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1<? super File, Boolean> function1, Function1<? super File, v> function2, Function2<? super File, ? super IOException, v> function3, int i) {
        this.f14635a = file;
        this.b = fileWalkDirection;
        this.c = function1;
        this.f14636d = function2;
        this.f14637e = function3;
        this.f14638f = i;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<File> iterator() {
        return new b();
    }

    /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function2, Function2 function3, int i, int i2, o oVar) {
        this(file, (i2 & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection, function1, function2, function3, (i2 & 32) != 0 ? Integer.MAX_VALUE : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk(File start, FileWalkDirection direction) {
        this(start, direction, null, null, null, 0, 32, null);
        r.e(start, "start");
        r.e(direction, "direction");
    }
}
