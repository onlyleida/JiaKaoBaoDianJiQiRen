.class Lcn/mucang/android/download/ui/DownloadListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/download/client/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/ui/DownloadListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/download/client/c<",
        "Ljava/util/List<",
        "Lcn/mucang/android/download/DownloadEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/ui/DownloadListActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/ui/DownloadListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$a;->a:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/mucang/android/download/ui/DownloadListActivity$a;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity$a;->a:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {v0, p1}, Lcn/mucang/android/download/ui/DownloadListActivity;->h(Lcn/mucang/android/download/ui/DownloadListActivity;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$a;->a:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {p1}, Lcn/mucang/android/download/ui/DownloadListActivity;->i(Lcn/mucang/android/download/ui/DownloadListActivity;)V

    return-void
.end method
