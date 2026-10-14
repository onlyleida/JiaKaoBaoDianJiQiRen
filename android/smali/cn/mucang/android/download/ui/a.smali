.class public Lcn/mucang/android/download/ui/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/ui/a$a;,
        Lcn/mucang/android/download/ui/a$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/download/ui/a;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/download/ui/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "\u5220\u9664"

    return-object p1

    :cond_1
    const-string p1, "\u6253\u5f00"

    return-object p1

    :cond_2
    const-string p1, "\u91cd\u542f"

    return-object p1

    :cond_3
    const-string p1, "\u6682\u505c"

    return-object p1

    :cond_4
    const-string p1, "\u8bf7\u7b49\u5f85..."

    return-object p1

    :cond_5
    const-string p1, "\u4e0b\u8f7d"

    return-object p1
.end method

.method b(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x400

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%dB"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xa

    shr-long/2addr p1, v2

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%dK"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x14

    shr-long/2addr p1, v2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%dM"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x100

    cmp-long v4, p1, v2

    if-gez v4, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1e

    shr-long/2addr p1, v2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%dG"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "\u592a\u5927\u4e86\u5427.."

    return-object p1
.end method

.method c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "\u7cfb\u7edf\u8d44\u6e90\u4e0d\u8db3"

    return-object p1

    :cond_1
    const-string p1, "\u5185\u90e8\u9519\u8bef"

    return-object p1

    :cond_2
    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    return-object p1

    :cond_3
    const-string p1, "\u5b8c\u6210"

    return-object p1

    :cond_4
    const-string p1, "\u7528\u6237\u6682\u505c"

    return-object p1

    :cond_5
    const-string p1, "\u4e0b\u8f7d\u4e2d..."

    return-object p1

    :cond_6
    const-string p1, "\u7b49\u5f85\u7f51\u8def"

    return-object p1

    :cond_7
    const-string p1, "\u7b49\u5f85\u91cd\u8bd5"

    return-object p1

    :cond_8
    const-string p1, "\u7b49\u5f85\u961f\u5217"

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/download/ui/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 1
    iget-object p2, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    if-ne p1, p2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    if-ge p1, p2, :cond_1

    .line 3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcn/mucang/android/framework/download/R$layout;->dm__ongoing_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcn/mucang/android/download/ui/a$b;

    invoke-direct {p3}, Lcn/mucang/android/download/ui/a$b;-><init>()V

    .line 5
    sget v1, Lcn/mucang/android/framework/download/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$b;->a:Landroid/widget/TextView;

    .line 6
    sget v1, Lcn/mucang/android/framework/download/R$id;->progress:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$b;->b:Landroid/widget/ProgressBar;

    .line 7
    sget v1, Lcn/mucang/android/framework/download/R$id;->action:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$b;->c:Landroid/widget/Button;

    .line 8
    sget v1, Lcn/mucang/android/framework/download/R$id;->status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$b;->d:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcn/mucang/android/framework/download/R$layout;->dm__finished_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 11
    new-instance p3, Lcn/mucang/android/download/ui/a$a;

    invoke-direct {p3}, Lcn/mucang/android/download/ui/a$a;-><init>()V

    .line 12
    sget v1, Lcn/mucang/android/framework/download/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$a;->a:Landroid/widget/TextView;

    .line 13
    sget v1, Lcn/mucang/android/framework/download/R$id;->time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$a;->b:Landroid/widget/TextView;

    .line 14
    sget v1, Lcn/mucang/android/framework/download/R$id;->action:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$a;->d:Landroid/widget/Button;

    .line 15
    sget v1, Lcn/mucang/android/framework/download/R$id;->size:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcn/mucang/android/download/ui/a$a;->c:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcn/mucang/android/framework/download/R$layout;->dm__list_group_title:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    .line 18
    iget-object p3, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-ne p1, p3, :cond_4

    goto/16 :goto_3

    .line 19
    :cond_4
    iget-object p3, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-ge p1, p3, :cond_6

    .line 20
    iget-object p3, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/download/DownloadEntity;

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/ui/a$b;

    .line 22
    iget-object v2, v1, Lcn/mucang/android/download/ui/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v2, v1, Lcn/mucang/android/download/ui/a$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/mucang/android/download/ui/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v2, v1, Lcn/mucang/android/download/ui/a$b;->c:Landroid/widget/Button;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/mucang/android/download/ui/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 26
    :goto_2
    iget-object p3, v1, Lcn/mucang/android/download/ui/a$b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 27
    iget-object p3, v1, Lcn/mucang/android/download/ui/a$b;->c:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object p1, v1, Lcn/mucang/android/download/ui/a$b;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 29
    :cond_6
    iget-object p3, p0, Lcn/mucang/android/download/ui/a;->b:Ljava/util/List;

    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/download/DownloadEntity;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/ui/a$a;

    .line 31
    iget-object v1, v0, Lcn/mucang/android/download/ui/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, v0, Lcn/mucang/android/download/ui/a$a;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getFinishTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, v0, Lcn/mucang/android/download/ui/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcn/mucang/android/download/ui/a;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, v0, Lcn/mucang/android/download/ui/a$a;->d:Landroid/widget/Button;

    invoke-virtual {p3}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result p3

    invoke-virtual {p0, p3}, Lcn/mucang/android/download/ui/a;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p3, v0, Lcn/mucang/android/download/ui/a$a;->d:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-object p2

    .line 36
    :cond_7
    :goto_3
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    if-nez p1, :cond_8

    const-string p1, "\u6b63\u5728\u4e0b\u8f7d"

    goto :goto_4

    :cond_8
    const-string p1, "\u5df2\u4e0b\u8f7d"

    :goto_4
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/download/ui/a;->b:Ljava/util/List;

    add-int/lit8 v0, v0, -0x2

    iget-object v2, p0, Lcn/mucang/android/download/ui/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    .line 5
    :goto_0
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u6682\u505c"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->m(J)V

    goto :goto_1

    :cond_1
    const-string v1, "\u6253\u5f00"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    const-string v1, "apk"

    invoke-virtual {p1, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    iget-object v2, p0, Lcn/mucang/android/download/ui/a;->c:Landroid/content/Context;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v2, v1, p1, v3, v0}, Lcn/mucang/android/core/utils/m;->o(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/io/File;Z)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/download/ui/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string v1, "\u5220\u9664"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->r(J)V

    goto :goto_1

    :cond_3
    const-string v1, "\u91cd\u542f"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->t(J)V

    :cond_4
    :goto_1
    return-void
.end method
