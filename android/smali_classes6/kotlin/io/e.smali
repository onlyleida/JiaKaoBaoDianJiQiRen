.class public final Lkotlin/io/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/e$c;,
        Lkotlin/io/e$a;,
        Lkotlin/io/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/h<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0089\u0001\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008\u00128\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0008J \u0010\u000c\u001a\u00020\u00002\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R@\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk;",
        "Lkotlin/sequences/Sequence;",
        "Ljava/io/File;",
        "start",
        "direction",
        "Lkotlin/io/FileWalkDirection;",
        "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V",
        "onEnter",
        "Lkotlin/Function1;",
        "",
        "onLeave",
        "",
        "onFail",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "f",
        "Ljava/io/IOException;",
        "e",
        "maxDepth",
        "",
        "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V",
        "iterator",
        "",
        "depth",
        "function",
        "DirectoryState",
        "FileTreeWalkIterator",
        "WalkState",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lkotlin/io/FileWalkDirection;

.field private final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/io/File;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V
    .locals 10

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v9}, Lkotlin/io/e;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;IILkotlin/jvm/internal/o;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/io/FileWalkDirection;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/v;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/e;->a:Ljava/io/File;

    iput-object p2, p0, Lkotlin/io/e;->b:Lkotlin/io/FileWalkDirection;

    iput-object p3, p0, Lkotlin/io/e;->c:Lkotlin/jvm/b/l;

    iput-object p4, p0, Lkotlin/io/e;->d:Lkotlin/jvm/b/l;

    iput-object p5, p0, Lkotlin/io/e;->e:Lkotlin/jvm/b/p;

    iput p6, p0, Lkotlin/io/e;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;IILkotlin/jvm/internal/o;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 2
    sget-object p2, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lkotlin/io/e;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;I)V

    return-void
.end method

.method public static final synthetic b(Lkotlin/io/e;)Lkotlin/io/FileWalkDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/e;->b:Lkotlin/io/FileWalkDirection;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/io/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/io/e;->f:I

    return p0
.end method

.method public static final synthetic d(Lkotlin/io/e;)Lkotlin/jvm/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/e;->c:Lkotlin/jvm/b/l;

    return-object p0
.end method

.method public static final synthetic e(Lkotlin/io/e;)Lkotlin/jvm/b/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/e;->e:Lkotlin/jvm/b/p;

    return-object p0
.end method

.method public static final synthetic f(Lkotlin/io/e;)Lkotlin/jvm/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/e;->d:Lkotlin/jvm/b/l;

    return-object p0
.end method

.method public static final synthetic g(Lkotlin/io/e;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/e;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/io/e$b;

    invoke-direct {v0, p0}, Lkotlin/io/e$b;-><init>(Lkotlin/io/e;)V

    return-object v0
.end method
