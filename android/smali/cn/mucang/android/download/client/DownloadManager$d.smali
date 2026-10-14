.class Lcn/mucang/android/download/client/DownloadManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/client/DownloadManager;->u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/client/c;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$d;->a:Lcn/mucang/android/download/client/c;

    iput-object p3, p0, Lcn/mucang/android/download/client/DownloadManager$d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$d;->a:Lcn/mucang/android/download/client/c;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcn/mucang/android/download/client/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
