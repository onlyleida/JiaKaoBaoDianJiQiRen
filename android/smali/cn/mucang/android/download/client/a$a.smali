.class Lcn/mucang/android/download/client/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/client/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/client/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/client/a$a;->a:Lcn/mucang/android/download/client/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MSG_DATA_REMOVED"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 4
    iget-object p1, p0, Lcn/mucang/android/download/client/a$a;->a:Lcn/mucang/android/download/client/a;

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/a;->c(J)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 6
    const-class v0, Lcn/mucang/android/download/DownloadStatusChange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "MSG_DATA_STATUS_CHANGE"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/download/DownloadStatusChange;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lcn/mucang/android/download/client/a$a;->a:Lcn/mucang/android/download/client/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/client/a;->d(Lcn/mucang/android/download/DownloadStatusChange;)V

    .line 9
    iget v0, p1, Lcn/mucang/android/download/DownloadStatusChange;->c:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcn/mucang/android/download/client/a$a;->a:Lcn/mucang/android/download/client/a;

    iget-wide v1, p1, Lcn/mucang/android/download/DownloadStatusChange;->a:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/download/client/a;->a(J)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 12
    const-class v0, Lcn/mucang/android/download/DownloadProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "MSG_DATA_PROGRESS"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object v0, p0, Lcn/mucang/android/download/client/a$a;->a:Lcn/mucang/android/download/client/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/client/a;->b(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method
