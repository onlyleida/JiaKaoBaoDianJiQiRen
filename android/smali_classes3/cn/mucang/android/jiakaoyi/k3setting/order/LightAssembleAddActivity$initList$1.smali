.class final Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "model",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->h(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->m(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;->invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 13

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->g(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)Lcom/drakeet/multitype/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;

    .line 5
    new-instance v12, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v6, 0x0

    .line 6
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3setting/order/j0;

    invoke-direct {v8, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/j0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    const-string v3, "\u5220\u9664\u706f\u5149\u6307\u4ee4"

    const-string v4, "\u786e\u8ba4\u4ece\u8be5\u7ec4\u5408\u4e2d\u5220\u9664\u6b64\u706f\u5149\u6307\u4ee4\u5417\uff1f"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u5220\u9664"

    move-object v2, v12

    .line 7
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 8
    invoke-direct {v0, v1, v12}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "\u6700\u5c11\u4fdd\u7559\u4e00\u7ec4\u706f\u5149"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
