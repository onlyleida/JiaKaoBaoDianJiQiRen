.class Lcn/mucang/android/core/task/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final TYPE_DOWNLOAD:I


# instance fields
.field private subTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taskId:J

.field private type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/core/task/Task;->type:I

    return-void
.end method


# virtual methods
.method public getSubTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/task/Task;->subTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/task/Task;->taskId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/task/Task;->type:I

    return v0
.end method

.method public setSubTaskList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/task/Task;->subTaskList:Ljava/util/List;

    return-void
.end method

.method public setTaskId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/task/Task;->taskId:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/task/Task;->type:I

    return-void
.end method
