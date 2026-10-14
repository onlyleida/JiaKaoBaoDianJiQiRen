.class Lcn/mucang/android/download/client/DownloadManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/client/DownloadManager;->n(Lcn/mucang/android/download/client/DownloadManager$f;Lcn/mucang/android/download/client/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/client/c;

.field final synthetic b:Lcn/mucang/android/download/client/DownloadManager$f;

.field final synthetic c:Lcn/mucang/android/download/client/DownloadManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/c;Lcn/mucang/android/download/client/DownloadManager$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$b;->c:Lcn/mucang/android/download/client/DownloadManager;

    iput-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$b;->a:Lcn/mucang/android/download/client/c;

    iput-object p3, p0, Lcn/mucang/android/download/client/DownloadManager$b;->b:Lcn/mucang/android/download/client/DownloadManager$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$b;->c:Lcn/mucang/android/download/client/DownloadManager;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$b;->a:Lcn/mucang/android/download/client/c;

    iget-object v2, p0, Lcn/mucang/android/download/client/DownloadManager$b;->b:Lcn/mucang/android/download/client/DownloadManager$f;

    invoke-virtual {v0, v2}, Lcn/mucang/android/download/client/DownloadManager;->q(Lcn/mucang/android/download/client/DownloadManager$f;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/download/client/DownloadManager;->u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V

    return-void
.end method
