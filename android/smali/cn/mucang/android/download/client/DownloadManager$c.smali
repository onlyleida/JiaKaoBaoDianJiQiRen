.class Lcn/mucang/android/download/client/DownloadManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/client/DownloadManager;->o(JLcn/mucang/android/download/client/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/client/c;

.field final synthetic b:J

.field final synthetic c:Lcn/mucang/android/download/client/DownloadManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$c;->c:Lcn/mucang/android/download/client/DownloadManager;

    iput-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$c;->a:Lcn/mucang/android/download/client/c;

    iput-wide p3, p0, Lcn/mucang/android/download/client/DownloadManager$c;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$c;->c:Lcn/mucang/android/download/client/DownloadManager;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$c;->a:Lcn/mucang/android/download/client/c;

    iget-wide v2, p0, Lcn/mucang/android/download/client/DownloadManager$c;->b:J

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/download/client/DownloadManager;->p(J)Lcn/mucang/android/download/DownloadEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/download/client/DownloadManager;->u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V

    return-void
.end method
