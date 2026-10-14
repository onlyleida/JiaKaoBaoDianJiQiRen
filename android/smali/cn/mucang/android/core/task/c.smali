.class public final Lcn/mucang/android/core/task/c;
.super Lcn/mucang/android/core/task/g;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0018\u00010\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/core/task/DownloadExtractor;",
        "Lcn/mucang/android/core/task/TaskActionExtractor;",
        "task",
        "Lcn/mucang/android/core/task/Task;",
        "(Lcn/mucang/android/core/task/Task;)V",
        "extractTaskAction",
        "",
        "Lcn/mucang/android/core/task/TaskAction;",
        "Lcn/mucang/android/core/task/SubTask$DownloadSubTask;",
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/task/f<",
            "Lcn/mucang/android/core/task/SubTask$DownloadSubTask;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/task/g;->b()Lcn/mucang/android/core/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/task/Task;->getSubTaskList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/String;

    .line 5
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 6
    const-class v4, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;

    if-eqz v3, :cond_1

    .line 7
    new-instance v4, Lcn/mucang/android/core/task/b;

    invoke-virtual {p0}, Lcn/mucang/android/core/task/g;->b()Lcn/mucang/android/core/task/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/core/task/Task;->getTaskId()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v3}, Lcn/mucang/android/core/task/b;-><init>(JLcn/mucang/android/core/task/SubTask$DownloadSubTask;)V

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 8
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v1

    :cond_2
    check-cast v3, Lcn/mucang/android/core/task/b;

    .line 10
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v2}, Lkotlin/collections/s;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :goto_3
    return-object v1
.end method
