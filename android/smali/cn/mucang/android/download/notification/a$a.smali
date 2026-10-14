.class Lcn/mucang/android/download/notification/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/download/client/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/notification/a;->m(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/download/client/c<",
        "Lcn/mucang/android/download/DownloadEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/download/DownloadProgress;

.field final synthetic b:Lcn/mucang/android/download/notification/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/notification/a;Lcn/mucang/android/download/DownloadProgress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/notification/a$a;->b:Lcn/mucang/android/download/notification/a;

    iput-object p2, p0, Lcn/mucang/android/download/notification/a$a;->a:Lcn/mucang/android/download/DownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {p0, p1}, Lcn/mucang/android/download/notification/a$a;->b(Lcn/mucang/android/download/DownloadEntity;)V

    return-void
.end method

.method public b(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/notification/a$a;->a:Lcn/mucang/android/download/DownloadProgress;

    iget-wide v0, v0, Lcn/mucang/android/download/DownloadProgress;->c:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/notification/a$a;->b:Lcn/mucang/android/download/notification/a;

    invoke-static {v0, p1}, Lcn/mucang/android/download/notification/a;->d(Lcn/mucang/android/download/notification/a;Lcn/mucang/android/download/DownloadEntity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/download/notification/a$a;->b:Lcn/mucang/android/download/notification/a;

    iget-object v0, p0, Lcn/mucang/android/download/notification/a$a;->a:Lcn/mucang/android/download/DownloadProgress;

    iget-wide v0, v0, Lcn/mucang/android/download/DownloadProgress;->a:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/notification/a;->e(J)V

    :goto_0
    return-void
.end method
