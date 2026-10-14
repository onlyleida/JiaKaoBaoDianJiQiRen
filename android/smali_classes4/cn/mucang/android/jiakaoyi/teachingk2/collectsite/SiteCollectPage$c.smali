.class Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;ILcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;I",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->a:Ljava/util/List;

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->b:I

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;-><init>(Ljava/util/List;ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\u5220\u9664\u8fd9\u4e2a\u7535\u5b50\u6805\u680f"

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "\u5220\u9664\u8fd9\u4e2a\u7279\u6b8a\u533a\u57df"

    goto :goto_0

    :cond_1
    const-string v1, "\u5220\u9664\u8fd9\u4e2a\u573a\u666f"

    goto :goto_0

    .line 4
    :goto_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v6, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/h;

    invoke-direct {v8, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    const/4 v9, 0x1

    const-string v4, "\u786e\u5b9a\u5220\u9664?"

    const-string v5, "\u4e0d\u5220\u9664"

    const-string v7, "\'\u5220\u9664"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v1, p1, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->c(Landroid/view/View;)V

    return-void
.end method

.method private synthetic f(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/i;

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    const-string p2, "\u6b63\u5728\u5220\u9664..."

    const-string v0, ""

    invoke-virtual {p3, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;-><init>()V

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->b:I

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/a;->m(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;I)Z

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private n(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/d;

    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->qrCode:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic g(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->f(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;Landroid/view/View;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->h(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method

.method public synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->j(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method

.method public l(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->images:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "(\u65e0\u56fe)"

    goto :goto_0

    :cond_1
    const-string v1, "(\u6709\u56fe)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->c:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->d:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->d:Landroid/view/View;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->b:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->d:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->c:Landroid/view/View;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/f;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->collect_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->l(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->m(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;

    move-result-object p1

    return-object p1
.end method
