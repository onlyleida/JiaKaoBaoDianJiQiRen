.class Lcn/mucang/android/download/service/DownloadMonitorService$a;
.super Lcn/mucang/android/download/client/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/service/DownloadMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/mucang/android/download/service/DownloadMonitorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/download/client/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/download/client/a;->a(J)V

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/download/client/DownloadManager;->j(J)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadProgress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/download/client/a;->b(Ljava/util/List;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/client/DownloadManager;->k(Ljava/util/List;)V

    return-void
.end method

.method public d(Lcn/mucang/android/download/DownloadStatusChange;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/download/client/a;->d(Lcn/mucang/android/download/DownloadStatusChange;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/client/DownloadManager;->l(Lcn/mucang/android/download/DownloadStatusChange;)V

    return-void
.end method
