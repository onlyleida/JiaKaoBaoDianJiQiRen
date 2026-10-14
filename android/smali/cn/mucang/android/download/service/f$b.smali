.class Lcn/mucang/android/download/service/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/service/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcn/mucang/android/download/service/f;

.field private b:Z


# direct methods
.method constructor <init>(Lcn/mucang/android/download/service/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/download/service/f$b;->a:Lcn/mucang/android/download/service/f;

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/download/service/f$b;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/download/service/f$b;->a:Lcn/mucang/android/download/service/f;

    invoke-static {v1}, Lcn/mucang/android/download/service/f;->d(Lcn/mucang/android/download/service/f;)[Lcn/mucang/android/download/service/f$d;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3
    invoke-virtual {v5}, Lcn/mucang/android/download/service/f$d;->f()Lcn/mucang/android/download/service/f$c;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4
    new-instance v6, Lcn/mucang/android/download/DownloadProgress;

    invoke-virtual {v5}, Lcn/mucang/android/download/service/f$d;->f()Lcn/mucang/android/download/service/f$c;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-direct {v6, v5}, Lcn/mucang/android/download/DownloadProgress;-><init>(Lcn/mucang/android/download/DownloadEntity;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcn/mucang/android/download/service/f$b;->a:Lcn/mucang/android/download/service/f;

    invoke-static {v1}, Lcn/mucang/android/download/service/f;->e(Lcn/mucang/android/download/service/f;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "MSG_DATA_PROGRESS"

    .line 8
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/download/service/f$b;->b:Z

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcn/mucang/android/download/service/f$b;->a:Lcn/mucang/android/download/service/f;

    invoke-static {v0}, Lcn/mucang/android/download/service/f;->e(Lcn/mucang/android/download/service/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/download/service/f$b;

    iget-object v2, p0, Lcn/mucang/android/download/service/f$b;->a:Lcn/mucang/android/download/service/f;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/download/service/f$b;-><init>(Lcn/mucang/android/download/service/f;Z)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
