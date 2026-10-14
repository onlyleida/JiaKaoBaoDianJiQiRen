.class Lcn/mucang/android/download/service/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/service/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field volatile a:Lcn/mucang/android/download/DownloadEntity;

.field volatile b:Lcn/mucang/android/download/service/f$d;

.field c:I


# direct methods
.method constructor <init>(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcn/mucang/android/download/service/f$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/download/service/f$c;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
