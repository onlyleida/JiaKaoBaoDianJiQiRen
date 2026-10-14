.class public Lcn/mucang/android/core/task/TaskResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextRequestTIme:J

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/task/TaskResponse;->nextRequestTIme:J

    return-wide v0
.end method

.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/task/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/task/TaskResponse;->taskList:Ljava/util/List;

    return-object v0
.end method

.method public setNextRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/task/TaskResponse;->nextRequestTIme:J

    return-void
.end method

.method public setTaskList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/task/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/task/TaskResponse;->taskList:Ljava/util/List;

    return-void
.end method
