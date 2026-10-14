.class Lcn/mucang/android/download/client/DownloadManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/client/DownloadManager;->g(Lcn/mucang/android/download/client/DownloadManager$Request;Lcn/mucang/android/download/client/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/client/DownloadManager$Request;

.field final synthetic b:Lcn/mucang/android/download/client/c;

.field final synthetic c:Lcn/mucang/android/download/client/DownloadManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/DownloadManager$Request;Lcn/mucang/android/download/client/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$a;->c:Lcn/mucang/android/download/client/DownloadManager;

    iput-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$a;->a:Lcn/mucang/android/download/client/DownloadManager$Request;

    iput-object p3, p0, Lcn/mucang/android/download/client/DownloadManager$a;->b:Lcn/mucang/android/download/client/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$a;->c:Lcn/mucang/android/download/client/DownloadManager;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$a;->a:Lcn/mucang/android/download/client/DownloadManager$Request;

    invoke-static {v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->a(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/DownloadManager$Request;)Lcn/mucang/android/download/DownloadEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$a;->c:Lcn/mucang/android/download/client/DownloadManager;

    iget-object v2, p0, Lcn/mucang/android/download/client/DownloadManager$a;->b:Lcn/mucang/android/download/client/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/download/client/DownloadManager;->u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/download/DownloadEntity;->isNotification()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/download/notification/a;->j()Lcn/mucang/android/download/notification/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/download/notification/a;->f(Lcn/mucang/android/download/DownloadEntity;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$a;->c:Lcn/mucang/android/download/client/DownloadManager;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$a;->b:Lcn/mucang/android/download/client/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/download/client/DownloadManager;->u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
