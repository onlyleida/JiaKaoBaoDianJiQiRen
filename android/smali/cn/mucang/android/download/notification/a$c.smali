.class Lcn/mucang/android/download/notification/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/download/client/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/notification/a;->b(J)V
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
.field final synthetic a:Lcn/mucang/android/download/notification/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/notification/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/notification/a$c;->a:Lcn/mucang/android/download/notification/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {p0, p1}, Lcn/mucang/android/download/notification/a$c;->b(Lcn/mucang/android/download/DownloadEntity;)V

    return-void
.end method

.method public b(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/download/notification/a$c;->a:Lcn/mucang/android/download/notification/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/notification/a;->f(Lcn/mucang/android/download/DownloadEntity;)V

    :cond_0
    return-void
.end method
