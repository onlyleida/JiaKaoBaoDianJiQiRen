.class Lcn/mucang/android/download/ui/DownloadListActivity$c;
.super Lcn/mucang/android/download/client/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/ui/DownloadListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcn/mucang/android/download/ui/DownloadListActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/ui/DownloadListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-direct {p0}, Lcn/mucang/android/download/client/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/download/client/a;->a(J)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {v0}, Lcn/mucang/android/download/ui/DownloadListActivity;->g(Lcn/mucang/android/download/ui/DownloadListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/DownloadEntity;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    const/16 p1, 0x20

    .line 4
    invoke-virtual {v1, p1}, Lcn/mucang/android/download/DownloadEntity;->setDownloadStatus(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {p1}, Lcn/mucang/android/download/ui/DownloadListActivity;->k(Lcn/mucang/android/download/ui/DownloadListActivity;)Lcn/mucang/android/download/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 8
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadProgress;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {v1}, Lcn/mucang/android/download/ui/DownloadListActivity;->g(Lcn/mucang/android/download/ui/DownloadListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/download/DownloadEntity;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v0, Lcn/mucang/android/download/DownloadProgress;->a:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 5
    iget-wide v0, v0, Lcn/mucang/android/download/DownloadProgress;->b:J

    invoke-virtual {v2, v0, v1}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {p1}, Lcn/mucang/android/download/ui/DownloadListActivity;->k(Lcn/mucang/android/download/ui/DownloadListActivity;)Lcn/mucang/android/download/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Lcn/mucang/android/download/DownloadStatusChange;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/download/client/a;->d(Lcn/mucang/android/download/DownloadStatusChange;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {v0}, Lcn/mucang/android/download/ui/DownloadListActivity;->g(Lcn/mucang/android/download/ui/DownloadListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/DownloadEntity;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcn/mucang/android/download/DownloadStatusChange;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iget p1, p1, Lcn/mucang/android/download/DownloadStatusChange;->c:I

    invoke-virtual {v1, p1}, Lcn/mucang/android/download/DownloadEntity;->setDownloadStatus(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity$c;->d:Lcn/mucang/android/download/ui/DownloadListActivity;

    invoke-static {p1}, Lcn/mucang/android/download/ui/DownloadListActivity;->k(Lcn/mucang/android/download/ui/DownloadListActivity;)Lcn/mucang/android/download/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
