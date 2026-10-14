.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002!\"B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0014J\u0008\u0010\u001e\u001a\u00020\u001bH\u0003J\u0008\u0010\u001f\u001a\u00020\u001bH\u0002J\u0012\u0010 \u001a\u00020\u001b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000b\u001a\u0004\u0008\u0012\u0010\tR\u001b\u0010\u0014\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u000fR\u001b\u0010\u0017\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "examSiteId",
        "",
        "getExamSiteId",
        "()Ljava/lang/String;",
        "examSiteId$delegate",
        "Lkotlin/Lazy;",
        "materialType",
        "",
        "getMaterialType",
        "()I",
        "materialType$delegate",
        "path",
        "getPath",
        "path$delegate",
        "step",
        "getStep",
        "step$delegate",
        "subStep",
        "getSubStep",
        "subStep$delegate",
        "confirm",
        "",
        "getStatName",
        "init",
        "initInfo",
        "loadData",
        "select",
        "Companion",
        "MaterialItemBinder",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;

.field private final d:Lkotlin/f;

.field private final e:Lkotlin/f;

.field private final f:Lkotlin/f;

.field private final g:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$materialType$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$materialType$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$step$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$step$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->c:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$subStep$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$subStep$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->d:Lkotlin/f;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$examSiteId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$examSiteId$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->e:Lkotlin/f;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$path$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$path$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->f:Lkotlin/f;

    .line 7
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    .line 9
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 10
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 11
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->g:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->o()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->B(Ljava/lang/String;)V

    return-void
.end method

.method private final B(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;->setSelect(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->B(Ljava/lang/String;)V

    return-void
.end method

.method private final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    if-eqz v2, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;->getSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string v0, "\u8bf7\u9009\u62e9\u7d20\u6750"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6
    check-cast v1, Ljava/io/Serializable;

    const-string v3, "key.result"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final l(Landroid/app/Activity;IIILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$a;->a(Landroid/app/Activity;IIILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->e:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->f:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->k()V

    return-void
.end method

.method private final t()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->typeTv:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u56fe\u7247"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->typeTv:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u89c6\u9891"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->p()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$c;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    :goto_1
    const-string v4, "\u5f00\u5230\u5012\u8f66\u70b9"

    if-eq v3, v1, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const-string v3, "\u5f00\u5230\u7ed3\u675f\u70b9"

    .line 7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, "\u505c\u8f66\u5230\u8f66\u5e93"

    const-string v5, "\u51fa\u5e93"

    .line 8
    filled-new-array {v4, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, "\u53f3\u5012\u5e93"

    const-string v5, "\u5de6\u51fa\u5e93"

    const-string v6, "\u5de6\u5012\u5e93"

    const-string v7, "\u53f3\u51fa\u5e93"

    .line 9
    filled-new-array {v4, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->descTv:Landroid/widget/TextView;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->q()I

    move-result v0

    sub-int/2addr v0, v1

    aget-object v0, v3, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->z(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Landroid/view/View;)V

    return-void
.end method

.method private final y()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    const-string v2, "\u6b63\u5728\u52a0\u8f7d"

    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/a;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->n()I

    move-result v1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->m()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->p()I

    move-result v3

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->q()I

    move-result v4

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/a;->m(ILjava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/j;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u7d20\u6750\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->p()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->q()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->backTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->confirmTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->t()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->y()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u53c2\u6570\u9519\u8bef"

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
