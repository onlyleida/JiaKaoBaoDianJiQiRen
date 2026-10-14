.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    .line 4
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/g;->u(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/e0;

    invoke-direct {v3, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/e0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7
    :try_start_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/f0;

    invoke-direct {v3, p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/f0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4fee\u6539\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    :goto_1
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 11
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    throw p1
.end method

.method private synthetic f(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p3, "-"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x1

    if-lt p1, p4, :cond_2

    const/16 p4, 0x64

    if-le p1, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object p4, p4, v1

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {p3, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "\u4fee\u6539\u5931\u8d25: \u8fd9\u4e2a\u5e8f\u53f7\u5df2\u7ecf\u5b58\u5728"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object p3

    const/4 p4, 0x0

    const-string v0, "\u6b63\u5728\u4fee\u6539..."

    invoke-static {p3, p4, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p3

    .line 7
    new-instance p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;

    invoke-direct {p4, p0, p2, p1, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "\u5e8f\u53f7\u53ea\u80fd\u57281-100\u5185"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string p1, "\u5e8f\u53f7\u53ea\u80fd\u662f1-100\u7684\u6570\u5b57"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method public synthetic e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public synthetic g(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->f(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4
    new-instance v1, Landroidx/appcompat/app/c$a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4fee\u6539\u5e8f\u53f7"

    .line 5
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;

    invoke-direct {v2, p0, v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    const-string p1, "\u786e\u5b9a"

    .line 7
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
