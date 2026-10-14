.class public final Lcn/mucang/jiakaoyi/uilib/s/i$a;
.super Lcn/mucang/android/download/client/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/s/i;->i(Ljava/lang/String;Ljava/io/File;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/utils/DownloadUtils$doDownload$1$1$1",
        "Lcn/mucang/android/download/client/DownloadConnection;",
        "onDownloadCompleted",
        "",
        "id",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic d:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/i$a;->d:Ljava/io/File;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/download/client/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/s/i;->a:Lcn/mucang/jiakaoyi/uilib/s/i;

    const/4 p2, 0x1

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/s/i;->b(Z)V

    .line 2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/s/i$a;->d:Ljava/io/File;

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/s/i;->a(Lcn/mucang/jiakaoyi/uilib/s/i;Ljava/io/File;)V

    return-void
.end method
