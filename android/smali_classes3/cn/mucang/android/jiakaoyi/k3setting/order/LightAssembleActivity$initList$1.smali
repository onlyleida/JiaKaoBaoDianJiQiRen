.class final Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
        "<anonymous parameter 1>",
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->h(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->m(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;->invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;I)V
    .locals 12

    const-string p2, "it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->g(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)Lcom/drakeet/multitype/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p1, "\u65e0\u6cd5\u5220\u9664\u6240\u6709\u706f\u5149\u7ec4\u5408"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;

    .line 6
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v5, 0x0

    .line 7
    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/order/y;

    invoke-direct {v7, v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/y;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;)V

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v2, "\u5220\u9664\u706f\u5149\u7ec4\u5408"

    const-string v3, "\u786e\u8ba4\u5220\u9664\u8be5\u706f\u5149\u7ec4\u5408\u5417\uff0c\u5220\u9664\u540e\u5c06\u4e0d\u53ef\u6062\u590d\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\u3002"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u5220\u9664"

    move-object v1, v11

    .line 8
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 9
    invoke-direct {p2, v0, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 10
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method
