.class public abstract Lcn/mucang/android/core/task/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/task/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\u0008H&R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/core/task/TaskActionExtractor;",
        "",
        "task",
        "Lcn/mucang/android/core/task/Task;",
        "(Lcn/mucang/android/core/task/Task;)V",
        "getTask",
        "()Lcn/mucang/android/core/task/Task;",
        "extractTaskAction",
        "",
        "Lcn/mucang/android/core/task/TaskAction;",
        "Lcn/mucang/android/core/task/SubTask;",
        "Companion",
        "Lcn/mucang/android/core/task/NoopExtractor;",
        "Lcn/mucang/android/core/task/DownloadExtractor;",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcn/mucang/android/core/task/g$a;


# instance fields
.field private final a:Lcn/mucang/android/core/task/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/core/task/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/task/g$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/core/task/g;->b:Lcn/mucang/android/core/task/g$a;

    return-void
.end method

.method private constructor <init>(Lcn/mucang/android/core/task/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/task/g;->a:Lcn/mucang/android/core/task/Task;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/mucang/android/core/task/Task;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/task/g;-><init>(Lcn/mucang/android/core/task/Task;)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/task/f<",
            "Lcn/mucang/android/core/task/SubTask;",
            ">;>;"
        }
    .end annotation
.end method

.method protected final b()Lcn/mucang/android/core/task/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/task/g;->a:Lcn/mucang/android/core/task/Task;

    return-object v0
.end method
