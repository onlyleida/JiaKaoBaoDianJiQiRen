.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->u(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $model:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->$model:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->invoke$lambda-1(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->invoke$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 2

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->setVoice(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->v(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final invoke$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V
    .locals 1

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->setVoice(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)Lcom/drakeet/multitype/f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;ILkotlin/jvm/internal/o;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$editTeachModel$1;->$model:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;

    invoke-direct {v3, v2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V

    const-string p1, "\u6b63\u5728\u66f4\u65b0"

    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-virtual {v0, v3, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
