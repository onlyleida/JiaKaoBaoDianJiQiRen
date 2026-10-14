.class public Lcn/mucang/android/download/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/client/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/os/Messenger;

.field private c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcn/mucang/android/download/client/a$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/download/client/a$a;-><init>(Lcn/mucang/android/download/client/a;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/mucang/android/download/client/a;->b:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadProgress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d(Lcn/mucang/android/download/DownloadStatusChange;)V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/download/client/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/download/client/a;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/download/client/a;->b:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/download/client/a;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/download/client/a;->a:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcn/mucang/android/download/client/a;->c:Landroid/os/Messenger;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/download/client/a;->b:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/download/client/a;->c:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/download/client/a;->a:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/download/client/a;->a:Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/download/client/a;->a:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/download/client/a;->c:Landroid/os/Messenger;

    return-void
.end method
