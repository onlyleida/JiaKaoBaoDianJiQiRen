.class public final Lcn/mucang/android/core/task/d;
.super Lcn/mucang/android/core/task/g;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/core/task/NoopExtractor;",
        "Lcn/mucang/android/core/task/TaskActionExtractor;",
        "task",
        "Lcn/mucang/android/core/task/Task;",
        "(Lcn/mucang/android/core/task/Task;)V",
        "extractTaskAction",
        "",
        "Lcn/mucang/android/core/task/TaskAction;",
        "Lcn/mucang/android/core/task/SubTask;",
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


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/task/Task;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/task/g;-><init>(Lcn/mucang/android/core/task/Task;Lkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/task/f<",
            "Lcn/mucang/android/core/task/SubTask;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
